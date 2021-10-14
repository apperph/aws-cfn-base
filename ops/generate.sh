#!/bin/bash
set -eauo pipefail
ops_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
solutions_dir="$( cd "$ops_dir/../solutions" &> /dev/null && pwd )"
current_dir=$( &> /dev/null && pwd )

case $1 in

  CrossAccountInfraPipeline)
    echo -en "\nGenerating CrossAccountInfraPipeline, please wait...\n"
    echo -e "----\n"
    cp -R "$solutions_dir/crossaccount-infra-pipeline" $current_dir
    echo -e "Done ✓"
    ;;

  CrossAccountAppPipeline)
    echo -en "\nGenerating CrossAccountAppPipeline, please wait...\n"
    echo -e "----\n"
    # cp -R "$solutions_dir/crossaccount-app-pipeline" $current_dir
    echo -e "⸫ Work in progress..."
    ;;

  SingleAccountInfraPipeline)
    echo -en "\nGenerating SingleAccountInfraPipeline, please wait...\n"
    echo -e "----\n"
    # cp -R "$solutions_dir/single-infra-pipeline" $current_dir
    echo -e "⸫ Work in progress..."
    ;;

  SingleAccountAppPipeline)
    echo -en "\nGenerating SingleAccountAppPipeline, please wait...\n"
    echo -e "----\n"
    # cp -R "$solutions_dir/single-app-pipeline" $current_dir
    echo -e "⸫ Work in progress..."
    ;;

  *)
    echo -n "[err]: unknown args;"
    ;;
esac