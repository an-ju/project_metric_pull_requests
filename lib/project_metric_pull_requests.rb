require "project_metric_pull_requests/version"
require 'octokit'
require 'json'
require 'open-uri'

class ProjectMetricPullRequests
  attr_accessor :raw_data

  def initialize(credentials = {}, raw_data = nil)
    @url = credentials[:github_project]
    @identifier = URI::parse(@url).path[1..-1]
    @token = credentials[:github_access_token]
    @client = Octokit::Client.new access_token: credentials[:github_access_token]
    @client.auto_paginate = true

    @raw_data = raw_data
  end

  def image
    @raw_data ||= pull_requests
    @image ||= { chartType: 'pull_requests',
                 titleText: 'Pull Request Status',
                 data: { total: @raw_data.length,
                         open: @raw_data.select { |pr| pr['state'].eql? 'open' }.length,
                         closed: @raw_data.select { |pr| pr['state'].eql? 'closed' }.length,
                         commented: @raw_data.select { |pr| num_comments(pr) > 0 }.length } }.to_json
  end

  def score
    @raw_data ||= pull_requests
    @score ||= @raw_data.length > 0 ? @raw_data.select { |pr| num_comments(pr) > 0 }.length.to_f / @raw_data.length.to_f : 0.0
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
    @client.pull_requests( @identifier, state: 'all').map do |pr|
      JSON.load(open(pr[:url], 'Authorization' => "token #{@token}"))
    end
  end

  def num_comments(pr)
    pr['comments'] + pr['review_comments']
  end
end
