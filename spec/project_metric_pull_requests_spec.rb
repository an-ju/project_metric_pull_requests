require "spec_helper"

RSpec.describe ProjectMetricPullRequests do
  context 'meta data' do
     it "has a version number" do
      expect(ProjectMetricPullRequests::VERSION).not_to be nil
    end
  end

  context 'image and score' do
    subject(:metric) do
      raw_data = File.read 'spec/data/raw_data_github_events.json'
      credentials = { github_project: 'https://github.com/an-ju/projectscope',
                      github_token: 'test token' }
      described_class.new credentials, raw_data
    end

    it 'should correctly parse the raw data' do
      expect(metric.instance_variable_get(:@events)).not_to be_nil
      expect(metric.instance_variable_get(:@events).first).to have_key(:type)
    end

    it 'should set score correctly' do
      expect(metric.score).not_to be_nil
    end

    it 'should set image correctly' do
      expect(JSON.parse(metric.image)).to have_key('data')
    end

    it 'should set image contents correctly' do
      image = JSON.parse(metric.image)
      expect(image['data']['new_pr']).not_to be_nil
      expect(image['data']['closed_pr']).not_to be_nil
    end
  end


  context 'fake data' do
    it 'should generate fake data' do
      expect(described_class.fake_data.length).to eql(3)
    end

    it 'should contain the right metric' do
      expect(described_class.fake_data.first).to have_key(:image)
      expect(described_class.fake_data.first).to have_key(:score)
    end

    it 'should contain the right image' do
      image = JSON.parse(described_class.fake_data.first[:image])
      expect(image['data']['new_pr']).not_to be_nil
      expect(image['data']['closed_pr']).not_to be_nil
      expect(image['data']['pr_link']).not_to be_nil
    end
  end
end
