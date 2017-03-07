# frozen_string_literal: true

class PullRequest
  class Factory
    def call(payload)
      pull_request_params = {
        action: payload[:action],
        url: payload.dig(:pull_request, :url),
        id: payload.dig(:pull_request, :id),
        title: payload.dig(:pull_request, :title),
        body: payload.dig(:pull_request, :body)
      }

      PullRequest.new(pull_request_params)
    end
  end
end
