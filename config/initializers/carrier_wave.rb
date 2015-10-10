if Rails.env.production?
  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => ENV['AKIAIJQFDK4OUQUS5A5A'],
        :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end

