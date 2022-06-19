package com.google.android.gms.internal.firebase_auth_api;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.jd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/jd.class */
public final class C1113jd {
    /* renamed from: a */
    public static boolean m2792a() {
        boolean z = false;
        try {
            Class.forName("android.app.Application", false, null);
            z = true;
        } catch (Exception e) {
        }
        return z;
    }

    /* renamed from: b */
    public static int m2791b() {
        try {
            return Class.forName("android.os.Build$VERSION").getDeclaredField("SDK_INT").getInt(null);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
            return -1;
        }
    }
}
