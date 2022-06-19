package com.google.android.gms.internal.firebase_auth_api;

import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.o2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/o2.class */
public abstract class AbstractC1160o2<PrimitiveT, KeyT> {

    /* renamed from: a */
    private final Class<PrimitiveT> f3763a;

    public AbstractC1160o2(Class<PrimitiveT> cls) {
        this.f3763a = cls;
    }

    /* renamed from: a */
    public final Class<PrimitiveT> m2704a() {
        return this.f3763a;
    }

    /* renamed from: b */
    public abstract PrimitiveT m2703b(KeyT keyt) throws GeneralSecurityException;
}
