resource "local_file" "pet" {
  filename = var.filename
  content = var.file-content["statement2"]
}

resource "random_pet" "my-pet" {
  prefix = var.prefix[0]
  separator = var.separator
  length = var.length
}

# hard codingは良くない
# variables.tfに変数を定義して、main.tfに変数を使う
# こうなると修正するときmain.tfは触る必要がない

