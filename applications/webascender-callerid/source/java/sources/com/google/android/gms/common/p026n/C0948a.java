package com.google.android.gms.common.p026n;

import android.content.Context;
import com.google.android.gms.common.util.C0971m;
/* renamed from: com.google.android.gms.common.n.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/n/a.class */
public class C0948a {

    /* renamed from: a */
    private static Context f3574a;

    /* renamed from: b */
    private static Boolean f3575b;

    /* renamed from: a */
    public static boolean m3210a(Context context) {
        Boolean bool;
        synchronized (C0948a.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                Context context2 = f3574a;
                if (context2 != null && (bool = f3575b) != null && context2 == applicationContext) {
                    return bool.booleanValue();
                }
                f3575b = null;
                if (C0971m.m3139i()) {
                    f3575b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
                } else {
                    try {
                        context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                        f3575b = Boolean.TRUE;
                    } catch (ClassNotFoundException e) {
                        f3575b = Boolean.FALSE;
                    }
                }
                f3574a = applicationContext;
                return f3575b.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
