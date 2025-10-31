resource "aws_ecr_repository" "test_repo" {
  name = "test-app-repo"
}

# Get ECR auth token
data "aws_ecr_authorization_token" "token" {}

# Login Docker to ECR
resource "docker_registry" "ecr_login" {
  address  = aws_ecr_repository.test_repo.repository_url
  username = data.aws_ecr_authorization_token.token.user_name
  password = data.aws_ecr_authorization_token.token.password
}

# Pull Docker Hub image and push to ECR
resource "docker_image" "nginx_to_ecr" {
  name         = "${aws_ecr_repository.test_repo.repository_url}:latest"
  keep_locally = false
  force_remove = true

  # Pull from Docker Hub
  pull_triggers = ["nginx:latest"]

  # Push to ECR using the login
  registry_auth {
    address  = docker_registry.ecr_login.address
    username = docker_registry.ecr_login.username
    password = docker_registry.ecr_login.password
  }
}