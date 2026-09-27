# DevOps Assignments – Tanushka Patil (PRN 123B1B036, BTech Div A)

| No. | Assignment | Folder | Report |
|-----|-----------|--------|--------|
| 2 | Cloud Computing Services – AWS EC2 | – | [PDF](Assignment2_Cloud_Computing_AWS.pdf) |
| 3 | Infrastructure as Code – Terraform | [Assignment3_Terraform](Assignment3_Terraform) | [PDF](Assignment3_Terraform.pdf) |
| 5 | Multi-Container App – Docker Compose | [Assignment5_MultiContainer](Assignment5_MultiContainer) | [PDF](Assignment5_MultiContainer.pdf) |

## Assignment 3 – Terraform
```bash
cd Assignment3_Terraform            # AWS EC2 configuration (set ssh_allowed_cidr in terraform.tfvars)
terraform init && terraform validate && terraform plan

cd local_docker_demo                # same workflow using the Docker provider
terraform init && terraform apply -auto-approve   # page at http://localhost:8080
terraform destroy -auto-approve
```

## Assignment 5 – Docker Compose
```bash
cd Assignment5_MultiContainer
docker compose up -d --build        # app at http://localhost:8000
docker compose down -v
```
