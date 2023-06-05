# resourceはblock名
# "local_file"はresource typeで、"local" はprovider "file"はresource
# "pet"はresource名、 区分けするために使う
# ｛｝の中はArguments, Argumentsはresource typeによって決まっている
resource "local_file" "pet" {
  filename = "/root/pets.txt"
  content = "We love pets!"
  file_permission = "0700"
}

# 四段階
# 1. tf fileを書く
# 2. terraform init - .tf　fileをチェックする, providerを把握してpluginをダウンロードする
# 3. terraform plan - 実行計画を検討、　resourceを作るためterraformが実行するactionを見せる、この段階ではまだ作らない
# 4. terraform apply　-　変更事項を適用、この段階で実際に実行する

# terraform show コマンドでresourceの情報が確認できる


# update
# file_permissionを追加して、terraform planを実行すると、既存のresourceを削除してまた作るという計画を見せる
# terraform apply をすると、Planのところで　１to add, 1 to destroyを確認できる

# destroy
# terraform destroy コマンドで 作ったresourceを削除する