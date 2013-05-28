class Tweet < ActiveRecord::Base
Twitter.configure do |config|
  config.consumer_key = 49qJyhmQpEtgtlYiAToA
  config.consumer_secret = IidF8gpiJP0W7Vennb68oy3RvVBeNWHSgdzNPsHWk
  config.oauth_token = 51323073-SftK3FzFCoU8hpCGvBZSZ1tFfBXuYT8sGdxnfJD28
  config.oauth_token_secret = u7dRa46KmV74V3i7Y5p4hz0CjrypVaGlKpVCr5xq31g
end
def read_message
    return "No hay usuario" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
end
