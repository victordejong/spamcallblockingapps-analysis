package com.android.contacts.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AddHKQuickIndexUtils.class */
public class AddHKQuickIndexUtils {
    private static final int CONTACTS_DB_SUPPORT_VERSION = 2151;
    private static final String TAG = AddHKQuickIndexUtils.class.getSimpleName();

    public static boolean isSupportHKQuickIndex(Context context) {
        r9 = false;
        r10 = false;
        boolean z = false;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.android.providers.contacts", 0);
            if (packageInfo.versionCode >= CONTACTS_DB_SUPPORT_VERSION) {
                z = true;
            }
            z = z;
            z = z;
            Log.i(TAG, "Contacts db version = " + packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(TAG, "NameNotFoundException: " + e.toString());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return z;
    }
}
