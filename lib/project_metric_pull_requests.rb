require "project_metric_pull_requests/version"
require 'project_metric_pull_requests/test_generator'
require 'octokit'
require 'json'
require 'open-uri'

class ProjectMetricPullRequests

  def initialize(credentials = {}, raw_data = nil)
    @url = credentials[:github_project]
    @identifier = URI::parse(@url).path[1..-1]
    @token = credentials[:github_access_token]
    @client = Octokit::Client.new access_token: credentials[:github_access_token]
    @client.auto_paginate = true

    unless raw_data.nil?
      @raw_data = raw_data
      @events = JSON.parse(raw_data, symbolize_names: true)[:events]
    end
  end

  def image
    refresh unless @raw_data
    { chartType: 'pull_requests',
      data: { new_pr: new_pull_requests,
              closed_pr: closed_pull_requests,
              pr_link: "https://github.com/#{@identifier}/pulls" } }.to_json
  end

  def score
    refresh unless @raw_data
    pull_requests.length
  end

  def refresh
    set_events
    @raw_data = { events: @events.map(&:to_h) }.to_json
  end

  def raw_data=(new_data)
    @raw_data = new_data
    @events = JSON.parse(new_data, symbolize_names: true)[:events]
  end

  def self.credentials
    %I[github_project github_access_token]
  end

  private

  def set_events
    # Events in the past three days
    @events = @client.repository_events(@identifier)
                  .select { |event| event[:created_at] > (Time.now - 3*24*60*60) }
  end

  def pull_requests
    @events.select { |event| event[:type].eql? 'PullRequestEvent'}
  end

  def new_pull_requests
    pull_requests.select { |event| event[:payload][:action].eql? 'opened' }
  end

  def closed_pull_requests
    pull_requests.select { |event| event[:payload][:action].eql? 'closed' }
  end
end
