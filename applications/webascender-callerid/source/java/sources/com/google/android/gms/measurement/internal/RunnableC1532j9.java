package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.j9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/j9.class */
final class RunnableC1532j9 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String f4340f;

    /* renamed from: g */
    final /* synthetic */ Bundle f4341g;

    /* renamed from: h */
    final /* synthetic */ k9 f4342h;

    RunnableC1532j9(k9 k9Var, String str, Bundle bundle) {
        this.f4342h = k9Var;
        this.f4340f = str;
        this.f4341g = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4342h.a.n0(this.f4342h.a.g0().J(this.f4340f, "_err", this.f4341g, "auto", this.f4342h.a.a().m3166b(), false, false), this.f4340f);
    }
}
