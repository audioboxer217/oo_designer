namespace: scottTest
flow:
  name: AWS EC2 Test
  workflow:
    - describe_instances:
        do:
          io.cloudslang.amazon.aws.ec2.instances.describe_instances:
            - identity: AKIAJTU4PWC2IAUEXDSQ
            - credential:
                value: myyUpdg7MUw+l8qNVMKZTCmt+NLkn+hrQYp+yyPC
                sensitive: true
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      describe_instances:
        x: 307
        y: 147.1999969482422
        navigate:
          61dbdfa2-c532-930d-65c6-239c7b2472a7:
            targetId: 02f351e8-c2ed-4422-9401-0e26ee648d3d
            port: SUCCESS
    results:
      SUCCESS:
        02f351e8-c2ed-4422-9401-0e26ee648d3d:
          x: 505
          y: 143
