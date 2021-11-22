Vultr billing Alert

![Workflow Status](https://github.com/dylanninin/vultr-billing-alert/actions/workflows/billing-alert.yml/badge.svg)
![Workflow Status](https://github.com/dylanninin/vultr-billing-alert/actions/workflows/docker.yml/badge.svg)

Github Secrets

- `VULTR_API_ACCOUNT`: vultr api account
- `VULTR_API_KEY`: vultr api key
- `SLACK_WEBHOOK_URL`: slack webhook url, where alert will send to


Usage:

```yaml
    steps:
    - name: Billing Alert
      uses: dylanninin/vultr-billing-alert@master
      id: billing
      with:
        vultr_api_account: ${{ secrets.VULTR_API_ACCOUNT }}
        vultr_api_key: ${{ secrets.VULTR_API_KEY }}
        slack_webhook: ${{ secrets.SLACK_WEBHOOK }}

    - name: Echo output
      run: |
        echo "traffic ${{ steps.billing.outputs.vultr_traffic }}"
        echo "charge ${{ steps.billing.outputs.vultr_charge}}"

```


Reference

- [Creating a personal access token - GitHub Docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
- [Encrypted secrets - GitHub Docs](https://docs.github.com/en/actions/security-guides/encrypted-secrets)
- [Ngine_Io.Vultr — Ansible Documentation](https://docs.ansible.com/ansible/latest/collections/ngine_io/vultr/index.html#plugins-in-ngine-io-vultr)
