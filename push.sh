#!/bin/bash

git add .
git commit -m "$1"
git push
oc start-build frontend-builder
