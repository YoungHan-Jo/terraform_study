# typeのDefaultValueは　anyで
# string / number / bool と
# list / map / set / object / tupleも使える
# listとsetの違いは、listは重複を許すが、setは重複を許さない

variable "filename" {
  default = "/root/pets.txt"
  type = string
  description = "the path of local file"
}
variable "content" {
  default = "We love pets!"
  type = string
  description = "the content of the file"
}
variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = list(string)
}
variable "separator" {
  default = "."
}
variable "length" {
  default = "1"
  type = number
  description = "the length of the pet name"
}

variable "password_change" {
  default = true
  type = bool
}

variable file-content {
  type = map
  default = {
    "statement1" = "We love pets!"
    "statement2" = "We love animals!"
  }
}

variable "cats" {
  default = {
    "color" = "brown"
    "name" = "bella"
  }
  type = map(string)
}

variable "pet_count" {
  default = {
    "dogs" = 2
    "cats" = 1
    "goldfish" = 2
  }
  type = map(number)
}

variable "bella" {
  type = object({
    name = string
    color = string
    age = number
    food = list(string)
    favorite_pet = bool
  })

  default = {
    name = "bella"
    color = "brown"
    age = 7
    food = ["fish", "milk", "chicken"]
    favorite_pet = true
  }
}

variable kitty {
  type = tuple([ string,number,bool ])
  default = ["kitty", 3, true]
}

