#!/bin/bash

if [[ -z "${DD_CRI_SOCKET_PATH}" ]]; then
    exit 0
fi

# Set a default config for the CRI check
# Don't override it if it exists
if [[ ! -e /etc/datadog-agent/conf.d/cri.d/conf.yaml.default ]]; then
    mv /etc/datadog-agent/conf.d/cri.d/conf.yaml.example \
    /etc/datadog-agent/conf.d/cri.d/conf.yaml.default
fi
