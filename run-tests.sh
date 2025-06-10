#!/bin/bash

find . -type d -name TestResults -exec rm -rf {} \; > /dev/null 2>&1

dotnet build --configuration Release
dotnet test --configuration Release --no-build --no-restore --collect:"XPlat Code Coverage"

reportgenerator \
    -reports:tests/**/coverage.cobertura.xml \
    -targetdir:TestResults \
    -reporttypes:"Html;Badges;MarkdownSummaryGithub" \
    -assemblyfilters:-*Tests*
