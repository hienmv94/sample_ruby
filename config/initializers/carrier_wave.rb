if Rails.env.production?
  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_credentials = {
        # Configuration for Amazon S3
        :provider              => 'AWS',
        :aws_access_key_id     => 'AKIAJPZMOCCPHOOZ3LKQ ',
        :aws_secret_access_key => 'VrNwAZ/bdxwoq9ElqG/dvIfTSI6NcbgQBsHBPmHp' 
    }
    config.fog_directory     =  'http://samplerubyhienmv.s3-website-ap-northeast-1.amazonaws.com'
  end
end

