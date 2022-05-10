package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Handler;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzjx;
/* renamed from: c.d.b.d.i.a.b7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/b7.class */
public final class C4655b7 {

    /* renamed from: a */
    public RunnableC4695f7 f16983a;

    /* renamed from: b */
    public final /* synthetic */ zzjx f16984b;

    public C4655b7(zzjx zzjxVar) {
        this.f16984b = zzjxVar;
    }

    /* renamed from: a */
    public final void m25107a() {
        Handler handler;
        this.f16984b.mo9085c();
        if (this.f16983a != null) {
            handler = this.f16984b.f30102c;
            handler.removeCallbacks(this.f16983a);
        }
        if (this.f16984b.m24897h().m9354a(zzas.f29900v0)) {
            this.f16984b.m24898g().f17229w.m9132a(false);
        }
    }

    /* renamed from: a */
    public final void m25106a(long j) {
        Handler handler;
        this.f16983a = new RunnableC4695f7(this, this.f16984b.mo8779z().mo17091b(), j);
        handler = this.f16984b.f30102c;
        handler.postDelayed(this.f16983a, 2000L);
    }
}
