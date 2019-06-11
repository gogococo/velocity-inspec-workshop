## Side Notes
* its($resource_status) { should $command }
  * () desribing a value of the resource
  * {}  Assertion
* Way to list resource properties available?
  * Docs should show
* Single quotes allow interpolation into string
* Double quotes do not
  * %Q

## Available Matchers
* be - numerical comparisons
* be_in - list membership
* eq - strict equality
* cmp - "smart" comparison
* include - another kind of list membership
* match - regexp match
* be_property? - resource-specific matcher (be_$something) 
