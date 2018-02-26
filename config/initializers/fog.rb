CarrierWave.configure do |config|

  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     '',                        # required
    aws_secret_access_key: '',                       # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'stock-mulcam'                      # required
  # config.fog_public = false
  config.fog_attributes = {} # optional, defaults to {}
 end

 # cat ~/.profile 에 설정 값 넣기