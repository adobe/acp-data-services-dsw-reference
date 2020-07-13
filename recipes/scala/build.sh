#!/usr/bin/env bash
#####################################################################
# ADOBE CONFIDENTIAL
# ___________________
#
#  Copyright 2020 Adobe
#  All Rights Reserved.
#
# NOTICE:  All information contained herein is, and remains
# the property of Adobe and its suppliers, if any. The intellectual
# and technical concepts contained herein are proprietary to Adobe
# and its suppliers and are protected by all applicable intellectual
# property laws, including trade secret and copyright laws.
# Dissemination of this information or reproduction of this material
# is strictly forbidden unless prior written permission is obtained
# from Adobe.
#####################################################################
mvn clean install

echo "Please enter the version number for your recipe's docker image"
read version

echo "Enter Docker Host"
read host

docker build --pull -t $host/ml-retailsales-spark:$version .
docker push $host/ml-retailsales-spark:$version

echo "$host/ml-retailsales-spark:$version"