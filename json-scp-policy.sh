{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Statement1",
      "Effect": "Deny",
      "Action": [
        "ec2:RunInstances"
      ],
      "Resource": [
        "arn:aws:ec2:*:*:instance/*",
        "arn:aws:ec2:*:*:volume/*"
      ],
      "Condition": {
        "StringNotEquals": {
          "aws:RequestTag/CostCenter": [
            "111",
            "222",
            "333",
            "444"
          ]
        }
      }
    }
  ]
}
