#!/bin/bash
set -e

cacheDir="/root/.xbee/cache-artefacts/tukaani.org/xz"
artefactPath="${cacheDir}/xz-{{ .pack.version }}.tar.gz"
mkdir -p "${cacheDir}"
if [ ! -f "${artefactPath}" ]; then
	wget https://tukaani.org/xz/xz-{{ .pack.version }}.tar.gz -O "$artefactPath"
fi
#chown -R {{ .pack.xbeeUser }}:{{ .pack.xbeeGroup }}
tar xf "${artefactPath}" -C {{ .pack.xbeeSrc }}
