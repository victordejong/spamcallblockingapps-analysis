package com.google.android.gms.internal.measurement;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcr.class */
public class zzcr {
    @GuardedBy

    /* renamed from: a */
    private static UserManager f8323a;

    /* renamed from: b */
    private static volatile boolean f8324b = !m12799a();

    private zzcr() {
    }

    /* renamed from: a */
    public static boolean m12799a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* renamed from: b */
    public static boolean m12798b(Context context) {
        return !m12799a() || m12796d(context);
    }

    @RequiresApi
    @TargetApi(24)
    @GuardedBy
    /* renamed from: c */
    private static boolean m12797c(Context context) {
        boolean z;
        int i = 1;
        while (true) {
            z = false;
            if (i > 2) {
                break;
            }
            if (f8323a == null) {
                f8323a = (UserManager) context.getSystemService(UserManager.class);
            }
            UserManager userManager = f8323a;
            if (userManager == null) {
                return true;
            }
            z = true;
            try {
                if (userManager.isUserUnlocked()) {
                    break;
                }
                z = !userManager.isUserRunning(Process.myUserHandle());
            } catch (NullPointerException e) {
                Log.w("DirectBootUtils", "Failed to check if user is unlocked.", e);
                f8323a = null;
                i++;
            }
        }
        if (z) {
            f8323a = null;
        }
        return z;
    }

    @RequiresApi
    @TargetApi(24)
    /* renamed from: d */
    private static boolean m12796d(Context context) {
        if (f8324b) {
            return true;
        }
        synchronized (zzcr.class) {
            try {
                if (f8324b) {
                    return true;
                }
                boolean c = m12797c(context);
                if (c) {
                    f8324b = c;
                }
                return c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
