package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.os.Build;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/r.class */
final class r {
    private static int a() {
        int i;
        try {
            i = Integer.parseInt(Build.VERSION.SDK);
        } catch (NumberFormatException e) {
            String valueOf = String.valueOf(Build.VERSION.SDK);
            an.a(valueOf.length() != 0 ? "Invalid version number: ".concat(valueOf) : new String("Invalid version number: "));
            i = 0;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(9)
    public static boolean a(String str) {
        boolean z = false;
        if (a() >= 9) {
            File file = new File(str);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
            z = true;
        }
        return z;
    }
}
