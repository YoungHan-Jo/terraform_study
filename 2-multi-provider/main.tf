resource "local_file" "pet" {
  filename = "/root/pets.txt"
  content = "We love pets!"
}

# 後で追加したresource
resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}

# 一つのfileにproviderが異なる複数のresourceを書くことができる
# 後で他のresourceを書いてinitするともともとあるpluginは再使用される、新しいpluginだけインストール
# この場合は、local_fileのpluginは再使用される
# planとapplyをすると、local_fileのresourceは変更されなくて、random_petのresourceだけ作られる