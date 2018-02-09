require_relative './connection_adapter.rb'
require 'ostruct'
DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/playlister-test.db"),
  development: ConnectionAdapter.new("db/playlister-development.db"),
  production: ConnectionAdapter.new("db/playlister-production.db")
  )
