terraform {
  backend "gcs" {
    bucket = "jxstate1"
    # arbitrary prefix/directory within the bucket
    prefix = "jx"
  }
}

module "jx" {
  source = "jenkins-x/jx/google"

  gcp_project = "jxbaby"
}
