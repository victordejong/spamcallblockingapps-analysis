package com.google.android.gms.internal.firebase_auth_api;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.wo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/wo.class */
final class C1243wo {

    /* renamed from: a */
    private static final Class<?> f3830a;

    /* renamed from: b */
    private static final boolean f3831b;

    static {
        Class<?> cls;
        Class<?> cls2;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable th) {
            cls = null;
        }
        f3830a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable th2) {
            cls2 = null;
        }
        f3831b = cls2 != null;
    }

    /* renamed from: a */
    public static boolean m2371a() {
        return f3830a != null && !f3831b;
    }

    /* renamed from: b */
    public static Class<?> m2370b() {
        return f3830a;
    }
}
