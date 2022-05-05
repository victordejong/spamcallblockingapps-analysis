package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.df */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/df.class */
final class C2551df {

    /* renamed from: a */
    private static final AbstractC2550de f15972a = m2808c();

    /* renamed from: b */
    private static final AbstractC2550de f15973b = new C2552dg();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC2550de m2810a() {
        return f15972a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AbstractC2550de m2809b() {
        return f15973b;
    }

    /* renamed from: c */
    private static AbstractC2550de m2808c() {
        try {
            return (AbstractC2550de) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
