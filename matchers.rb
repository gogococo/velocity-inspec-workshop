OKAY_STATUSES  = [200, 301, 302]
ERROR_STATUSES = [404, 500]

GEMFILE_PATH = File.expand_path(File.dirname(__FILE__) + "/../Gemfile")
LICENSE_PATH = File.expand_path(File.dirname(__FILE__) + "/../LICENSE")

username = ENV['USER']
describe user(username) do
  it { should exist }

  its('group') { should include username }

  its('groups') { should include 'adm' }
  its('groups') { should include 'sudo' }
end

describe file(GEMFILE_PATH) do
  it { should exist }

  its('size') { should cmp > 35 }

  its('type') { should cmp "file" }
end

describe os_env('GOOGLE_CLOUD_PROJECT') do
  its('content') { should include 'inspec-velocity19-sjc' }
end

describe http("http://example.com") do
  its('body') { should include "Example Domain" }
  its('status') { should be_in OKAY_STATUSES }
end
