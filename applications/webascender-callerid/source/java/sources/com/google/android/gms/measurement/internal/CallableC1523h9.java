package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.v9;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.h9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h9.class */
final class CallableC1523h9 implements Callable<String> {

    /* renamed from: f */
    final /* synthetic */ aa f4315f;

    /* renamed from: g */
    final /* synthetic */ m9 f4316g;

    CallableC1523h9(m9 m9Var, aa aaVar) {
        this.f4316g = m9Var;
        this.f4315f = aaVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() throws Exception {
        v9.a();
        String str = null;
        if (!this.f4316g.W().w((String) null, C1470a3.f4140y0) || (this.f4316g.l0(this.f4315f.f).m1663h() && C1510g.m1668c(this.f4315f.A).m1663h())) {
            str = this.f4316g.C(this.f4315f).m1637O();
        } else {
            this.f4316g.c().w().m1570a("Analytics storage consent denied. Returning null app instance id");
        }
        return str;
    }
}
