require "project_metric_pull_requests/version"
require 'project_metric_pull_requests/test_generator'
require 'octokit'
require 'json'
require 'open-uri'
require 'project_metric_base'

class ProjectMetricPullRequests
  include ProjectMetricBase
  add_credentials %I[github_project github_access_token]
  add_raw_data %w[github_events]

  def initialize(credentials = {}, raw_data = nil)
    @url = credentials[:github_project]
    @identifier = URI::parse(@url).path[1..-1]
    @token = credentials[:github_access_token]
    @client = Octokit::Client.new access_token: credentials[:github_access_token]
    @client.auto_paginate = true

    complete_with raw_data
  end

  def image
    { chartType: 'pull_requests',
      data: { new_pr: new_pull_requests,
              closed_pr: closed_pull_requests,
              pr_link: "https://github.com/#{@identifier}/pulls" } }
  end

  def score
    pull_requests.length
  end

  private

  def github_events
    # Events in the past two weeks
    @github_events = @client.repository_events(@identifier)
                         .select { |event| event[:created_at] > (Time.now - 14*24*60*60) }
                         .map(&:to_h)
  end

  def pull_requests
    @github_events.select { |event| event['type'].eql? 'PullRequestEvent'}
  end

  def new_pull_requests
    pull_requests.select { |event| event['payload']['action'].eql? 'opened' }
  end

  def closed_pull_requests
    pull_requests.select { |event| event['payload']['action'].eql? 'closed' }
  end
end
