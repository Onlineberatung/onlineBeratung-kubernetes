Installation instruction here

- prerequisit, having up and running k8s cluster 
- local domain mapping in /etc/hosts `onlineberatung.localhost -> 127.0.0.1`
- registry secret in cluster `kubectl create secret docker-registry registry-secret --docker-server=ghcr.io --docker-username=[your-username] --docker-password=[your-gh-token] --docker-email=[your-email]`
- initialize cluster data `sh customization/setup_customization_configmaps.sh [target_namespace] [release_name]`
- helm install [release_name] ./ -n [target_namespace] --wait-for-jobs

As soon as all services are up and running go to http://onlineberatung.localhost/ and login as 
`consultant` with default password `Onbeonbe!12`