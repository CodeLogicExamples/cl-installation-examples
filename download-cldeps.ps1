# Define the list of URLs for the Debian packages
$packageUrls = @(
    'http://repo.codelogic.com/debian/all/codelogic_23.12.7_all.deb'
)

# Specify the directory where the packages will be downloaded
$downloadDir = "$PWD"

# Create the download directory if it doesn't exist
if (-Not (Test-Path -Path $downloadDir -PathType Container)) {
    New-Item -ItemType Directory -Path $downloadDir | Out-Null
}

# Download each package from the list of URLs
foreach ($url in $packageUrls) {
    $fileName = [System.IO.Path]::GetFileName($url)
    $outputPath = Join-Path -Path $downloadDir -ChildPath $fileName
    Write-Host "Downloading: $url"
    Invoke-WebRequest -Uri $url -OutFile $outputPath
}

Write-Host "All packages downloaded successfully."
