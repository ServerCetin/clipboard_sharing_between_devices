$response = Invoke-WebRequest -URI https://ryxpgh.deta.dev/

Set-Clipboard -Value $response.content