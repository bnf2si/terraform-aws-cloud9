provider "aws" {
  region = "eu-west-1"
}

module "cloud9" {
  source = "../../"

  name = "cloud9_example"

  region = "eu-west-1"

  env_names = [
    "Hugo",
    "Peter",
  ]

  env_pubkeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6err+q3peqpiMgoo8RjmcovLbgGFQXF/A6az8kNmBvQkAbrfj8NZMgfN/8fDHuff6k/nZiMbNh4uK56POomH8SRfo8DwOg4oYlgd5dEgjRFEKVNPaSnITHKhD/6ud4HSfh/fHcwmXSy11R+m2w6DvTAORWCfnwYakatV/EWr//7Sk4qevGs3SzcXCCEbvb6eRCkciUHZm3yAW8LhYP4qYwVlG/p68K+QlhzAvD4fy7GXVr+0z0K5p0z5azwXJnyOFdNrSnf03vAcj+mF36GQqcEqBr3JSvOxni1IMT9qJpV7Urf1azKhI8FT/Q4XLdo29Igy1/ysRqAq9Lij/LFAEtVPZo6P+KvNJy5vWA+P5gfQ2BQdvBDW/WostppXnQA83S4MCK+9N3K9qtq6CWxf6vluDg5tPsSJasgtRjPiosU3+pu24KGzk7pEvrC2MKqTQCPwp6e/Qv/woEgQg6PC7QhG7+n13E0FxafqSdGQp1kJWe/dhacdaUDanaxEBt+PXXVbPFiKArs8M23JzQ+u2iaRDB/ObbFYC1Y/wdwojWSVMtWiz726cU79yM3oQrWkN1QRIPcZa5BiCyAlvrPoikgLLTGOD99TDnBJYIlgydAGiM3oE1py8PupOs/UN2KGejurHCRAc/QhLsyzg1jgnJbbUq1ofvFGQtpn0hSK27w== LocalAdministrator+319986662836@cloud9.amazon.com",
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6err+q3peqpiMgoo8RjmcovLbgGFQXF/A6az8kNmBvQkAbrfj8NZMgfN/8fDHuff6k/nZiMbNh4uK56POomH8SRfo8DwOg4oYlgd5dEgjRFEKVNPaSnITHKhD/6ud4HSfh/fHcwmXSy11R+m2w6DvTAORWCfnwYakatV/EWr//7Sk4qevGs3SzcXCCEbvb6eRCkciUHZm3yAW8LhYP4qYwVlG/p68K+QlhzAvD4fy7GXVr+0z0K5p0z5azwXJnyOFdNrSnf03vAcj+mF36GQqcEqBr3JSvOxni1IMT9qJpV7Urf1azKhI8FT/Q4XLdo29Igy1/ysRqAq9Lij/LFAEtVPZo6P+KvNJy5vWA+P5gfQ2BQdvBDW/WostppXnQA83S4MCK+9N3K9qtq6CWxf6vluDg5tPsSJasgtRjPiosU3+pu24KGzk7pEvrC2MKqTQCPwp6e/Qv/woEgQg6PC7QhG7+n13E0FxafqSdGQp1kJWe/dhacdaUDanaxEBt+PXXVbPFiKArs8M23JzQ+u2iaRDB/ObbFYC1Y/wdwojWSVMtWiz726cU79yM3oQrWkN1QRIPcZa5BiCyAlvrPoikgLLTGOD99TDnBJYIlgydAGiM3oE1py8PupOs/UN2KGejurHCRAc/QhLsyzg1jgnJbbUq1ofvFGQtpn0hSK27w== LocalAdministrator+319986662836@cloud9.amazon.com",
  ]
}
