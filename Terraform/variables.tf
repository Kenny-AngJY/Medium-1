variable "Principal_Service" {
  type    = list(any)
  default = ["scheduler", "lambda"]
}

variable "LambdaFunctionName" {
  type = string
  default = "Dormant_S3_Buckets-LambdaFunction"
}

variable "Email" {
  type = string
}

variable "S3PathAthenaQuery" {
  type = string
  default = "s3://athena-query-information/s3-access-logs-last-accessed-queries/"
}

variable "Limit" {
  type = number
  default = 10
}

variable "Query" {
  type = string
  default = "SELECT bucket_name, MAX(parse_datetime(requestdatetime,'dd/MMM/yyyy:HH:mm:ss Z')) AS last_accessed_date FROM s3_access_logs_db.mybucket_logs WHERE NOT key='-' GROUP BY bucket_name;"
}
