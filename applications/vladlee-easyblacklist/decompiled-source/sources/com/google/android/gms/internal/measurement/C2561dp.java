package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.dp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dp.class */
final class C2561dp {

    /* renamed from: a */
    private static final AbstractC2560do f15998a = m2750c();

    /* renamed from: b */
    private static final AbstractC2560do f15999b = new C2559dn();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC2560do m2752a() {
        return f15998a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AbstractC2560do m2751b() {
        return f15999b;
    }

    /* renamed from: c */
    private static AbstractC2560do m2750c() {
        try {
            return (AbstractC2560do) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
