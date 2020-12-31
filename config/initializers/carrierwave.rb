# CarrierWaveの設定呼び出し
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

# 画像名に日本語が使えるようにする
CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/

# 保存先の分岐
CarrierWave.configure do |config|
  # 本番環境はS3に保存
  if Rails.env.production?
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'quiz-app-klingon'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/quiz-app-klingon'
    config.fog_public = false
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV["AWS_ACCESS_KEY_ID"],
      aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],
      region: 'ap-northeast-1' #東京リージョン
    }
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end
end