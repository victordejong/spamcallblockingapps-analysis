package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.br */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/br.class */
final class C2509br {

    /* renamed from: a */
    private static final Class<?> f15892a = m2897a("libcore.io.Memory");

    /* renamed from: b */
    private static final boolean f15893b;

    static {
        f15893b = m2897a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    private static <T> Class<T> m2897a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m2898a() {
        return f15892a != null && !f15893b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Class<?> m2896b() {
        return f15892a;
    }
}
