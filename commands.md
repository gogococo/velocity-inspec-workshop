## Inspec workshop Commands Run
* gcloud auth login
* gcloud config set project inspec-velocity19-sjc-5232
* gcloud alpha cloud-shell ssh
* git clone https://github.com/bleything/inspec-workshop
* cd inspec-workshop/
* ./setup.sh
* inspec exec profiles/00-setup-local
* vi local_tests.rb
* inspec exec local_tests.rb
* vi exercises/matchers.rb
# Fill in the appropriate matchers, run until successful
* inspec exec exercises/matchers.rb
* vi local_tests.rb
# write a new test for OS verification and OS release 
* inspec exec local_tests.rb
