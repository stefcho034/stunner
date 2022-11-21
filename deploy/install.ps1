$chart = Join-Path -Path $PSScriptRoot -ChildPath ".."

helm repo add stunner https://l7mp.io/stunner
helm repo update

helm dependencies build $chart
helm upgrade --install stunner --namespace default $chart -f $chart\values.yaml