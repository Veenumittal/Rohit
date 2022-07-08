
resource "aws_s3_object" "create-multiple-s3-object" {
  bucket = var.s3_name
  acl = "private"
  for_each = toset(var.s3-object-list)
  key = "${each.value}/"
  content_type = "application/x-directory"
}

output "all_s3_object" {
  value = aws_s3_object.create-multiple-s3-object
}

resource "aws_s3_object" "s3-object-csr-inside-dir" {
  bucket = var.s3_name
  for_each = fileset(var.path_csr,"**")
  key    = "${var.s3-object-list[0]}/${each.key}"
  source = "${var.path}\\${each.key}"
  etag = filemd5("${var.path}\\${each.key}")
}

resource "aws_s3_object" "s3-object-srep-inside-dir" {
  bucket = var.s3_name
  for_each = fileset(var.path_srep,"**")
  key    = "${var.s3-object-list[1]}/${each.key}"
  source = "${var.path}\\${each.key}"
  etag = filemd5("${var.path}\\${each.key}")
}