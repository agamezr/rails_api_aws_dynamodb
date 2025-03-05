# frozen_string_literal: true

require 'aws-record'

class User
  include Aws::Record
  set_table_name ENV['DYNAMODB_TABLE_NAME']

  string_attr :uuid, hash_key: true
  string_attr :first_name
  string_attr :last_name
  string_attr :username
  string_attr :email

end
