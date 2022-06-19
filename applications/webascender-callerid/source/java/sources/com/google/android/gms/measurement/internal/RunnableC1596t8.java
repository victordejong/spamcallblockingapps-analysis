package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.t8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/t8.class */
public final class RunnableC1596t8 implements Runnable {

    /* renamed from: f */
    final long f4511f;

    /* renamed from: g */
    final long f4512g;

    /* renamed from: h */
    final /* synthetic */ C1601u8 f4513h;

    public RunnableC1596t8(C1601u8 c1601u8, long j, long j2) {
        this.f4513h = c1601u8;
        this.f4511f = j;
        this.f4512g = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((l5) this.f4513h.f4529b).a.e().r(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.s8

            /* renamed from: f */
            private final RunnableC1596t8 f4502f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f4502f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC1596t8 runnableC1596t8 = this.f4502f;
                C1601u8 c1601u8 = runnableC1596t8.f4513h;
                long j = runnableC1596t8.f4511f;
                long j2 = runnableC1596t8.f4512g;
                c1601u8.f4529b.h();
                ((l5) c1601u8.f4529b).a.c().v().m1570a("Application going to the background");
                boolean z = true;
                if (((l5) c1601u8.f4529b).a.z().w((String) null, C1470a3.f4132u0)) {
                    ((l5) c1601u8.f4529b).a.A().v.m1494b(true);
                }
                Bundle bundle = new Bundle();
                if (!((l5) c1601u8.f4529b).a.z().C()) {
                    c1601u8.f4529b.e.m1498b(j2);
                    if (((l5) c1601u8.f4529b).a.z().w((String) null, C1470a3.f4114l0)) {
                        C1615w8 c1615w8 = c1601u8.f4529b.e;
                        long j3 = c1615w8.f4556b;
                        c1615w8.f4556b = j2;
                        bundle.putLong("_et", j2 - j3);
                        j7.x(((l5) c1601u8.f4529b).a.Q().s(true), bundle, true);
                    } else {
                        z = false;
                    }
                    c1601u8.f4529b.e.m1496d(false, z, j2);
                }
                ((l5) c1601u8.f4529b).a.F().Y("auto", "_ab", j, bundle);
            }
        });
    }
}
