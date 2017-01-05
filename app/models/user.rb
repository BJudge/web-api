require 'data_mapper'
require 'dm-postgres-adapter'

class User

  include DataMapper::Resource

  property :id, Serial
  property :email, String, format: :email_address, required: true
  property :forename, String, required: true
  property :surname, String, required: true
  property :created, DateTime


  DataMapper.setup(:default, "postgres://localhost/web_api_test")
  DataMapper.finalize
  DataMapper.auto_upgrade!

end
