require 'aws-sdk-dynamodb'

if Rails.env.development?
    Aws.config.update({
        region: ENV['AWS_REGION'],
        endpoint:ENV['DYNAMODB_ENDPOINT'],
        credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
    })
end

DYNAMODB_CLIENT = Aws::DynamoDB::Client.new
