package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.zzaal;
import com.google.android.gms.internal.firebase_auth_api.f0;
import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.k2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/k2.class */
final class C1119k2<KeyFormatProtoT extends f0, KeyProtoT extends f0> {

    /* renamed from: a */
    final AbstractC1153n2<KeyFormatProtoT, KeyProtoT> f3740a;

    C1119k2(AbstractC1153n2<KeyFormatProtoT, KeyProtoT> abstractC1153n2) {
        this.f3740a = abstractC1153n2;
    }

    /* renamed from: a */
    final KeyProtoT m2778a(AbstractC1151mp abstractC1151mp) throws GeneralSecurityException, zzaal {
        KeyFormatProtoT m2711c = this.f3740a.m2711c(abstractC1151mp);
        this.f3740a.m2712b(m2711c);
        return this.f3740a.m2710d(m2711c);
    }
}
