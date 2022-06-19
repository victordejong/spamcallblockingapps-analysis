package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.d7;
import com.google.android.gms.internal.firebase-auth-api.g7;
import com.google.android.gms.internal.firebase-auth-api.ka;
import com.google.android.gms.internal.firebase-auth-api.la;
import com.google.android.gms.internal.firebase-auth-api.m7;
import com.google.android.gms.internal.firebase-auth-api.nb;
import com.google.android.gms.internal.firebase-auth-api.p7;
import com.google.android.gms.internal.firebase-auth-api.r9;
import com.google.android.gms.internal.firebase-auth-api.v7;
import com.google.android.gms.internal.firebase-auth-api.w6;
import com.google.android.gms.internal.firebase-auth-api.w9;
import com.google.android.gms.internal.firebase-auth-api.z9;
@Deprecated
/* renamed from: com.google.android.gms.internal.firebase_auth_api.l3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/l3.class */
public final class C1132l3 {

    /* renamed from: a */
    public static final la f3748a = m2768a(16);

    /* renamed from: b */
    public static final la f3749b;

    static {
        m2768a(32);
        m2767b(16, 16);
        m2767b(32, 16);
        r9 r9Var = r9.zzd;
        f3749b = m2766c(16, 16, 32, 16, r9Var);
        m2766c(32, 16, 32, 32, r9Var);
        ka B = la.B();
        new h4();
        B.k("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        nb nbVar = nb.zzb;
        B.m(nbVar);
        B.h();
        ka B2 = la.B();
        new r4();
        B2.k("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        B2.m(nbVar);
        B2.h();
    }

    /* renamed from: a */
    public static la m2768a(int i) {
        v7 A = w7.A();
        A.k(i);
        w7 h = A.h();
        ka B = la.B();
        B.l(h.j());
        new b4();
        B.k("type.googleapis.com/google.crypto.tink.AesGcmKey");
        B.m(nb.zzb);
        return B.h();
    }

    /* renamed from: b */
    public static la m2767b(int i, int i2) {
        m7 B = n7.B();
        B.l(i);
        p7 z = q7.z();
        z.k(16);
        B.k(z.h());
        n7 h = B.h();
        ka B2 = la.B();
        B2.l(h.j());
        new y3();
        B2.k("type.googleapis.com/google.crypto.tink.AesEaxKey");
        B2.m(nb.zzb);
        return B2.h();
    }

    /* renamed from: c */
    public static la m2766c(int i, int i2, int i3, int i4, r9 r9Var) {
        d7 B = e7.B();
        g7 z = h7.z();
        z.k(16);
        B.k(z.h());
        B.l(i);
        e7 h = B.h();
        w9 B2 = x9.B();
        z9 A = aa.A();
        A.k(r9Var);
        A.l(i4);
        B2.k(A.h());
        B2.l(32);
        x9 h2 = B2.h();
        w6 B3 = x6.B();
        B3.k(h);
        B3.l(h2);
        x6 h3 = B3.h();
        ka B4 = la.B();
        B4.l(h3.j());
        new r3();
        B4.k("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        B4.m(nb.zzb);
        return B4.h();
    }
}
