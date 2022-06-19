package p193e.p194a.p673d0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1410z4.AbstractC21881d;
import s1.z.c.l;
/* renamed from: e.a.d0.t0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/t0.class */
public final class C12556t0 extends AbstractC21765k {

    /* renamed from: b */
    public final String f36657b = "DisableBatteryOptimizationWorkAction";

    /* renamed from: c */
    public final AbstractC19022f0 f36658c;

    /* renamed from: d */
    public final AbstractC19230g f36659d;

    /* renamed from: e */
    public final AbstractC21881d f36660e;

    /* renamed from: f */
    public final AbstractC12555t f36661f;

    @Inject
    public C12556t0(AbstractC19022f0 abstractC19022f0, AbstractC19230g abstractC19230g, AbstractC21881d abstractC21881d, AbstractC12555t abstractC12555t) {
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC12555t, "callNotificationsManager");
        this.f36658c = abstractC19022f0;
        this.f36659d = abstractC19230g;
        this.f36660e = abstractC21881d;
        this.f36661f = abstractC12555t;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        this.f36661f.mo22882a();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f36657b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        boolean z = false;
        if (this.f36658c.mo14245a()) {
            z = false;
            if (!this.f36660e.getBoolean("never_ask_again_disable_ignore_battery_optimizations", false)) {
                z = false;
                if (!this.f36659d.mo13771z()) {
                    z = true;
                }
            }
        }
        return z;
    }
}
