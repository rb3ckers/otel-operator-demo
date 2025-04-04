#!/bin/bash

# Set namespace for the OpenTelemetry Operator
NAMESPACE="suse-observability"

# Add the OpenTelemetry Helm repository
echo "Adding OpenTelemetry Helm repository..."
helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts
helm repo update

# Install the OpenTelemetry Operator
echo "Installing OpenTelemetry Operator in namespace $NAMESPACE..."
helm upgrade --install opentelemetry-operator open-telemetry/opentelemetry-operator --namespace $NAMESPACE --create-namespace -f values.yaml

echo "OpenTelemetry Operator installation complete."