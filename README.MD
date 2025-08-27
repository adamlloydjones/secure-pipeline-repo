# How I Built a Privacy-First DevOps Pipeline  
## From secrets to signals — Architecting secure, observable, and respectful automation
* Clouds Used: AWS (EC2, S3), Azure (App Services, Key Vault), GCP (Cloud Functions, Logging)
* IaC: Terraform modules with centralized secrets and explicit error handling
* CI/CD: GitHub Actions → Terraform → Multi-cloud deploy
* Observability: Structured logging, privacy-first dashboards (Netlify + Django)
* Tracking: Cookieless analytics using fingerprinting-resistant techniques
