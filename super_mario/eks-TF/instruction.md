1. Update system:
    sudo apt update -y

Check profile : cat ~/.aws/credentials

2. Add HashiCorp GPG key:
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

3. Add HashiCorp repository:
    sudo apt-add-repository "deb https://apt.releases.hashicorp.com $(lsb_release -cs) main"

4. Install Terraform:
    sudo apt install terraform -y

5. Verify Installation:
    terraform -v

6. Run These Commands:
    terraform init
    terraform plan
    terraform apply -auto-approve

7. After Cluster Is Ready:update cluster
    aws eks update-kubeconfig --region ap-south-1 --name super-mario-eks --profile eks

8. kubectl get nodes


9. VERY IMPORTANT (To Stop Billing)
    terraform destroy