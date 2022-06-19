package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.a3;
import com.google.android.gms.internal.firebase-auth-api.c2;
import com.google.android.gms.internal.firebase-auth-api.ga;
import com.google.android.gms.internal.firebase-auth-api.o9;
import com.google.android.gms.internal.firebase-auth-api.p9;
import com.google.android.gms.internal.firebase-auth-api.q2;
import com.google.android.gms.internal.firebase-auth-api.qa;
import com.google.android.gms.internal.firebase-auth-api.ra;
import com.google.android.gms.internal.firebase-auth-api.s2;
import com.google.android.gms.internal.firebase-auth-api.ta;
import com.google.android.gms.internal.firebase-auth-api.v5;
import com.google.android.gms.internal.firebase-auth-api.y2;
import com.google.android.gms.internal.firebase-auth-api.ya;
import java.io.IOException;
import java.security.GeneralSecurityException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.q2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/q2.class */
public final class C1182q2 {

    /* renamed from: a */
    private final ta f3785a;

    private C1182q2(ta taVar) {
        this.f3785a = taVar;
    }

    /* renamed from: a */
    public static final q2 m2527a(ta taVar) throws GeneralSecurityException {
        m2521g(taVar);
        return new C1182q2(taVar);
    }

    /* renamed from: g */
    public static void m2521g(ta taVar) throws GeneralSecurityException {
        if (taVar == null || taVar.A() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
    }

    /* renamed from: i */
    public static final q2 m2519i(v5 v5Var, c2 c2Var) throws GeneralSecurityException, IOException {
        p9 m2392b = v5Var.m2392b();
        if (m2392b == null || m2392b.y().m2731g() == 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        try {
            ta C = ta.C(c2Var.m2962b(m2392b.y().m2719v(), new byte[0]), C1011aq.m3024a());
            m2521g(C);
            return new C1182q2(C);
        } catch (zzaal e) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    /* renamed from: b */
    public final ta m2526b() {
        return this.f3785a;
    }

    /* renamed from: c */
    public final ya m2525c() {
        return C1109j3.m2794a(this.f3785a);
    }

    /* renamed from: d */
    public final void m2524d(s2 s2Var, c2 c2Var) throws GeneralSecurityException, IOException {
        ta taVar = this.f3785a;
        byte[] m2963a = c2Var.m2963a(taVar.a(), new byte[0]);
        try {
            if (!ta.C(c2Var.m2962b(m2963a, new byte[0]), C1011aq.m3024a()).equals(taVar)) {
                throw new GeneralSecurityException("cannot encrypt keyset");
            }
            o9 A = p9.A();
            A.k(AbstractC1151mp.m2722s(m2963a));
            A.l(C1109j3.m2794a(taVar));
            s2Var.m2460a(A.h());
        } catch (zzaal e) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0016  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2523e(com.google.android.gms.internal.firebase-auth-api.s2 r9) throws java.security.GeneralSecurityException, java.io.IOException {
        /*
            r8 = this;
            r0 = r8
            com.google.android.gms.internal.firebase-auth-api.ta r0 = r0.f3785a
            java.util.List r0 = r0.z()
            java.util.Iterator r0 = r0.iterator()
            r10 = r0
        Ld:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L72
            r0 = r10
            java.lang.Object r0 = r0.next()
            com.google.android.gms.internal.firebase_auth_api.sa r0 = (com.google.android.gms.internal.firebase_auth_api.sa) r0
            r11 = r0
            r0 = r11
            com.google.android.gms.internal.firebase-auth-api.ga r0 = r0.z()
            com.google.android.gms.internal.firebase-auth-api.fa r0 = r0.A()
            com.google.android.gms.internal.firebase-auth-api.fa r1 = com.google.android.gms.internal.firebase_auth_api.fa.zza
            if (r0 == r1) goto L4a
            r0 = r11
            com.google.android.gms.internal.firebase-auth-api.ga r0 = r0.z()
            com.google.android.gms.internal.firebase-auth-api.fa r0 = r0.A()
            com.google.android.gms.internal.firebase-auth-api.fa r1 = com.google.android.gms.internal.firebase_auth_api.fa.zzb
            if (r0 == r1) goto L4a
            r0 = r11
            com.google.android.gms.internal.firebase-auth-api.ga r0 = r0.z()
            com.google.android.gms.internal.firebase-auth-api.fa r0 = r0.A()
            com.google.android.gms.internal.firebase-auth-api.fa r1 = com.google.android.gms.internal.firebase_auth_api.fa.zzc
            if (r0 == r1) goto L4a
            goto Ld
        L4a:
            java.security.GeneralSecurityException r0 = new java.security.GeneralSecurityException
            r1 = r0
            java.lang.String r2 = "keyset contains key material of type %s for type url %s"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r11
            com.google.android.gms.internal.firebase-auth-api.ga r6 = r6.z()
            com.google.android.gms.internal.firebase-auth-api.fa r6 = r6.A()
            java.lang.String r6 = r6.name()
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r11
            com.google.android.gms.internal.firebase-auth-api.ga r6 = r6.z()
            java.lang.String r6 = r6.y()
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r1.<init>(r2)
            throw r0
        L72:
            r0 = r9
            r1 = r8
            com.google.android.gms.internal.firebase-auth-api.ta r1 = r1.f3785a
            r0.m2459b(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth_api.C1182q2.m2523e(com.google.android.gms.internal.firebase-auth-api.s2):void");
    }

    /* renamed from: f */
    public final q2 m2522f() throws GeneralSecurityException {
        if (this.f3785a != null) {
            qa D = ta.D();
            for (sa saVar : this.f3785a.z()) {
                ga z = saVar.z();
                if (z.A() != fa.zzc) {
                    throw new GeneralSecurityException("The keyset contains a non-private key");
                }
                ga m2813g = C1099i3.m2813g(z.y(), z.z());
                C1099i3.m2810j(m2813g);
                ra D2 = sa.D();
                D2.i(saVar);
                D2.k(m2813g);
                D.p(D2.h());
            }
            D.k(this.f3785a.y());
            return new C1182q2(D.h());
        }
        throw new GeneralSecurityException("cleartext keyset is not available");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public final <P> P m2520h(Class<P> cls) throws GeneralSecurityException {
        Class<?> m2807m = C1099i3.m2807m(cls);
        if (m2807m == null) {
            String valueOf = String.valueOf(cls.getName());
            throw new GeneralSecurityException(valueOf.length() != 0 ? "No wrapper found for ".concat(valueOf) : new String("No wrapper found for "));
        }
        C1109j3.m2793b(this.f3785a);
        a3 m3034b = C1001a3.m3034b(m2807m);
        for (sa saVar : this.f3785a.z()) {
            if (saVar.A() == ia.zzb) {
                y2 m3032d = m3034b.m3032d(C1099i3.m2809k(saVar.z(), m2807m), saVar);
                if (saVar.B() == this.f3785a.y()) {
                    m3034b.m3033c(m3032d);
                }
            }
        }
        return (P) C1099i3.m2808l(m3034b, cls);
    }

    public final String toString() {
        return C1109j3.m2794a(this.f3785a).toString();
    }
}
