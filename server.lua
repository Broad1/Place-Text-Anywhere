	local label = 
    [[

                     ^1Place Text Anywhere 
             Created By: Broad Development LLC
                       ^2Version 1.0.0

    ]]
    -- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
    PerformHttpRequest( "https://raw.githubusercontent.com/Broad1/Place-Text-Anywhere-FiveM/main/version?token=GHSAT0AAAAAACCUV4SCUU4JCYEQUZFDBZUIZDQEQNQ", function( err, text, headers )
        -- Wait to reduce spam
        Citizen.Wait( 2000 )
    
        -- Print the branding!
        print( label )
    
        -- Warn the console if the resource has been renamed, as this will cause issues with the resource's functionality.
        if ( GetCurrentResourceName() ~= "Place-Text-Anywhere" ) then
            print( "^1ERROR: Resource name is not Place-Text-Anywhere, expect there to be issues with the resource. To ensure there are no issues, please leave the resource name as Place-Text-Anywhere^0\n\n" )
        end
    end )
