require "prjsync/version"
require 'jira-ruby'
require "json"

module Prjsync
  class Error < StandardError; end
  class Prjsync
    attr_reader :client, :option, :request_token
    def initialize
      open( "config/config.json", 'r' ) do |file|
        @option = JSON.load( file, nil, {symbolize_names: true, create_additions: false} )
      end
      pp option

      @client = JIRA::Client.new option
      pp client

      @request_token = client.request_token

      pp request_token
    end
  end
end
