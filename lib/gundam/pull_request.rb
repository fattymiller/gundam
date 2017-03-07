# frozen_string_literal: true
require_relative './types'

class PullRequest
  extend Dry::Initializer::Mixin

  option :action, Types::Strict::String
  option :body,   Types::Strict::String, as: :description
  option :id,     Types::Coercible::Int
  option :title,  Types::Strict::String
  option :url,    Types::Strict::String
end
