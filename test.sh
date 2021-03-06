#!/bin/sh

. "$(pwd)/test/helper.sh"


# Test runner

    run_all_tests() {
      for test in $(ls $TESTS); do
        sh $TESTS/$test
        [ $? != 0 ] && {
          echo "Oops, test failed."
          exit 1
        }
      done

      echo 'Congrats! test passed.'
    }


run_all_tests
