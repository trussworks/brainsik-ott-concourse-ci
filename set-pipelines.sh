#!/bin/bash
#
#   Sets all pipelines in the pipelines directory.
#
set -ex
fly="fly -t demo"

cd pipelines; for pipeline in *.yml; do
    $fly set-pipeline -p ${pipeline/.yml/} -c $pipeline -l ../credentials.yml -n
done; cd ..
