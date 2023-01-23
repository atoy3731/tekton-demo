#!/bin/bash

DEST_REGISTRY=$1
DEST_REGISTRY_USER=$2
DEST_REGISTRY_PASS=$3

SOURCE_REGISTRY=gcr.io/tekton-releases/github.com

docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/controller:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/resolvers:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/webhook:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/kubeconfigwriter:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/git-init:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/entrypoint:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/nop:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/sidecarlogresults:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/imagedigestexporter:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/pullrequest-init:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/pipeline/cmd/workingdirinit:v0.43.2
docker rmi -f ${DEST_REGISTRY}/tektoncd/triggers/cmd/controller:v0.22.1
docker rmi -f ${DEST_REGISTRY}/tektoncd/triggers/cmd/eventlistenersink:v0.22.1
docker rmi -f ${DEST_REGISTRY}/tektoncd/triggers/cmd/webhook:v0.22.1
docker rmi -f ${DEST_REGISTRY}/tektoncd/triggers/cmd/interceptors:v0.22.1

echo "Pulling Tekton images.."
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/controller:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/resolvers:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/webhook:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/kubeconfigwriter:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/git-init:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/entrypoint:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/nop:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/sidecarlogresults:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/imagedigestexporter:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/pullrequest-init:v0.43.2
# docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/workingdirinit:v0.43.2
docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/triggers/cmd/controller:v0.22.1
docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/triggers/cmd/eventlistenersink:v0.22.1
docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/triggers/cmd/webhook:v0.22.1
docker pull --platform linux/amd64 ${SOURCE_REGISTRY}/tektoncd/triggers/cmd/interceptors:v0.22.1

# Others
# docker pull --platform linux/amd64 gcr.io/google.com/cloudsdktool/cloud-sdk:302.0.0-slim
# docker pull --platform linux/amd64 mcr.microsoft.com/powershell:nanoserver@sha256:b6d5ff841b78bdf2dfed7550000fd4f3437385b8fa686ec0f010be24777654d6
# docker pull --platform linux/amd64 cgr.dev/chainguard/busybox@sha256:19f02276bf8dbdd62f069b922f10c65262cc34b710eea26ff928129a736be791

echo "Tagging images.."
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/controller:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/controller:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/resolvers:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/resolvers:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/webhook:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/webhook:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/kubeconfigwriter:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/kubeconfigwriter:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/git-init:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/git-init:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/entrypoint:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/entrypoint:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/nop:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/nop:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/sidecarlogresults:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/sidecarlogresults:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/imagedigestexporter:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/imagedigestexporter:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/pullrequest-init:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/pullrequest-init:v0.43.2
# docker tag ${SOURCE_REGISTRY}/tektoncd/pipeline/cmd/workingdirinit:v0.43.2 ${DEST_REGISTRY}/tektoncd/pipeline/cmd/workingdirinit:v0.43.2
docker tag ${SOURCE_REGISTRY}/tektoncd/triggers/cmd/controller:v0.22.1 ${DEST_REGISTRY}/tektoncd/triggers/cmd/controller:v0.22.1
docker tag ${SOURCE_REGISTRY}/tektoncd/triggers/cmd/eventlistenersink:v0.22.1 ${DEST_REGISTRY}/tektoncd/triggers/cmd/eventlistenersink:v0.22.1
docker tag ${SOURCE_REGISTRY}/tektoncd/triggers/cmd/webhook:v0.22.1 ${DEST_REGISTRY}/tektoncd/triggers/cmd/webhook:v0.22.1
docker tag ${SOURCE_REGISTRY}/tektoncd/triggers/cmd/interceptors:v0.22.1 ${DEST_REGISTRY}/tektoncd/triggers/cmd/interceptors:v0.22.1

# Others
# docker tag cgr.dev/chainguard/busybox@sha256:19f02276bf8dbdd62f069b922f10c65262cc34b710eea26ff928129a736be791 ${DEST_REGISTRY}/chainguard/busybox:1.0
# docker tag mcr.microsoft.com/powershell:nanoserver@sha256:b6d5ff841b78bdf2dfed7550000fd4f3437385b8fa686ec0f010be24777654d6 ${DEST_REGISTRY}/tools/powershell:nanoserver:1.0
# docker tag gcr.io/google.com/cloudsdktool/cloud-sdk:302.0.0-slim ${DEST_REGISTRY}/google/cloudsdktool/cloud-sdk:302.0.0-slim

echo "Pushing images.."
docker login ${DEST_REGISTRY} -u ${DEST_REGISTRY_USER} -p ${DEST_REGISTRY_PASS}
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/controller:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/resolvers:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/webhook:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/kubeconfigwriter:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/git-init:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/entrypoint:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/nop:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/sidecarlogresults:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/imagedigestexporter:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/pullrequest-init:v0.43.2
# docker push ${DEST_REGISTRY}/tektoncd/pipeline/cmd/workingdirinit:v0.43.2
docker push ${DEST_REGISTRY}/tektoncd/triggers/cmd/controller:v0.22.1
docker push ${DEST_REGISTRY}/tektoncd/triggers/cmd/eventlistenersink:v0.22.1
docker push ${DEST_REGISTRY}/tektoncd/triggers/cmd/webhook:v0.22.1
docker push ${DEST_REGISTRY}/tektoncd/triggers/cmd/interceptors:v0.22.1

# Others
# docker push ${DEST_REGISTRY}/chainguard/busybox:1.0
# docker push ${DEST_REGISTRY}/tools/powershell:nanoserver:1.0
# docker push ${DEST_REGISTRY}/google/cloudsdktool/cloud-sdk:302.0.0-slim