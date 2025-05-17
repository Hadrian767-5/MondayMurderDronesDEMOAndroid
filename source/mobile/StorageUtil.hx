package mobile;

import lime.system.System as LimeSystem;
import haxe.io.Path;
import haxe.Exception;
#if sys
import sys.io.File;
import sys.FileSystem;
#end

using StringTools;

/**
 * A storage class for mobile.
 * @author Karim Akra and Lily Ross (mcagabe19)
 */
class StorageUtil
{
	#if sys
	// root directory, used for handling the saved storage type and path
	public static final rootDir:String = LimeSystem.applicationStorageDirectory;

	public static function getStorageDirectory(?force:Bool = false):String
	{
	}

	public static function saveContent(fileName:String, fileData:String, ?alert:Bool = true):Void
	{
		try
		{
			if (!FileSystem.exists('saves'))
			{
			}
			
			if (alert)
		    {
		    }
		}
		catch (e:Exception)
			if (alert)
		    {
		    }
	}

	#if android
	public static function requestPermissions():Void
	{
		if (AndroidVersion.SDK_INT >= AndroidVersionCode.TIRAMISU)
			{
			}

		if (!AndroidEnvironment.isExternalStorageManager())
		{
			if (AndroidVersion.SDK_INT >= AndroidVersionCode.S)
				{
				}
		}

		if ((AndroidVersion.SDK_INT >= AndroidVersionCode.TIRAMISU
			&& !AndroidPermissions.getGrantedPermissions().contains('android.permission.READ_MEDIA_IMAGES'))
			|| (AndroidVersion.SDK_INT < AndroidVersionCode.TIRAMISU
				&& !AndroidPermissions.getGrantedPermissions().contains('android.permission.READ_EXTERNAL_STORAGE')))
			{
			}

		try
		{
			if (!FileSystem.exists(StorageUtil.getStorageDirectory()))
    		{
    		}
		}
		catch (e:Dynamic)
		{
			{
			}
		}
	}

	public static function checkExternalPaths(?splitStorage = false):Array<String>
	{
		var process = new sys.io.Process('grep -o "/storage/....-...." /proc/mounts | paste -sd \',\'');
		var paths:String = process.stdout.readAll().toString();
		if (splitStorage)
			{
			}
	}

	public static function getExternalDirectory(externalDir:String):String
	{
	}
	#end
	#end
}

enum abstract StorageType(String) from String to String
{
}
