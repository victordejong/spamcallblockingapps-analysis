package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.ta;
import com.google.android.gms.internal.firebase-auth-api.va;
import com.google.android.gms.internal.firebase-auth-api.wa;
import com.google.android.gms.internal.firebase-auth-api.ya;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.j3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/j3.class */
final class C1109j3 {
    static {
        Charset.forName("UTF-8");
    }

    /* renamed from: a */
    public static ya m2794a(ta taVar) {
        va z = ya.z();
        z.k(taVar.y());
        for (sa saVar : taVar.z()) {
            wa z2 = xa.z();
            z2.k(saVar.z().y());
            z2.l(saVar.A());
            z2.n(saVar.C());
            z2.m(saVar.B());
            z.l(z2.h());
        }
        return z.h();
    }

    /* renamed from: b */
    public static void m2793b(ta taVar) throws GeneralSecurityException {
        int y = taVar.y();
        int i = 0;
        boolean z = false;
        boolean z2 = true;
        for (sa saVar : taVar.z()) {
            if (saVar.A() == ia.zzb) {
                if (!saVar.y()) {
                    throw new GeneralSecurityException(String.format("key %d has no key data", Integer.valueOf(saVar.B())));
                }
                if (saVar.C() == nb.zza) {
                    throw new GeneralSecurityException(String.format("key %d has unknown prefix", Integer.valueOf(saVar.B())));
                }
                if (saVar.A() == ia.zza) {
                    throw new GeneralSecurityException(String.format("key %d has unknown status", Integer.valueOf(saVar.B())));
                }
                boolean z3 = z;
                if (saVar.B() == y) {
                    if (z) {
                        throw new GeneralSecurityException("keyset contains multiple primary keys");
                    }
                    z3 = true;
                }
                z2 &= saVar.z().A() == fa.zzd;
                i++;
                z = z3;
            }
        }
        if (i != 0) {
            if (!z && !z2) {
                throw new GeneralSecurityException("keyset doesn't contain a valid primary key");
            }
            return;
        }
        throw new GeneralSecurityException("keyset must contain at least one ENABLED key");
    }
}
