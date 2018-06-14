#!/bin/bash

lcov --directory src --base-directory ../src/khiva --capture --output-file coverage.info
lcov --remove coverage.info 'Core*' '*/.conan/*' '*/usr*' '*/cl.hpp' '*/include*' -o coverage.info
lcov --list coverage.info
# Uploading report to CodeCov
bash <(curl -s https://codecov.io/bash)