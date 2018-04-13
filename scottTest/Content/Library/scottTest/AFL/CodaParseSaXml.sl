namespace: scottTest.AFL
flow:
  name: CodaParseSaXml
  inputs:
    - document
  workflow:
    - Parse_SA_XML_Content:
        do_external:
          93bdeb27-974c-4ec0-a240-7eb44253218d:
            - document: '${document}'
        publish: []
        navigate:
          - success: SUCCESS
          - failure: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      Parse_SA_XML_Content:
        x: 198
        y: 173
        navigate:
          8e07949a-b8bf-bda4-96cd-77eae670cf7b:
            targetId: 7e2f668a-3c99-2640-ff2c-93406c764da9
            port: success
    results:
      SUCCESS:
        7e2f668a-3c99-2640-ff2c-93406c764da9:
          x: 377
          y: 163
