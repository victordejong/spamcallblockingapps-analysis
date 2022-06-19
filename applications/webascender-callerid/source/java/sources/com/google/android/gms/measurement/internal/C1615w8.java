package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.qa;
/* renamed from: com.google.android.gms.measurement.internal.w8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w8.class */
final class C1615w8 {

    /* renamed from: a */
    protected long f4555a;

    /* renamed from: b */
    protected long f4556b;

    /* renamed from: c */
    private final AbstractC1546m f4557c;

    /* renamed from: d */
    final /* synthetic */ y8 f4558d;

    public C1615w8(y8 y8Var) {
        this.f4558d = y8Var;
        this.f4557c = new v8(this, ((l5) y8Var).a);
        long m3165c = ((l5) y8Var).a.a().m3165c();
        this.f4555a = m3165c;
        this.f4556b = m3165c;
    }

    /* renamed from: a */
    final void m1499a(long j) {
        this.f4558d.h();
        this.f4557c.m1561d();
        this.f4555a = j;
        this.f4556b = j;
    }

    /* renamed from: b */
    public final void m1498b(long j) {
        this.f4557c.m1561d();
    }

    /* renamed from: c */
    final void m1497c() {
        this.f4557c.m1561d();
        this.f4555a = 0L;
        this.f4556b = 0L;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v57, types: [long] */
    /* renamed from: d */
    public final boolean m1496d(boolean z, boolean z2, long j) {
        this.f4558d.h();
        this.f4558d.j();
        qa.a();
        if (!((l5) this.f4558d).a.z().w((String) null, C1470a3.f4122p0)) {
            ((l5) this.f4558d).a.A().t.m1483b(((l5) this.f4558d).a.a().m3166b());
        } else if (((l5) this.f4558d).a.k()) {
            ((l5) this.f4558d).a.A().t.m1483b(((l5) this.f4558d).a.a().m3166b());
        }
        char c = j - this.f4555a;
        if (!z && c < 1000) {
            ((l5) this.f4558d).a.c().w().m1569b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(c));
            return false;
        }
        if (!z2) {
            c = j - this.f4556b;
            this.f4556b = j;
        }
        ((l5) this.f4558d).a.c().w().m1569b("Recording user engagement, ms", Long.valueOf(c));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", c);
        j7.x(((l5) this.f4558d).a.Q().s(!((l5) this.f4558d).a.z().C()), bundle, true);
        f z3 = ((l5) this.f4558d).a.z();
        C1630z2<Boolean> c1630z2 = C1470a3.f4085U;
        if (!z3.w((String) null, c1630z2) && z2) {
            bundle.putLong("_fr", 1L);
        }
        if (!((l5) this.f4558d).a.z().w((String) null, c1630z2) || !z2) {
            ((l5) this.f4558d).a.F().X("auto", "_e", bundle);
        }
        this.f4555a = j;
        this.f4557c.m1561d();
        this.f4557c.m1563b(3600000L);
        return true;
    }
}
