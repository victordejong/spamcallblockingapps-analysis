package com.android.contacts.util;

import android.content.Context;
import android.os.storage.StorageManager;
import android.util.Log;
import com.asus.contacts.a;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusStorageUtils.class */
public class AsusStorageUtils {
    private static final String TAG = AsusStorageUtils.class.getSimpleName();

    private static boolean checkFsWritable(String str) {
        boolean z;
        try {
            File file = new File(str);
            if (file.isDirectory() || file.mkdirs()) {
                File file2 = new File(str, ".probe");
                if (file2.exists()) {
                    file2.delete();
                }
                z = false;
                if (file2.createNewFile()) {
                    file2.delete();
                    z = true;
                }
            } else {
                z = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    public static File getMicroSDCardDirectory() {
        return new File(a.a("ro.epad.mount_point.microsd", "/storage/MicroSD"));
    }

    private static boolean hasStorage(boolean z, String str, String str2) {
        boolean z2 = true;
        if ("mounted".equals(str)) {
            if (z) {
                z2 = checkFsWritable(str2);
            }
        } else if (z || !"mounted_ro".equals(str)) {
            z2 = false;
        }
        return z2;
    }

    public static boolean isMicroSDStorageExist(Context context) {
        String str;
        boolean hasStorage;
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        if (storageManager == null) {
            hasStorage = false;
        } else {
            String a2 = a.a("ro.epad.mount_point.microsd", "/storage/MicroSD");
            try {
                str = storageManager.getVolumeState(a2);
            } catch (Exception e) {
                Log.d(TAG, "StorageManager.getVolumeState(" + a2 + ") error!");
                str = "unmounted";
            }
            hasStorage = hasStorage(true, str, a2);
            Log.d(TAG, "check sd card storage existence = " + hasStorage);
        }
        return hasStorage;
    }
}
