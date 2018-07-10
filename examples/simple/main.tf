provider "aws" {
  region = "eu-west-1"
}

module "cloud9" {
  source = "../../"

  name = "Cloud9_Playground"

  region = "eu-west-1"

  env_names = [
    "Frank_Playground",
  ]

  env_pubkeys = [
    "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDAfyJ+1IlyKzSM6TzmfZkGG6LENZFoYp9SIsEMgo46VQ4tM0+7VX+i9nbiyQQc2y+Ww0iBeBH+XaHv+gIl8YNg98uvKVAPbrG0PrpWJEZFptn2u1Ia4cbF0qc/fX+g9ORNAQ6zJcP+PbECrvnO7CueTdGS7/8U54HWozWzaScK1h8eqtX21h7fBdK6f0lygnpzmH6fgBaOx0h2fOkSCgyBAz5WPPKQ+fE91T1BWTa3QshIxBT/BJlIppL9Hb6QU01Dzf7Vb8UM82PxZweEvUK1PH11PqMMtW+YyVTaIU737qactm0GZBLal4WXVzdLb1a0Vc8D3h5s/84tq8b+djYgCwT4psNtNcJCUkdmTvyYPIvosMTn6JMy6SXNYYKsy4vFDc9Hi/HSEftLak0vj43tyLiLCim7cZxmJSfO3XNH6OjLas/FG4lLRos2Es7y6ayKizEQN7w3szWsWGm1MKzr+I2xuPhSYmnJ7zpa4gSWZEnm8XSZJCx9qtYBycd5Eg19uTuHcX5vgyoOnhMt2UvKzB+KUK87+CeD4mPIsr66icxupq4T5JyRV4zGrMNI9QqpUhH47kCmhCkVLytfvbeQSYdrWScU5v+Oc2NKhNNJInY2y6mTBk8UU1t97gBFLIqQQK+2anBCUDdN/+zBEK9TlMSuQIX5noR9ECRx0xsEfQ== LocalAdministrator+022727755164@cloud9.amazon.com",
  ]
}
