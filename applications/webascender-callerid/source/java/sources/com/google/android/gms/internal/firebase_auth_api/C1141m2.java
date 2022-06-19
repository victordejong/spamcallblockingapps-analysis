package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.ka;
import com.google.android.gms.internal.firebase-auth-api.la;
import com.google.android.gms.internal.firebase-auth-api.m2;
import com.google.android.gms.internal.firebase-auth-api.nb;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.m2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/m2.class */
public final class C1141m2 {

    /* renamed from: a */
    private final la f3755a;

    private C1141m2(la laVar) {
        this.f3755a = laVar;
    }

    /* renamed from: b */
    public static m2 m2741b(String str, byte[] bArr, int i) {
        ka B = la.B();
        B.k(str);
        B.l(AbstractC1151mp.m2722s(bArr));
        nb nbVar = nb.zza;
        int i2 = i - 1;
        B.m(i2 != 0 ? i2 != 1 ? i2 != 2 ? nb.zze : nb.zzd : nb.zzc : nb.zzb);
        return new C1141m2(B.h());
    }

    /* renamed from: a */
    public final la m2742a() {
        return this.f3755a;
    }
}
