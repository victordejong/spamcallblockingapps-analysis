package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aha.class */
final class aha {

    /* renamed from: a */
    private static final Class<?> f7347a = m5426a("libcore.io.Memory");

    /* renamed from: b */
    private static final boolean f7348b;

    static {
        f7348b = m5426a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    private static <T> Class<T> m5426a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m5427a() {
        return f7347a != null && !f7348b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Class<?> m5425b() {
        return f7347a;
    }
}
