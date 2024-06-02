variable "domain" {
  type        = string
  description = "e.g. example.com"
}

variable "server_ip" {
  type        = string
  description = "ip address of your server"
}

variable "mail_server" {
  type        = string
  description = "e.g. mx2e0f.netcup.net - can be different for you"
}

variable "webhosting_ip" {
  type        = string
  description = "the ip of your webhosting with which you're using email"
}
