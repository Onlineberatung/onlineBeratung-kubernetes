if [ -z "$1" ]; then echo "Please provide namespace as argument"; exit 1; else echo "Defined namespace: $1"; fi
if [ -z "$2" ]; then echo "Please provide helm release name"; exit 1; else echo "Defined release name: $2"; fi

# E-Mail templates customization
kubectl create namespace $1
kubectl delete configmap mailservice-templates-$2-configmap -n $1
kubectl create configmap mailservice-templates-$2-configmap --from-file=./mail-templates -n $1
kubectl delete configmap mailservice-templates-images-$2-configmap -n $1
kubectl create configmap mailservice-templates-images-$2-configmap --from-file=./mail-templates/images -n $1

# Keycloak theming customization
kubectl delete configmap keycloak-theme-templates-$2-configmap -n $1
kubectl create configmap keycloak-theme-templates-$2-configmap --from-file=./keycloak-resources/custom-theme/login -n $1

kubectl delete configmap keycloak-theme-templates-messages-$2-configmap -n $1
kubectl create configmap keycloak-theme-templates-messages-$2-configmap --from-file=./keycloak-resources/custom-theme/login/messages -n $1

kubectl delete configmap keycloak-theme-templates-styles-$2-configmap -n $1
kubectl create configmap keycloak-theme-templates-styles-$2-configmap --from-file=./keycloak-resources/custom-theme/login/resources/css -n $1

kubectl delete configmap keycloak-theme-templates-js-$2-configmap -n $1
kubectl create configmap keycloak-theme-templates-js-$2-configmap --from-file=./keycloak-resources/custom-theme/login/resources/js -n $1

kubectl delete configmap keycloak-theme-templates-fonts-$2-configmap -n $1
kubectl create configmap keycloak-theme-templates-fonts-$2-configmap --from-file=./keycloak-resources/custom-theme/login/resources/fonts/Nunito -n $1

kubectl delete configmap keycloak-theme-email-html-$2-configmap -n $1
kubectl create configmap keycloak-theme-email-html-$2-configmap --from-file=./keycloak-resources/custom-theme/email/html -n $1

kubectl delete configmap keycloak-theme-email-$2-configmap -n $1
kubectl create configmap keycloak-theme-email-$2-configmap --from-file=./keycloak-resources/custom-theme/email -n $1

kubectl delete configmap keycloak-theme-email-messages-$2-configmap -n $1
kubectl create configmap keycloak-theme-email-messages-$2-configmap --from-file=./keycloak-resources/custom-theme/email/messages -n $1

kubectl delete configmap keycloak-theme-email-text-$2-configmap -n $1
kubectl create configmap keycloak-theme-email-text-$2-configmap --from-file=./keycloak-resources/custom-theme/email/text -n $1

# Jitsi theming customization
kubectl create namespace jitsi

kubectl delete configmap jitsi-web-css-$2-configmap -n jitsi
kubectl create configmap jitsi-web-css-$2-configmap --from-file=./jitsi-resources/beratungCustom/css -n jitsi

kubectl delete configmap jitsi-web-images-$2-configmap -n jitsi
kubectl create configmap jitsi-web-images-$2-configmap --from-file=./jitsi-resources/beratungCustom/images/custom -n jitsi

kubectl delete configmap web-custom-static-$2-configmap -n jitsi
kubectl create configmap web-custom-static-$2-configmap --from-file=./jitsi-resources/beratungCustom/static -n jitsi

kubectl delete configmap web-custom-html-$2-configmap -n jitsi
kubectl create configmap web-custom-html-$2-configmap --from-file=./jitsi-resources/beratungCustom/html -n jitsi

kubectl delete configmap prosody-custom-plugins-$2-configmap -n jitsi
kubectl create configmap prosody-custom-plugins-$2-configmap --from-file=./jitsi-resources/prosody/customplugins -n jitsi

kubectl delete configmap web-$2-configmap -n jitsi
kubectl create configmap web-$2-configmap --from-file=./jitsi-resources/web -n jitsi

# MongoDB database dump
kubectl delete configmap mongodb-dump-$2-configmap -n $1
kubectl create configmap mongodb-dump-$2-configmap --from-file=./mongodb-resources/dump.tar -n $1

# MariaDB database dump
kubectl delete configmap mariadb-dump-$2-configmap -n $1
kubectl create configmap mariadb-dump-$2-configmap --from-file=./mariadb-resources/mariadb.dump.sql.gz -n $1