package p193e.p194a.p786g0.p788j;

import com.amazon.device.ads.DTBMetricsConfiguration;
import e.m.d.y.n;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p786g0.p788j.AbstractC14377j;
import p193e.p194a.p786g0.p792n.AbstractC14407a;
import s1.z.c.l;
/* renamed from: e.a.g0.j.k */
/* loaded from: classes14-dex2jar.jar:e/a/g0/j/k.class */
public final class C14382k implements AbstractC14377j {

    /* renamed from: a */
    public final AbstractC19462a f41516a;

    /* renamed from: b */
    public final AbstractC14407a f41517b;

    /* renamed from: c */
    public final AbstractC19222c f41518c;

    /* renamed from: d */
    public final AbstractC19230g f41519d;

    /* renamed from: e */
    public final AbstractC12597c f41520e;

    @Inject
    public C14382k(AbstractC19462a abstractC19462a, AbstractC14407a abstractC14407a, AbstractC19222c abstractC19222c, AbstractC19230g abstractC19230g, AbstractC12597c abstractC12597c) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC14407a, "settings");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        this.f41516a = abstractC19462a;
        this.f41517b = abstractC14407a;
        this.f41518c = abstractC19222c;
        this.f41519d = abstractC19230g;
        this.f41520e = abstractC12597c;
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: a */
    public void mo20162a() {
        n.B0(new C14368a(), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: b */
    public void mo20161b() {
        n.B0(new C14371d(this.f41519d.mo13787j(), this.f41519d.mo13776u(), this.f41520e.mo22842b(AbstractC12603e.C12604a.f36737c), this.f41520e.mo22842b(AbstractC12603e.C12605b.f36738c)), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: c */
    public void mo20160c() {
        n.B0(new C14375h(), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: d */
    public void mo20159d() {
        n.B0(new C14369b(), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: e */
    public void mo20158e(AbstractC12603e abstractC12603e) {
        l.e(abstractC12603e, "engine");
        Long l = this.f41517b.getLong("urtt-05", -1L);
        l.d(l, "settings.getLong(Suspens…PTCHA_TRIGGERED_TIME, -1)");
        n.B0(new C14372e(abstractC12603e, this.f41518c.mo13819c() - l.longValue()), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: f */
    public void mo20157f() {
        n.B0(new C14383l(), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: g */
    public void mo20156g(AbstractC12603e abstractC12603e, AbstractC14377j.AbstractC14378a abstractC14378a) {
        l.e(abstractC12603e, "engine");
        n.B0(new C14370c(abstractC12603e, m20152k(abstractC14378a)), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: h */
    public void mo20155h(AbstractC14377j.AbstractC14378a abstractC14378a) {
        n.B0(new C14374g(m20152k(abstractC14378a)), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: i */
    public void mo20154i() {
        n.B0(new C14376i(), this.f41516a);
    }

    @Override // p193e.p194a.p786g0.p788j.AbstractC14377j
    /* renamed from: j */
    public void mo20153j(AbstractC12603e abstractC12603e) {
        l.e(abstractC12603e, "engine");
        Long l = this.f41517b.getLong("urtt-05", -1L);
        if (l != null && l.longValue() == -1) {
            this.f41517b.putLong("urtt-05", this.f41518c.mo13819c());
        }
        n.B0(new C14373f(abstractC12603e), this.f41516a);
    }

    /* renamed from: k */
    public final String m20152k(AbstractC14377j.AbstractC14378a abstractC14378a) {
        String str;
        if (l.a(abstractC14378a, AbstractC14377j.AbstractC14378a.C14379a.f41513a)) {
            str = "ConnectionError";
        } else if (l.a(abstractC14378a, AbstractC14377j.AbstractC14378a.C14380b.f41514a)) {
            str = "EmailError";
        } else {
            str = "Unknown";
            if (abstractC14378a instanceof AbstractC14377j.AbstractC14378a.C14381c) {
                String str2 = ((AbstractC14377j.AbstractC14378a.C14381c) abstractC14378a).f41515a;
                str = "Unknown";
                if (str2 != null) {
                    str = str2;
                }
            }
        }
        return str;
    }
}
