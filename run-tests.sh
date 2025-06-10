#!/bin/bash

find . -type d -name TestResults -exec rm -rf {} \; > /dev/null 2>&1

dotnet build --configuration Release
dotnet test --configuration Release --no-build --no-restore --collect:"XPlat Code Coverage;Format=opencover"

reportgenerator \
    -reports:tests/**/coverage.opencover.xml \
    -targetdir:TestResults \
    -reporttypes:"Html;Badges;MarkdownSummaryGithub" \
    -assemblyfilters:-*Tests*
