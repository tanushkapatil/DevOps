# DevOps Assignments – Tanushka Patil (PRN 123B1B036, BTech Div A)

| No. | Assignment | Folder | Report |
|-----|-----------|--------|--------|
| 2 | Cloud Computing Services – AWS EC2 | – | [PDF](Assignment2_Cloud_Computing_AWS.pdf) |
| 3 | Infrastructure as Code – Terraform | [Assignment3_Terraform](Assignment3_Terraform) | [PDF](Assignment3_Terraform.pdf) |
| 4 | Create or Migrate an Application to Docker | [Assignment4_Docker](Assignment4_Docker) | [PDF](123B1B036_Assignment-4.pdf) |
| 5 | Multi-Container App – Docker Compose | [Assignment5_MultiContainer](Assignment5_MultiContainer) | [PDF](123B1B036_Assignment-5.pdf) |
| 6 | Jenkins Integration with GitHub | [Assignment6_Jenkins](Assignment6_Jenkins) | [PDF](123B1B036_Assignment-6.pdf) |
| 7 | Kubernetes Architecture and Helm | [Assignment7_K8s_Helm](Assignment7_K8s_Helm) | [PDF](123B1B036_Assignment-7.pdf) |
| 8 | Kubernetes Objects, Services and Ansible | [Assignment8_K8s_Ansible](Assignment8_K8s_Ansible) | [PDF](123B1B036_Assignment-8.pdf) |

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
