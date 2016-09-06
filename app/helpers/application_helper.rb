module ApplicationHelper
  def aws_s3_for_all_subdomains(args)
    args[:server] = 's3'
    args[:aws_settings] = {  region:     ENV["AWS_REGION"],
      access_key: ENV["AWS_ACCESS_KEY_ID"],
    secret_key: ENV["AWS_SECRET_ACCESS_KEY"],
    bucket:     ENV["S3_BUCKET_NAME"],
    cloud_front: 'https://d1dtr73lu3mys4.cloudfront.net'}
  end
end
