resource "netcupdns_record" "star_a" {
  domainname  = var.domain
  hostname    = "*"
  type        = "A"
  destination = var.server_ip
}

resource "netcupdns_record" "at_a" {
  domainname  = var.domain
  hostname    = "@"
  type        = "A"
  destination = var.server_ip
}

resource "netcupdns_record" "at_txt_spf" {
  domainname  = var.domain
  hostname    = "@"
  type        = "TXT"
  destination = "v=spf1 mx a include:_spf.webhosting.systems ~all"
}

resource "netcupdns_record" "at_mx_10" {
  domainname  = var.domain
  hostname    = "@"
  type        = "MX"
  priority    = "10"
  destination = "mail.${var.domain}"
}

resource "netcupdns_record" "at_mx_50" {
  domainname  = var.domain
  hostname    = "@"
  type        = "MX"
  priority    = "50"
  destination = var.mail_server
}

resource "netcupdns_record" "cname_domainkey1" {
  domainname  = var.domain
  hostname    = "key1._domainkey"
  type        = "CNAME"
  destination = "key1._domainkey.webhosting.systems"
}

resource "netcupdns_record" "cname_domainkey2" {
  domainname  = var.domain
  hostname    = "key2._domainkey"
  type        = "CNAME"
  destination = "key2._domainkey.webhosting.systems"
}

resource "netcupdns_record" "mail_a" {
  domainname  = var.domain
  hostname    = "mail"
  type        = "A"
  destination = var.webhosting_ip
}

resource "netcupdns_record" "dmarc_txt" {
  domainname  = var.domain
  hostname    = "_dmarc"
  type        = "TXT"
  destination = "v=DMARC1; p=none"
}

