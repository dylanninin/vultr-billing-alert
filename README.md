Vultr billing Alert

Github Secrets

- `VULTR_API_ACCOUNT`: vultr api account
- `VULTR_API_KEY`: vultr api key
- `SLACK_WEBHOOK_URL`: slack webhook url, where alert will send to


Usage:

```yaml
    steps:
    - name: Billing Alert
      uses: dylanninin/vultr-billing-alert
      id: vultr-billing-alert
      with:
        vultr_api_account: ${{ secrets.VULTR_API_ACCOUNT }}
        vultr_api_key: ${{ secrets.VULTR_API_KEY }}
        slack_webhook_url: ${{ secrets.SLACK_WEBHOOK_URL }}

```


Reference

- [Creating a personal access token - GitHub Docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
- [Encrypted secrets - GitHub Docs](https://docs.github.com/en/actions/security-guides/encrypted-secrets)
- [Ngine_Io.Vultr — Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ngine_io/vultr/index.html#plugins-in-ngine-io-vultr)
