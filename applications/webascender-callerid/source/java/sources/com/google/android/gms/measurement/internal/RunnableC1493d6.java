package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.d6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d6.class */
final class RunnableC1493d6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ Bundle f4211f;

    /* renamed from: g */
    final /* synthetic */ u6 f4212g;

    RunnableC1493d6(u6 u6Var, Bundle bundle) {
        this.f4212g = u6Var;
        this.f4211f = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u6 u6Var = this.f4212g;
        Bundle bundle = this.f4211f;
        u6Var.h();
        u6Var.j();
        C0931r.m3308k(bundle);
        String string = bundle.getString("name");
        String string2 = bundle.getString("origin");
        C0931r.m3312g(string);
        C0931r.m3312g(string2);
        C0931r.m3308k(bundle.get("value"));
        if (!((l5) u6Var).a.k()) {
            ((l5) u6Var).a.c().w().m1570a("Conditional property not set since app measurement is disabled");
            return;
        }
        p9 p9Var = new p9(string, bundle.getLong("triggered_timestamp"), bundle.get("value"), string2);
        try {
            t J = ((l5) u6Var).a.G().J(bundle.getString("app_id"), bundle.getString("triggered_event_name"), bundle.getBundle("triggered_event_params"), string2, 0L, true, false);
            ((l5) u6Var).a.R().M(new b(bundle.getString("app_id"), string2, p9Var, bundle.getLong("creation_timestamp"), false, bundle.getString("trigger_event_name"), ((l5) u6Var).a.G().J(bundle.getString("app_id"), bundle.getString("timed_out_event_name"), bundle.getBundle("timed_out_event_params"), string2, 0L, true, false), bundle.getLong("trigger_timeout"), J, bundle.getLong("time_to_live"), ((l5) u6Var).a.G().J(bundle.getString("app_id"), bundle.getString("expired_event_name"), bundle.getBundle("expired_event_params"), string2, 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }
}
