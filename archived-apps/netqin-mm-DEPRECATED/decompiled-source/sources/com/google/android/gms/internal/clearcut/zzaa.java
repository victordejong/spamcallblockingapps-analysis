package com.google.android.gms.internal.clearcut;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzaa.class */
public class zzaa {

    /* renamed from: a */
    public static volatile UserManager f29199a;

    /* renamed from: b */
    public static volatile boolean f29200b = !m10873a();

    /* renamed from: a */
    public static boolean m10873a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: a */
    public static boolean m10872a(Context context) {
        return m10873a() && !m10871b(context);
    }

    /* renamed from: b */
    public static boolean m10871b(Context context) {
        boolean z = f29200b;
        boolean z2 = z;
        if (!z) {
            UserManager userManager = f29199a;
            UserManager userManager2 = userManager;
            if (userManager == null) {
                synchronized (zzaa.class) {
                    try {
                        UserManager userManager3 = f29199a;
                        userManager2 = userManager3;
                        if (userManager3 == null) {
                            userManager2 = (UserManager) context.getSystemService(UserManager.class);
                            f29199a = userManager2;
                            if (userManager2 == null) {
                                f29200b = true;
                                return true;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            boolean isUserUnlocked = userManager2.isUserUnlocked();
            f29200b = isUserUnlocked;
            z2 = isUserUnlocked;
            if (isUserUnlocked) {
                f29199a = null;
                z2 = isUserUnlocked;
            }
        }
        return z2;
    }
}
