package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.y4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/y4.class */
final class C1412y4 {

    /* renamed from: a */
    private static final Class<?> f3989a;

    /* renamed from: b */
    private static final boolean f3990b;

    static {
        Class<?> cls;
        Class<?> cls2;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable th) {
            cls = null;
        }
        f3989a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable th2) {
            cls2 = null;
        }
        f3990b = cls2 != null;
    }

    /* renamed from: a */
    public static boolean m1879a() {
        return f3989a != null && !f3990b;
    }

    /* renamed from: b */
    public static Class<?> m1878b() {
        return f3989a;
    }
}
