require 'aws/s3'

class Photo < ActiveRecord::Base

  has_attached_file :photo, storage: :s3, s3_credentials: S3_CREDENTIALS,
                    styles: {:thumb => '50x50#'}

end
