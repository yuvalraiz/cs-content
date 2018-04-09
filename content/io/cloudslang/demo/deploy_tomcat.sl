
namespace: content.io.cloudslang.demo

flow:
  name: deploy_tomcat

  inputs:
    - hostname: "10.0.46.10"
    - username : "Capa\\1286-capa1user"
    - password : "Automation123"
    - image : "Ubunto"
    - folder : "Students\\_raiz_"

  workflow:
    - uuid_generator:
        do:
          io.cloudslang.base.utils.uuid_generator : null
        publish:
          - uuid: "${new_uuid}"
        navigate:
          - SUCCESS: SUCCESS

  results:
    - SUCCESS
