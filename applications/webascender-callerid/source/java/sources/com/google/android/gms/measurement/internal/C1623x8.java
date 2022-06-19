package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ea;
/* renamed from: com.google.android.gms.measurement.internal.x8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x8.class */
final class C1623x8 {

    /* renamed from: a */
    final /* synthetic */ y8 f4582a;

    C1623x8(y8 y8Var) {
        this.f4582a = y8Var;
    }

    /* renamed from: a */
    final void m1491a() {
        this.f4582a.h();
        if (((l5) this.f4582a).a.A().w(((l5) this.f4582a).a.a().m3166b())) {
            ((l5) this.f4582a).a.A().q.m1494b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance != 100) {
                return;
            }
            ((l5) this.f4582a).a.c().w().m1570a("Detected application was in foreground");
            m1489c(((l5) this.f4582a).a.a().m3166b(), false);
        }
    }

    /* renamed from: b */
    final void m1490b(long j, boolean z) {
        this.f4582a.h();
        y8.q(this.f4582a);
        if (((l5) this.f4582a).a.A().w(j)) {
            ((l5) this.f4582a).a.A().q.m1494b(true);
        }
        ((l5) this.f4582a).a.A().t.m1483b(j);
        if (((l5) this.f4582a).a.A().q.m1495a()) {
            m1489c(j, z);
        }
    }

    /* renamed from: c */
    final void m1489c(long j, boolean z) {
        this.f4582a.h();
        if (!((l5) this.f4582a).a.k()) {
            return;
        }
        ((l5) this.f4582a).a.A().t.m1483b(j);
        ((l5) this.f4582a).a.c().w().m1569b("Session started, time", Long.valueOf(((l5) this.f4582a).a.a().m3165c()));
        Long valueOf = Long.valueOf(j / 1000);
        ((l5) this.f4582a).a.F().p("auto", "_sid", valueOf, j);
        ((l5) this.f4582a).a.A().q.m1494b(false);
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", valueOf.longValue());
        if (((l5) this.f4582a).a.z().w((String) null, C1470a3.f4110j0) && z) {
            bundle.putLong("_aib", 1L);
        }
        ((l5) this.f4582a).a.F().Y("auto", "_s", j, bundle);
        ea.a();
        if (!((l5) this.f4582a).a.z().w((String) null, C1470a3.f4120o0)) {
            return;
        }
        String m1701a = ((l5) this.f4582a).a.A().y.m1701a();
        if (TextUtils.isEmpty(m1701a)) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("_ffr", m1701a);
        ((l5) this.f4582a).a.F().Y("auto", "_ssr", j, bundle2);
    }
}
