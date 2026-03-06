# Kubernetes Dashboard

![Kubernetes Dashboard](../images/k8s-dashboard.png)

The Kubernetes Dashboard provides a web-based user interface for Kubernetes cluster management. Minikube installs the Dashboard as an addon, but it is disabled by default. Prior to using the Dashboard we are required to enable the Dashboard addon, together with the metrics-server addon, a helper addon designed to collect usage metrics from the Kubernetes cluster. To access the dashboard from Minikube, we can use the minikube dashboard command, which opens a new tab in our web browser displaying the Kubernetes Dashboard, but only after we list, enable required addons, and verify their state:

- `minikube addons list`:

- `minikube addons enable metrics-server`:

- `minikube addons enable dashboard`:

- `minikube addons list`:

- `minikube dashboard`:

- `minikube dashboard --url`: