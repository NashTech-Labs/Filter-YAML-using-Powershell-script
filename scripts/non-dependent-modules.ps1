$YamlCompute = Get-Content -Path "<file-path>" -Force | ConvertFrom-Yaml

$count=0
$dependency_flag_global="false"
$resources_Type = $YamlCompute.resources.name

foreach ($number in $resources_Type)
{
    $name_of_resource = $YamlCompute.resources[$count].name
    $type_of_resource = $YamlCompute.resources[$count].properties.resourceType
    $depends_On_in_file = $YamlCompute.resources[$count].properties.dependsOn

    if($depends_On_in_file -eq $dependency_flag_global)
    {
        Write-Host "Name of Resource:"$name_of_resource
        Write-Host "Type of Resource:"$type_of_resource

    }
    $count++
}