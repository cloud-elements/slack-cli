#!/usr/bin/env bats

load suite

@test 'channel settopic on public channel should succeed' {
  build/bin/slack channel settopic 'channel settopic on public channel should succeed' '#slack-cli'
}

@test 'channel settopic on private channel should succeed' {
  build/bin/slack channel settopic 'channel settopic on private channel should succeed' '#slack-cli-private'
}

@test 'channel settopic to invalid channel should fail' {
  run build/bin/slack channel settopic 'channel settopic on invalid channel should fail' '#invalid'
  [ ${status} -eq 1 ]
}

@test 'channel settopic via arguments should succeed' {
  build/bin/slack channel settopic 'channel settopic via arguments should succeed' '#slack-cli'
}

@test 'channel settopic via options should succeed' {
  build/bin/slack channel settopic --topic 'channel settopic via options should succeed' --channel '#slack-cli'
}
