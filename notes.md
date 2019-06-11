## Side Notes
* its($resource_status) { should $command }
  * () describing a value of the resource
  * {}  Assertion
* Way to list resource properties available?
  * Docs should show
* Single quotes allow interpolation into string
* Double quotes do not
  * %Q
* Can negate by doing should_not vs should
  * any matcher can be a negater

## Available Matchers
* be - numerical comparisons
* be_in - list membership
* eq - strict equality
* cmp - "smart" comparison
  * Think 2 == '2' <- diff obj
  * Can do version comparisons
  * Case insensitive. If you need it, use eq
```
describe package("curl") do
  # actual version number is '7.5.1-5+deb9u9'
  # > <-- is what let's us do the str version comparison
  its('version') { should cmp > '7.52' }
end
```
* include - another kind of list membership
```
describe passwd do
  its('users') { should include 'root' }
end
```
* match - regexp match
```
describe sshd_config do
  its('Ciphers') {  should_not match /cbc/ }
end
```
* be_property? - resource-specific matcher (be_$something)
```
describe host('example.com') do
  it { should be_resolvable }
end
```
* exist
  * Doesn't take any args
  * useful sanity check
  * Can do something like
    * check file exists, has correct group/user permissions, file type etc
```
describe file("/etc/passwd") do
  it { should exist }
end
```
