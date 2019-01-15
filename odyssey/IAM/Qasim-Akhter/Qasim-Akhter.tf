provider "aws" {
  region = "us-east-1"
}



resource "aws_iam_access_key" "Qasim-Akhter-demo" {
  user    = "${aws_iam_user.Qasim-Akhter-demo.name}"

#  pgp_key = "keybase:wating for the account"
}

resource "aws_iam_user" "Qasim-Akhter-demo" {
  name = "Qasim-Akhter-demo"
  path = "/system/"
}

resource "aws_iam_user_policy" "Qasim-Akhter-demo-rw" {
  name = "test"
  user = "${aws_iam_user.Qasim-Akhter-demo.name}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": ["s3:ListBucket"],
            "Resource": ["arn:aws:s3:::ican-demo-bucket-oregon"]
        },
        {
            "Effect": "Allow",
            "Action": [
                "s3:PutObject",
                "s3:GetObject"
            ],
            "Resource": ["arn:aws:s3:::ican-demo-bucket-oregon/*"]
        }
    ]
}
EOF
}

output "acces-key" {
  value = "${aws_iam_access_key.Qasim-Akhter-demo.id}"
}


# Wating for keybase.io a/c for encryption
#output "secret" {
#  value = "${aws_iam_access_key.Qasim-Akhter-demo.encrypted_secret}"
#}
