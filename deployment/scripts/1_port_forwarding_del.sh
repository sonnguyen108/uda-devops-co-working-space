ps aux | grep 'kubectl port-forward' | grep -v grep | awk '{print $2}' | xargs -r kill
