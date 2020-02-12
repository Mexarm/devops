# template de construccion
oc new-build --name java-binary --binary --strategy docker
# compilacion (omitir)
mvn clean install
# mover compilacion hacia dir (omitir)
cp target/test-wsdl2java-0.0.1.jar dist/test-wsdl2java-0.0.1.jar

# comenzar la construccion de la imagen en ocp
cd dist
oc start-build java-binary --from-dir=.
# crear un deployment de la imagen
oc new-app --name java-test --image-stream="prueba-redhat/java-binary-1:latest"