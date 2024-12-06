#!/bin/bash

export NAMESPACE=$(uuidgen) && yq e '(.. | select(has("plugins")) | .[] | select(.[] | .name == "rate-limiting-advanced"))[0].config.namespace = strenv(NAMESPACE)' kong.yaml > new-kong.yaml
