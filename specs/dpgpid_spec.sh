#shellcheck shell=sh
set -eu

dpgpid() {
  ./dpgpid "$@"
}

Describe 'Dependency'
  Describe 'awk'
    It 'is available'
      When run which awk
      The output should include "/awk"
      The status should be success
      The stderr should equal ""
    End
  End
  Describe 'gpg'
    It 'is available'
      When run which gpg
      The output should include "/gpg"
      The status should be success
      The stderr should equal ""
    End
  End
  Describe 'ipfs'
    It 'is available'
      When run which ipfs
      The output should include "/ipfs"
      The status should be success
      The stderr should equal ""
    End
  End
End

Describe 'dpgpid'
  Describe '--help'
    It 'prints help'
      When run dpgpid --help
      The output should include 'Usage:'
      The status should be success
      The stderr should equal ""
    End
  End
  Describe '--version'
    It 'prints version'
      When run dpgpid --version
      The output should include 'v0.0.1'
      The status should be success
      The stderr should equal ""
    End
  End
End