package com.uservoice.uservoicesdk;

import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/uservoice/uservoicesdk/f.class */
public final class f {
    public static String a(String str) {
        String str2;
        try {
            str2 = (String) Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class).invoke(null, str);
        } catch (Exception e) {
            str2 = null;
        }
        String str3 = str2;
        if (str2 == null) {
            str3 = BuildConfig.FLAVOR;
        }
        return str3;
    }
}
