terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 6.0" }
  }
}

provider "aws" { region = var.region }

resource "aws_s3_bucket" "raw"     { bucket = "${var.prefix}-raw" }
resource "aws_s3_bucket" "curated" { bucket = "${var.prefix}-curated" }