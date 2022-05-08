package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzdf.class */
public final class zzdf {

    /* renamed from: a */
    private static volatile zzdy<Boolean> f8342a = zzdy.m12746d();

    /* renamed from: b */
    private static final Object f8343b = new Object();

    /* renamed from: a */
    private static boolean m12779a(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m12778b(android.content.Context r5, android.net.Uri r6) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzdf.m12778b(android.content.Context, android.net.Uri):boolean");
    }
}
