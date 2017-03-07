# frozen_string_literal: true

require 'spec_helper'

RSpec.describe PullRequest::Factory do
  let(:payload) do
    # a striped down version of the payload. Only what we care for now
    {
      action: 'opened',
      number: 1,
      pull_request: {
        url: 'https://api.github.com/repos/cohortsolutions/cohortflow/pulls/1',
        id: 34_778_301,
        number: 1,
        title: 'Update the README with new information',
        body: 'This is a pretty simple change that we need to pull into master.'
      },
      repo: {
        id: 35_129_377,
        name: 'cohortflow',
        full_name: 'cohortsolutions/cohortflow'
      }
    }
  end

  describe '#call' do
    it 'builds a new PullRequest object from a Github webhook payload' do
      pull_request = described_class.new.call(payload)

      expect(pull_request.url).to eq('https://api.github.com/repos/cohortsolutions/cohortflow/pulls/1')
      expect(pull_request.id).to eq(34_778_301)
      expect(pull_request.title).to eq('Update the README with new information')
      expect(pull_request.description).to eq('This is a pretty simple change that we need to pull into master.')
    end
  end
end
