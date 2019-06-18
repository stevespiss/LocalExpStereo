#!/bin/bash

bin=build/LocalExpansionStereo
datasetroot="data/"
resultsroot="results/"

mkdir $resultsroot
$bin "-targetDir" $datasetroot"MiddV2/cones" "-outputDir" $resultsroot"cones" "-mode" "MiddV2" "-smooth_weight" 1 "-doDual" 1
$bin "-targetDir" $datasetroot"MiddV2/teddy" "-outputDir" $resultsroot"teddy" "-mode" "MiddV2" "-smooth_weight" 1
$bin "-targetDir" $datasetroot"MiddV3/trainingH/Adirondack" "-outputDir" $resultsroot"Adirondack" "-mode" "MiddV3" "-smooth_weight" 0.5

