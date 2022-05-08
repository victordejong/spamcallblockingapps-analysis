package com.google.android.gms.internal.icing;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbo.class */
public final class zzbo {

    /* renamed from: a */
    private static volatile zzbx<Boolean> f7914a = zzbx.m13996d();

    /* renamed from: b */
    private static final Object f7915b = new Object();

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m14014a(android.content.Context r5, android.net.Uri r6) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzbo.m14014a(android.content.Context, android.net.Uri):boolean");
    }

    /* renamed from: b */
    private static boolean m14013b(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
