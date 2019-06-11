describe os_env("CLOUD_SHELL") do
  its('content') { should cmp "true" }
end

describe command("inspec -v") do
  its("exit_status") { should eq 0 }
  its("stdout") { should cmp > "4.3" }
end

# Exercise
describe os.family do
  it { should eq 'debian' }
end

describe os.release do
   it { should eq '9.9' }
end

# Ben's
describe os.debian? do
  it { should be true }
end

describe os.family do
  it { should cmp "debian" }
end

describe os do
  its('family') { should cmp "debian" }
  its('release') { should cmp >= 9.9 }
end
