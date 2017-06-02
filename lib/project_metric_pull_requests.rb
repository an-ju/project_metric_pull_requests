require "project_metric_pull_requests/version"
require 'octokit'
require 'json'

class ProjectMetricPullRequests
  attr_accessor :raw_data

  def initialize(credentials = {}, raw_data = nil)
    @url = credentials[:github_project]
    @identifier = URI::parse(@url).path[1..-1]
    @client = Octokit::Client.new access_token: credentials[:github_access_token]
    @client.auto_paginate = true

    @raw_data = raw_data
  end

  def image
    @raw_data ||= pull_requests
    @image ||= { chartType: 'pull_requests',
                 titleText: 'Pull Request Status',
                 data: { total: @raw_data.length,
                         open: @raw_data.select { |pr| pr[:state].eql? 'open' }.length,
                         closed: @raw_data.select { |pr| pr[:state].eql? 'closed' }.length,
                         commented: @raw_data.reject { |pr| pr_comments(pr).empty? }.length } }.to_json
  end

  def score
    @raw_data ||= pull_requests
    @score ||= @raw_data.reject { |pr| pr_comments(pr).empty? }.length / @raw_data.length
  end

  def refresh
    @image = @score = nil
    @raw_data ||= pull_requests
  end

  def self.credentials
    %I[github_project github_access_token]
  end

  private

  def pull_requests
    @client.pull_requests @identifier, state: 'all'
  end

  def pr_comments(pr)
    @client.pull_request_comments @identifier, pr[:number]
  end
end
