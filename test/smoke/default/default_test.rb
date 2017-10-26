# # encoding: utf-8

# Inspec test for recipe nv_chef_client::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe file('/etc/chef/client.rb') do
  its('content') { should match(%r{data_collector.token\s*?"93a49a4f2482c64126f7b6015e6b0f30284287ee4054ff8807fb63d9cbd1c506"})}
  its('content') { should match(%r{data_collector.server_url\s*?"https://nv-automate-workshop.chefdemo.net/data-collector/v0/"})}
  its('content') { should match(%r{ssl_verify_mode\s*?:verify_none})}
end

