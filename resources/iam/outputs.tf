output "service_account_emails" {
  value = {
    for name, sa in google_service_account.accounts :
    name => sa.email
  }
}
