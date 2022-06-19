package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.zzaal;
import com.google.android.gms.internal.firebase_auth_api.f0;
import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.n2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/n2.class */
public abstract class AbstractC1153n2<KeyFormatProtoT extends f0, KeyT> {

    /* renamed from: a */
    private final Class<KeyFormatProtoT> f3762a;

    public AbstractC1153n2(Class<KeyFormatProtoT> cls) {
        this.f3762a = cls;
    }

    /* renamed from: a */
    public final Class<KeyFormatProtoT> m2713a() {
        return this.f3762a;
    }

    /* renamed from: b */
    public abstract void m2712b(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    /* renamed from: c */
    public abstract KeyFormatProtoT m2711c(AbstractC1151mp abstractC1151mp) throws zzaal;

    /* renamed from: d */
    public abstract KeyT m2710d(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;
}
