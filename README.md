# instance template -GCP-TF
"By employing Infrastructure as Code (IaC) through Terraform, you can seamlessly  instance template within your Google Cloud Platform (GCP) environment. This approach enables you to define and manage your infrastructure in a declarative and repeatable manner."

### run --- terraform init 
sravanichedurupaku@cloudshell:~/creating_VM (learning-project-414414)$ terraform init

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/google from the dependency lock file
- Using previously-installed hashicorp/google v5.16.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.

run -- terraform plan

sravanichedurupaku@cloudshell:~/creating_VM (learning-project-414414)$ terraform plan
data.google_compute_image.my_image: Reading...
data.google_compute_image.my_image: Read complete after 1s [id=projects/debian-cloud/global/images/debian-11-bullseye-v20240213]
  # google_compute_resource_policy.daily_backup will be created
  + resource "google_compute_resource_policy" "daily_backup" {
      + id        = (known after apply)
      + name      = "every-day-4am"
      + project   = "learning-project-414414"
      + region    = "us-central1"
      + self_link = (known after apply)

      + snapshot_schedule_policy {
          + schedule {
              + daily_schedule {
                  + days_in_cycle = 1
                  + start_time    = "04:00"
                }
            }
        }
    }

  # google_service_account.default will be created
  + resource "google_service_account" "default" {
      + account_id   = "service-account-id"
      + disabled     = false
      + display_name = "Service Account"
      + email        = (known after apply)
      + id           = (known after apply)
      + member       = (known after apply)
      + name         = (known after apply)
      + project      = "learning-project-414414"
      + unique_id    = (known after apply)
    }

Plan: 4 to add, 0 to change, 0 to destroy.

run --- terraform apply

Enter a value: yes

google_service_account.default: Creating...
google_compute_resource_policy.daily_backup: Creating...
google_compute_disk.foobar: Creating...
google_service_account.default: Creation complete after 3s [id=projects/learning-project-414414/serviceAccounts/service-account-id@learning-project-414414.iam.gserviceaccount.com]
google_compute_resource_policy.daily_backup: Creation complete after 5s [id=projects/learning-project-414414/regions/us-central1/resourcePolicies/every-day-4am]
google_compute_disk.foobar: Creation complete after 5s [id=projects/learning-project-414414/zones/us-central1-a/disks/existing-disk]
google_compute_instance_template.default: Creating...
google_compute_instance_template.default: Still creating... [10s elapsed]
google_compute_instance_template.default: Creation complete after 13s [id=projects/learning-project-414414/global/instanceTemplates/appserver-template]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.


####instance template got created in the project####

 



