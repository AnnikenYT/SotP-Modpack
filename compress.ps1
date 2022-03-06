$version=$args[0]
$location=Get-Location
$compress = @{
    Path = "$location/mods/", "$location/config", "$location/bin", "$location/*.md"
    CompressionLevel = "Fastest"
    DestinationPath = "$location/$version.zip"
}
Compress-Archive @compress