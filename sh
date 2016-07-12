option parsing as done by sh is the most idiotic thing ever imagined
-c and -o take a parameter, and this parameter will be the next free argument

a few examples to clarify how stupid this is:
- sh -oecf vi 'echo hello'
  - this is perfectly valid
- sh -oovi vi vi
  - this sets -v and -i, and -o vi twice
- sh +oc vi :
  - several shells accept this, ignoring that +c is invalid
- bash -oeOfci vi extglob 'echo hello world'
  - bash add -O with the same semantics because it was such a great idea

no sane human would ever use this
i'm willing to bet that >90% of shell programmers don't even know how it works
