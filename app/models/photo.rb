require 'aws/s3'

class Photo < ActiveRecord::Base
  PHOTO_GROUPS = { all: 0, national_parks: 1, pacific_northwest: 2, panoramas: 3, black_and_white: 4, hawaii: 5, europe: 6 }

  has_attached_file :photo, storage: :s3, s3_credentials: S3_CREDENTIALS,
                    styles: {thumb: '50x50#', medium: '100x100#', large: '150x150#', xlarge: '200x200#'}

end
