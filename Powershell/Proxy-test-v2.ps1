#Proxy servers in format: https://<url>:<port>. Can be multiple Proxy servers used by comma separation

$proxy_servers = "http://zsproxy1.hiscox.com" , "http://zsproxy2.hiscox.com" , "http://zsproxy3.hiscox.com" , "http://zsproxy4.hiscox.com" , "http://dc1psg1.hiscox.com:8080" , "http://dc2psg1.hiscox.com:8080" , "http://tc1vpsgha1.hiscox.com:8080" , "http://tc1vpsgha2.hiscox.com:8080" ,"http://prod.proxy.hiscox.com:8080";

# URL's to be tested thru Proxy.

$urls = "https://www.microsoft.com" , "http://skybet.com" , "https://www.facebook.com";


# ComputerName of tested machine
Write-Host "Testing script on machine: " $env:COMPUTERNAME

    foreach ($proxy_serv in $proxy_servers) {

        foreach ($url in $urls) {
            Write-Host -NoNewLine "Testing proxy server: " $proxy_serv -ForegroundColor Yellow
            Write-Host -NoNewline " [*] URL test -" $url -ForeGroundColor White
            try {
                # First we create the request.
                $HTTP_Request = [System.Net.WebRequest]::Create("$url")

                # We then get a response from the site.
                $HTTP_Response = $HTTP_Request.GetResponse()

                # We then get the HTTP code as an integer.
                $HTTP_Status = [int]$HTTP_Response.StatusCode

                Write-Host -NoNewLine " [+] Opened $url successfully with Status code $HTTP_Status" -ForegroundColor Green

            } catch {
                Write-Host -NoNewLine  " [-] Unable to access $url" -ForegroundColor Red
                #Write-Host -NoNewLine ("The error was '{0}'." -f $_)
            } finally {
                if ($HTTP_Response) {
                    $HTTP_Response.Close()
                    Remove-Variable HTTP_Response
                }
            }
            Write-Host " [*]"
        }
    }
