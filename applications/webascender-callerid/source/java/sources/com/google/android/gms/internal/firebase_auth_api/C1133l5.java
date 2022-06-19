package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.j9;
import com.google.android.gms.internal.firebase-auth-api.ka;
import com.google.android.gms.internal.firebase-auth-api.la;
import com.google.android.gms.internal.firebase-auth-api.m9;
import com.google.android.gms.internal.firebase-auth-api.nb;
import com.google.android.gms.internal.firebase-auth-api.r8;
import com.google.android.gms.internal.firebase-auth-api.r9;
import com.google.android.gms.internal.firebase-auth-api.t8;
import com.google.android.gms.internal.firebase-auth-api.w8;
import com.google.android.gms.internal.firebase-auth-api.z8;
@Deprecated
/* renamed from: com.google.android.gms.internal.firebase_auth_api.l5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/l5.class */
public final class C1133l5 {

    /* renamed from: a */
    private static final byte[] f3750a;

    /* renamed from: b */
    public static final la f3751b;

    static {
        byte[] bArr = new byte[0];
        f3750a = bArr;
        m9 m9Var = m9.zzb;
        r9 r9Var = r9.zzd;
        r8 r8Var = r8.zzb;
        la laVar = C1132l3.f3748a;
        nb nbVar = nb.zzb;
        f3751b = m2765a(m9Var, r9Var, r8Var, laVar, nbVar, bArr);
        m2765a(m9Var, r9Var, r8.zzc, laVar, nb.zzd, bArr);
        m2765a(m9Var, r9Var, r8Var, C1132l3.f3749b, nbVar, bArr);
    }

    /* renamed from: a */
    public static la m2765a(m9 m9Var, r9 r9Var, r8 r8Var, la laVar, nb nbVar, byte[] bArr) {
        w8 A = x8.A();
        j9 B = k9.B();
        B.k(m9Var);
        B.l(r9Var);
        B.m(AbstractC1151mp.m2722s(bArr));
        k9 h = B.h();
        t8 z = u8.z();
        z.k(laVar);
        u8 h2 = z.h();
        z8 B2 = a9.B();
        B2.k(h);
        B2.l(h2);
        B2.m(r8Var);
        A.k(B2.h());
        x8 h3 = A.h();
        ka B3 = la.B();
        new d5();
        B3.k("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
        B3.m(nbVar);
        B3.l(h3.j());
        return B3.h();
    }
}
