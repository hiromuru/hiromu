CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['AKIAJ7WH4QXZJS372QQQ'],
    :aws_secret_access_key  => ENV['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'],
    :region                 => 'ap-northeast-1'
  }

  config.fog_directory = ENV['hiromuru']

end