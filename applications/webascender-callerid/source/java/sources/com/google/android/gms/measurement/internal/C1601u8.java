package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.u8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u8.class */
public final class C1601u8 {

    /* renamed from: a */
    private RunnableC1596t8 f4528a;

    /* renamed from: b */
    final /* synthetic */ y8 f4529b;

    C1601u8(y8 y8Var) {
        this.f4529b = y8Var;
    }

    /* renamed from: a */
    final void m1517a() {
        this.f4529b.h();
        if (this.f4528a != null) {
            y8.r(this.f4529b).removeCallbacks(this.f4528a);
        }
        if (((l5) this.f4529b).a.z().w((String) null, C1470a3.f4132u0)) {
            ((l5) this.f4529b).a.A().v.m1494b(false);
        }
    }

    /* renamed from: b */
    final void m1516b(long j) {
        this.f4528a = new RunnableC1596t8(this, ((l5) this.f4529b).a.a().m3166b(), j);
        y8.r(this.f4529b).postDelayed(this.f4528a, 2000L);
    }
}
