# frozen_string_literal: true
require 'spec_helper'

RSpec.describe PullRequest do
  let(:params) do
    {
      action: 'create',
      body: 'My description',
      id: 1234,
      title: 'My Pull Request',
      url: 'https://github.com/my_org/my_repo/pulls/1'
    }
  end

  describe '.new' do
    it 'populates PullRequest instance with the right params' do
      pull_request = described_class.new(params)

      expect(pull_request.action).to eq('create')
      expect(pull_request.description).to eq('My description')
      expect(pull_request.id).to eq(1234)
      expect(pull_request.title).to eq('My Pull Request')
      expect(pull_request.url).to eq('https://github.com/my_org/my_repo/pulls/1')
    end
  end
end
