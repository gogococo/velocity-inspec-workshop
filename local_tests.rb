describe os_env("CLOUD_SHELL") do
  its('content') { should cmp "true" }
end

describe command("inspec -v") do
  its("exit_status") { should eq 0 }
  its("stdout") { should cmp > "4.3" }
end

