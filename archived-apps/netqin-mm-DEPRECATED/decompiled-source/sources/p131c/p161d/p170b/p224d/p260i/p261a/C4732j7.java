package p131c.p161d.p170b.p224d.p260i.p261a;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzms;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzjx;
/* renamed from: c.d.b.d.i.a.j7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/j7.class */
public final class C4732j7 {

    /* renamed from: a */
    public final /* synthetic */ zzjx f17200a;

    public C4732j7(zzjx zzjxVar) {
        this.f17200a = zzjxVar;
    }

    /* renamed from: a */
    public final void m24934a() {
        this.f17200a.mo9085c();
        if (this.f17200a.m24898g().m24928a(this.f17200a.mo8779z().mo17091b())) {
            this.f17200a.m24898g().f17224r.m9132a(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.f17200a.mo8789p().m9144y().m9143a("Detected application was in foreground");
                m24932b(this.f17200a.mo8779z().mo17091b(), false);
            }
        }
    }

    /* renamed from: a */
    public final void m24933a(long j, boolean z) {
        this.f17200a.mo9085c();
        this.f17200a.m8853y();
        if (this.f17200a.m24898g().m24928a(j)) {
            this.f17200a.m24898g().f17224r.m9132a(true);
        }
        this.f17200a.m24898g().f17227u.m9130a(j);
        if (this.f17200a.m24898g().f17224r.m9133a()) {
            m24932b(j, z);
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    public final void m24932b(long j, boolean z) {
        this.f17200a.mo9085c();
        if (this.f17200a.f17262a.m9058c()) {
            this.f17200a.m24898g().f17227u.m9130a(j);
            this.f17200a.mo8789p().m9144y().m9142a("Session started, time", Long.valueOf(this.f17200a.mo8779z().mo17092a()));
            Long valueOf = Long.valueOf(j / 1000);
            this.f17200a.m24887l().m8971a("auto", "_sid", valueOf, j);
            this.f17200a.m24898g().f17224r.m9132a(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", valueOf.longValue());
            if (this.f17200a.m24897h().m9354a(zzas.f29878k0) && z) {
                bundle.putLong("_aib", 1L);
            }
            this.f17200a.m24887l().m8977a("auto", "_s", j, bundle);
            if (zzms.m9512a() && this.f17200a.m24897h().m9354a(zzas.f29888p0)) {
                String a = this.f17200a.m24898g().f17232z.m9126a();
                if (!TextUtils.isEmpty(a)) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("_ffr", a);
                    this.f17200a.m24887l().m8977a("auto", "_ssr", j, bundle2);
                }
            }
        }
    }
}
