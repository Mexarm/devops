oc new-build --name java-binary --binary --strategy docker
oc start-build java-binary --from-dir=.
oc new-app --name java-test -i java-binary