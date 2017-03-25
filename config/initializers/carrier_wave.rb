if Rails.env.production?
    CarrierWave.configure do |config|
        config.fog_credentials = {
            # Configuration for Amazon S3
            :provider              => 'AWS',
            :aws_access_key_id     => ENV['AKIAID6WOQA5YQNQUFPQ'],
            :aws_secret_access_key => ENV['zGzrHTekhkRZPwFrXVCmfEsvNfeV5NlsCMrebzvA'],
            :region         => ENV['ap-southeast-1']
        }
        config.fog_directory     =  ENV['sampletirus']
    end
end
