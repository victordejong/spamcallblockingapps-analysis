package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.mp;
import com.google.android.gms.internal.firebase-auth-api.r0;
import com.google.android.gms.internal.firebase-auth-api.vp;
import com.google.android.gms.internal.firebase-auth-api.wp;
import java.io.IOException;
import java.util.List;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.wp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/wp.class */
final class C1244wp {

    /* renamed from: a */
    private final vp f3832a;

    private C1244wp(vp vpVar) {
        C1117k.m2786b(vpVar, "output");
        this.f3832a = vpVar;
        ((vp) vpVar).a = this;
    }

    /* renamed from: l */
    public static wp m2347l(vp vpVar) {
        wp wpVar = ((vp) vpVar).a;
        return wpVar != null ? wpVar : new C1244wp(vpVar);
    }

    /* renamed from: A */
    public final void m2369A(int i, int i2) throws IOException {
        this.f3832a.p(i, vp.h(i2));
    }

    /* renamed from: B */
    public final void m2368B(int i, long j) throws IOException {
        this.f3832a.r(i, vp.i(j));
    }

    /* renamed from: C */
    public final void m2367C(int i, Object obj, r0 r0Var) throws IOException {
        this.f3832a.x(i, (f0) obj, r0Var);
    }

    /* renamed from: D */
    public final void m2366D(int i, Object obj, r0 r0Var) throws IOException {
        vp vpVar = this.f3832a;
        vpVar.n(i, 3);
        r0Var.m2495f((f0) obj, ((vp) vpVar).a);
        vpVar.n(i, 4);
    }

    /* renamed from: E */
    public final void m2365E(int i) throws IOException {
        this.f3832a.n(i, 3);
    }

    /* renamed from: F */
    public final void m2364F(int i) throws IOException {
        this.f3832a.n(i, 4);
    }

    /* renamed from: G */
    public final void m2363G(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.o(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += vp.J(list.get(i4).intValue());
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.z(list.get(i5).intValue());
        }
    }

    /* renamed from: H */
    public final void m2362H(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.q(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.B(list.get(i5).intValue());
        }
    }

    /* renamed from: I */
    public final void m2361I(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.r(i, list.get(i2).longValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += vp.c(list.get(i4).longValue());
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.C(list.get(i5).longValue());
        }
    }

    /* renamed from: J */
    public final void m2360J(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.r(i, list.get(i2).longValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += vp.c(list.get(i4).longValue());
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.C(list.get(i5).longValue());
        }
    }

    /* renamed from: K */
    public final void m2359K(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.t(i, list.get(i2).longValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.D(list.get(i5).longValue());
        }
    }

    /* renamed from: a */
    public final void m2358a(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.q(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.B(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    /* renamed from: b */
    public final void m2357b(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.t(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.D(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    /* renamed from: c */
    public final void m2356c(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.o(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += vp.J(list.get(i4).intValue());
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.z(list.get(i5).intValue());
        }
    }

    /* renamed from: d */
    public final void m2355d(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.u(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.y(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: e */
    public final void m2354e(int i, List<String> list) throws IOException {
        if (!(list instanceof AbstractC1159o)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.v(i, list.get(i2));
            }
            return;
        }
        AbstractC1159o abstractC1159o = (AbstractC1159o) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object m2705o = abstractC1159o.m2705o(i3);
            if (m2705o instanceof String) {
                this.f3832a.v(i, (String) m2705o);
            } else {
                this.f3832a.w(i, (AbstractC1151mp) m2705o);
            }
        }
    }

    /* renamed from: f */
    public final void m2353f(int i, List<AbstractC1151mp> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f3832a.w(i, list.get(i2));
        }
    }

    /* renamed from: g */
    public final void m2352g(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.p(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += vp.b(list.get(i4).intValue());
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.A(list.get(i5).intValue());
        }
    }

    /* renamed from: h */
    public final void m2351h(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.q(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.B(list.get(i5).intValue());
        }
    }

    /* renamed from: i */
    public final void m2350i(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.t(i, list.get(i2).longValue());
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.D(list.get(i5).longValue());
        }
    }

    /* renamed from: j */
    public final void m2349j(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.p(i, vp.h(list.get(i2).intValue()));
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += vp.b(vp.h(list.get(i4).intValue()));
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.A(vp.h(list.get(i5).intValue()));
        }
    }

    /* renamed from: k */
    public final void m2348k(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3832a.r(i, vp.i(list.get(i2).longValue()));
            }
            return;
        }
        this.f3832a.n(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += vp.c(vp.i(list.get(i4).longValue()));
        }
        this.f3832a.A(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3832a.C(vp.i(list.get(i5).longValue()));
        }
    }

    /* renamed from: m */
    public final void m2346m(int i, int i2) throws IOException {
        this.f3832a.q(i, i2);
    }

    /* renamed from: n */
    public final void m2345n(int i, long j) throws IOException {
        this.f3832a.r(i, j);
    }

    /* renamed from: o */
    public final void m2344o(int i, long j) throws IOException {
        this.f3832a.t(i, j);
    }

    /* renamed from: p */
    public final void m2343p(int i, float f) throws IOException {
        this.f3832a.q(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: q */
    public final void m2342q(int i, double d) throws IOException {
        this.f3832a.t(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: r */
    public final void m2341r(int i, int i2) throws IOException {
        this.f3832a.o(i, i2);
    }

    /* renamed from: s */
    public final void m2340s(int i, long j) throws IOException {
        this.f3832a.r(i, j);
    }

    /* renamed from: t */
    public final void m2339t(int i, int i2) throws IOException {
        this.f3832a.o(i, i2);
    }

    /* renamed from: u */
    public final void m2338u(int i, long j) throws IOException {
        this.f3832a.t(i, j);
    }

    /* renamed from: v */
    public final void m2337v(int i, int i2) throws IOException {
        this.f3832a.q(i, i2);
    }

    /* renamed from: w */
    public final void m2336w(int i, boolean z) throws IOException {
        this.f3832a.u(i, z);
    }

    /* renamed from: x */
    public final void m2335x(int i, String str) throws IOException {
        this.f3832a.v(i, str);
    }

    /* renamed from: y */
    public final void m2334y(int i, mp mpVar) throws IOException {
        this.f3832a.w(i, mpVar);
    }

    /* renamed from: z */
    public final void m2333z(int i, int i2) throws IOException {
        this.f3832a.p(i, i2);
    }
}
