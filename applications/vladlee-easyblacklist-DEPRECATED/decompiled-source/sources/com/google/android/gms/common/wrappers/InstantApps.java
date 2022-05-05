package com.google.android.gms.common.wrappers;

import android.content.Context;
import com.google.android.gms.common.util.PlatformVersion;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/wrappers/InstantApps.class */
public class InstantApps {

    /* renamed from: a */
    private static Context f7014a;

    /* renamed from: b */
    private static Boolean f7015b;

    public static boolean isInstantApp(Context context) {
        Boolean bool;
        synchronized (InstantApps.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (f7014a == null || f7015b == null || f7014a != applicationContext) {
                    f7015b = null;
                    if (PlatformVersion.isAtLeastO()) {
                        bool = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                    } else {
                        try {
                            context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                            f7015b = Boolean.TRUE;
                        } catch (ClassNotFoundException e) {
                            bool = Boolean.FALSE;
                        }
                        f7014a = applicationContext;
                        return f7015b.booleanValue();
                    }
                    f7015b = bool;
                    f7014a = applicationContext;
                    return f7015b.booleanValue();
                }
                return f7015b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
