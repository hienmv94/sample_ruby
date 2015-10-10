if Rails.env.production?
  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['AKIAIJU6YU42YYOV6EWA'],
        :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end

