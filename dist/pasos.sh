# template de construccion
oc new-build --name spring-binary --binary --strategy docker

##################################################################
# compilacion (omitir)
mvn clean install
# mover compilacion hacia dir (omitir)
cp target/spring-api.jar dist/.
##################################################################

# comenzar la construccion de la imagen en ocp
cd dist
oc start-build spring-binary --from-dir=.
# crear un deployment de la imagen
oc new-app --name spring-test --image-stream="{project}/spring-binary:latest"


# exponer la ruta
oc expose svc/spring-test
# obtener la url
oc get routes