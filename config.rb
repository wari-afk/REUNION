require 'cloudinary'

Cloudinary.config_from_url("cloudinary://276283538488715:8dCP2j7tlq0T5ERHULYAV01giug@dij4z66rp")
Cloudinary.config do |config|
  config.secure = true
end
