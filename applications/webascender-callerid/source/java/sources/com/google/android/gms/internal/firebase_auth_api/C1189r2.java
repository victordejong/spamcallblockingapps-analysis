package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.ga;
import com.google.android.gms.internal.firebase-auth-api.la;
import com.google.android.gms.internal.firebase-auth-api.m2;
import com.google.android.gms.internal.firebase-auth-api.nb;
import com.google.android.gms.internal.firebase-auth-api.q2;
import com.google.android.gms.internal.firebase-auth-api.qa;
import com.google.android.gms.internal.firebase-auth-api.r2;
import com.google.android.gms.internal.firebase-auth-api.ra;
import com.google.android.gms.internal.firebase-auth-api.sa;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Iterator;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.r2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/r2.class */
public final class C1189r2 {

    /* renamed from: a */
    private final qa f3794a;

    private C1189r2(qa qaVar) {
        this.f3794a = qaVar;
    }

    /* renamed from: a */
    public static r2 m2484a(q2 q2Var) {
        return new C1189r2(q2Var.m2526b().s());
    }

    /* renamed from: b */
    public static r2 m2483b() {
        return new C1189r2(ta.D());
    }

    /* renamed from: g */
    private final sa m2478g(la laVar) throws GeneralSecurityException {
        sa m2477h;
        synchronized (this) {
            m2477h = m2477h(C1099i3.m2815e(laVar), laVar.A());
        }
        return m2477h;
    }

    /* renamed from: h */
    private final sa m2477h(ga gaVar, nb nbVar) throws GeneralSecurityException {
        sa h;
        synchronized (this) {
            int m2475j = m2475j();
            if (nbVar == nb.zza) {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            ra D = sa.D();
            D.k(gaVar);
            D.m(m2475j);
            D.l(ia.zzb);
            D.n(nbVar);
            h = D.h();
        }
        return h;
    }

    /* renamed from: i */
    private final boolean m2476i(int i) {
        boolean z;
        synchronized (this) {
            Iterator it = this.f3794a.l().iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((sa) it.next()).B() == i) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    /* renamed from: j */
    private final int m2475j() {
        int m2474k;
        synchronized (this) {
            m2474k = m2474k();
            while (m2476i(m2474k)) {
                m2474k = m2474k();
            }
        }
        return m2474k;
    }

    /* renamed from: k */
    private static int m2474k() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] bArr = new byte[4];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 == 0) {
                secureRandom.nextBytes(bArr);
                i = ((bArr[0] & Byte.MAX_VALUE) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
            } else {
                return i2;
            }
        }
    }

    /* renamed from: c */
    public final q2 m2482c() throws GeneralSecurityException {
        q2 m2527a;
        synchronized (this) {
            m2527a = C1182q2.m2527a(this.f3794a.h());
        }
        return m2527a;
    }

    /* renamed from: d */
    public final r2 m2481d(m2 m2Var) throws GeneralSecurityException {
        synchronized (this) {
            m2480e(m2Var.m2742a(), false);
        }
        return this;
    }

    @Deprecated
    /* renamed from: e */
    public final int m2480e(la laVar, boolean z) throws GeneralSecurityException {
        int B;
        synchronized (this) {
            sa m2478g = m2478g(laVar);
            this.f3794a.p(m2478g);
            B = m2478g.B();
        }
        return B;
    }

    /* renamed from: f */
    public final r2 m2479f(int i) throws GeneralSecurityException {
        synchronized (this) {
            for (int i2 = 0; i2 < this.f3794a.m(); i2++) {
                sa n = this.f3794a.n(i2);
                if (n.B() == i) {
                    if (!n.A().equals(ia.zzb)) {
                        StringBuilder sb = new StringBuilder(63);
                        sb.append("cannot set key as primary because it's not enabled: ");
                        sb.append(i);
                        throw new GeneralSecurityException(sb.toString());
                    } else {
                        this.f3794a.k(i);
                    }
                }
            }
            StringBuilder sb2 = new StringBuilder(26);
            sb2.append("key not found: ");
            sb2.append(i);
            throw new GeneralSecurityException(sb2.toString());
        }
        return this;
    }
}
