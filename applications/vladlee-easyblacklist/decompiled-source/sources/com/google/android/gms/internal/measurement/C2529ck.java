package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ck */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ck.class */
final class C2529ck {

    /* renamed from: a */
    private static final AbstractC2528cj<?> f15930a = new C2530cl();

    /* renamed from: b */
    private static final AbstractC2528cj<?> f15931b = m2865c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC2528cj<?> m2867a() {
        return f15930a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static AbstractC2528cj<?> m2866b() {
        AbstractC2528cj<?> cjVar = f15931b;
        if (cjVar != null) {
            return cjVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* renamed from: c */
    private static AbstractC2528cj<?> m2865c() {
        try {
            return (AbstractC2528cj) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
