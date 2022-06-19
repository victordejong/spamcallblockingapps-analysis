package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.e6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/e6.class */
final class RunnableC1500e6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ Bundle f4225f;

    /* renamed from: g */
    final /* synthetic */ u6 f4226g;

    RunnableC1500e6(u6 u6Var, Bundle bundle) {
        this.f4226g = u6Var;
        this.f4225f = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u6 u6Var = this.f4226g;
        Bundle bundle = this.f4225f;
        u6Var.h();
        u6Var.j();
        C0931r.m3308k(bundle);
        C0931r.m3312g(bundle.getString("name"));
        if (!((l5) u6Var).a.k()) {
            ((l5) u6Var).a.c().w().m1570a("Conditional property not cleared since app measurement is disabled");
            return;
        }
        try {
            ((l5) u6Var).a.R().M(new b(bundle.getString("app_id"), bundle.getString("origin"), new p9(bundle.getString("name"), 0L, (Object) null, (String) null), bundle.getLong("creation_timestamp"), bundle.getBoolean("active"), bundle.getString("trigger_event_name"), (t) null, bundle.getLong("trigger_timeout"), (t) null, bundle.getLong("time_to_live"), ((l5) u6Var).a.G().J(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), bundle.getString("origin"), bundle.getLong("creation_timestamp"), true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
