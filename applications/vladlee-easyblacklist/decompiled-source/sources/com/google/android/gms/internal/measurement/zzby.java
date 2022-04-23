package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Build;
import android.os.UserManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzby.class */
public class zzby {

    /* renamed from: a */
    private static UserManager f16161a;

    /* renamed from: b */
    private static volatile boolean f16162b = !zza();

    /* renamed from: c */
    private static boolean f16163c = false;

    private zzby() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
        if (r0.isUserRunning(android.os.Process.myUserHandle()) == false) goto L_0x0042;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
        r7 = true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m2331a(android.content.Context r4) {
        /*
            r0 = 1
            r5 = r0
        L_0x0002:
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            r1 = 2
            if (r0 > r1) goto L_0x005d
            android.os.UserManager r0 = com.google.android.gms.internal.measurement.zzby.f16161a
            if (r0 != 0) goto L_0x001d
            r0 = r4
            java.lang.Class<android.os.UserManager> r1 = android.os.UserManager.class
            java.lang.Object r0 = r0.getSystemService(r1)
            android.os.UserManager r0 = (android.os.UserManager) r0
            com.google.android.gms.internal.measurement.zzby.f16161a = r0
        L_0x001d:
            android.os.UserManager r0 = com.google.android.gms.internal.measurement.zzby.f16161a
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0029
            r0 = 1
            return r0
        L_0x0029:
            r0 = r8
            boolean r0 = r0.isUserUnlocked()     // Catch: NullPointerException -> 0x0047
            if (r0 != 0) goto L_0x0042
            r0 = r8
            android.os.UserHandle r1 = android.os.Process.myUserHandle()     // Catch: NullPointerException -> 0x0047
            boolean r0 = r0.isUserRunning(r1)     // Catch: NullPointerException -> 0x0047
            r9 = r0
            r0 = r6
            r7 = r0
            r0 = r9
            if (r0 != 0) goto L_0x005d
        L_0x0042:
            r0 = 1
            r7 = r0
            goto L_0x005d
        L_0x0047:
            r8 = move-exception
            java.lang.String r0 = "DirectBootUtils"
            java.lang.String r1 = "Failed to check if user is unlocked."
            r2 = r8
            int r0 = android.util.Log.w(r0, r1, r2)
            r0 = 0
            com.google.android.gms.internal.measurement.zzby.f16161a = r0
            int r5 = r5 + 1
            goto L_0x0002
        L_0x005d:
            r0 = r7
            if (r0 == 0) goto L_0x0065
            r0 = 0
            com.google.android.gms.internal.measurement.zzby.f16161a = r0
        L_0x0065:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzby.m2331a(android.content.Context):boolean");
    }

    /* renamed from: b */
    private static boolean m2330b(Context context) {
        if (f16162b) {
            return true;
        }
        synchronized (zzby.class) {
            try {
                if (f16162b) {
                    return true;
                }
                boolean a = m2331a(context);
                if (a) {
                    f16162b = a;
                }
                return a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean zza() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean zza(Context context) {
        return !zza() || m2330b(context);
    }
}
