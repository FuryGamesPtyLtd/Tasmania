using UnrealBuildTool;
using System;
using System.IO;

public class GoogleProtocolBuffers : ModuleRules
{
	public GoogleProtocolBuffers(ReadOnlyTargetRules Target)
		: base(Target)
	{
        Type = ModuleType.External;
        
        PublicDefinitions.Add("GOOGLE_PROTOBUF_NO_RTTI=1");
    	PublicSystemIncludePaths.Add(Path.Combine(ModuleDirectory, "include"));
        if (Target.Platform == UnrealTargetPlatform.Win64) {
            PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Win64", "libprotobuf.lib"));
        } else if (Target.Platform == UnrealTargetPlatform.Linux) {
            PublicAdditionalLibraries.Add(Path.Combine(ModuleDirectory, "lib", "Linux", "libprotobuf.a"));
	} else {
          throw new Exception("Not yet implemented " + Target.Platform.ToString());
        }
    }
}
