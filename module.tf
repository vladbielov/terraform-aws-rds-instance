module "db" {
    source = "./resources"
    region = "us-east-2"
    subnet_ids = [
    "subnet-0549b4f9d2258a17b", 
    "subnet-0a52205626a3b9eaf", 
    "subnet-063833847716f829d"
    ]
    security_group_name = "db"
    allowed_hosts = [
    "0.0.0.0/0"
    ]
    db_name = "dbname"
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t2.micro"
    username = "foo"
    password = "foobarbaz"
    publicly_accessible = true
}