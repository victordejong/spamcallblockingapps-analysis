package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.b2;
import com.google.android.gms.internal.measurement.t1;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.l9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l9.class */
final class C1545l9 {

    /* renamed from: a */
    b2 f4375a;

    /* renamed from: b */
    List<Long> f4376b;

    /* renamed from: c */
    List<t1> f4377c;

    /* renamed from: d */
    long f4378d;

    /* renamed from: e */
    final /* synthetic */ m9 f4379e;

    /* renamed from: b */
    private static final long m1565b(t1 t1Var) {
        return ((t1Var.B() / 1000) / 60) / 60;
    }

    /* renamed from: a */
    public final boolean m1566a(long j, t1 t1Var) {
        C0931r.m3308k(t1Var);
        if (this.f4377c == null) {
            this.f4377c = new ArrayList();
        }
        if (this.f4376b == null) {
            this.f4376b = new ArrayList();
        }
        if (this.f4377c.size() <= 0 || m1565b(this.f4377c.get(0)) == m1565b(t1Var)) {
            long f = this.f4378d + t1Var.f();
            this.f4379e.W();
            if (f >= Math.max(0, C1470a3.f4107i.m1485b(null).intValue())) {
                return false;
            }
            this.f4378d = f;
            this.f4377c.add(t1Var);
            this.f4376b.add(Long.valueOf(j));
            int size = this.f4377c.size();
            this.f4379e.W();
            return size < Math.max(1, C1470a3.f4109j.m1485b(null).intValue());
        }
        return false;
    }
}
