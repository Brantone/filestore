# # encoding: utf-8

# Inspec test for recipe filestore::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe user('nginx') do
  it { should exist }
end

describe directory('/var/www/filestore') do
  it { should be_owned_by 'nginx' }
  its('mode') { should cmp '00755' }
end

describe directory('/tmp/filestore') do
  it { should be_owned_by 'nginx' }
  its('mode') { should cmp '00755' }
end

describe file('/etc/nginx/sites-available/filestore') do
  it { should be_owned_by 'root' }
  its('mode') { should cmp '00644' }
end

describe service('nginx') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end
