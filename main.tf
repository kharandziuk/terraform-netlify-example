resource "netlify_site" "main" {
  name = "my-site"

  repo {
    command       = "middleman build"
    deploy_key_id = "${netlify_deploy_key.key.id}"
    dir           = "/build"
    provider      = "github"
    repo_path     = "username/repo"
    repo_branch   = "master"
  }
}
