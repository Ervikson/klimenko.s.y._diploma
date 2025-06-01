# Yandex Cloud credentials
variable "yc_token" {
  type    = string
  default = "Здесь должен быть Ваш токен"
}
variable "cloud_id" {
  type    = string
  default = "Ваш cloud-id"
}

variable "folder_id" {
  type    = string
  default = "Ваш folder-id"
}

variable "image_id" {
  type    = string
  default = "ID образа VM image-id"
}

