class Post < ApplicationRecord
# 　投稿する動画　　　存在
  validates :video, presence: true
#   関連付け　　　動画タイトル説明動画　インターネット上のファイル置き場
  mount_uploader :video, VideoUploader
end
