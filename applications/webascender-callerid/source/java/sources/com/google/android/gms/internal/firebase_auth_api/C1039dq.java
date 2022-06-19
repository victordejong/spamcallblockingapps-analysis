package com.google.android.gms.internal.firebase_auth_api;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.dq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/dq.class */
final class C1039dq {

    /* renamed from: a */
    private static final AbstractC1024bq<?> f3689a = new cq();

    /* renamed from: b */
    private static final AbstractC1024bq<?> f3690b;

    static {
        AbstractC1024bq<?> abstractC1024bq;
        try {
            abstractC1024bq = (AbstractC1024bq) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            abstractC1024bq = null;
        }
        f3690b = abstractC1024bq;
    }

    /* renamed from: a */
    static AbstractC1024bq<?> m2950a() {
        return f3689a;
    }

    /* renamed from: b */
    static AbstractC1024bq<?> m2949b() {
        AbstractC1024bq<?> abstractC1024bq = f3690b;
        if (abstractC1024bq != null) {
            return abstractC1024bq;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
