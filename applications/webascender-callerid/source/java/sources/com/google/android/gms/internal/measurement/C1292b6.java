package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.b6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/b6.class */
final class C1292b6 {

    /* renamed from: a */
    private static final AbstractC1420z5<?> f3888a = new a6();

    /* renamed from: b */
    private static final AbstractC1420z5<?> f3889b;

    static {
        AbstractC1420z5<?> abstractC1420z5;
        try {
            abstractC1420z5 = (AbstractC1420z5) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC1420z5 = null;
        }
        f3889b = abstractC1420z5;
    }

    /* renamed from: a */
    static AbstractC1420z5<?> m2224a() {
        return f3888a;
    }

    /* renamed from: b */
    static AbstractC1420z5<?> m2223b() {
        AbstractC1420z5<?> abstractC1420z5 = f3889b;
        if (abstractC1420z5 != null) {
            return abstractC1420z5;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
