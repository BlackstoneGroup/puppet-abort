# Abort

#### Table of Contents

1. [Overview](#overview)
2. [Usage](#usage)
3. [Development](#development)

## Overview

This resource acts like a fail() that is only invoked on a refresh. It's useful if a change to a refresh should be considered an error and fail out of the run. One example is if a change is made to the puppet agent configuration, you may not want to continue the run with the old settings. 

## Usage

```
some_resource { 'some_title':
  ensure => present,
}
~> abort { 'Arbitrary title, not used':
  message => 'This will output and end the run when refreshed'
}
```

During normal use, nothing happens and the resource makes no changes. If the resource is refreshed, it will execute a fail() with the supplied message

## Development

If you'd like to contribute, please fork the repo, create a feature branch, and submit a pull request