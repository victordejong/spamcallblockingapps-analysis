package p193e.p194a.p673d0;

import androidx.work.ListenableWorker;
import e.a.r.t.c;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p851h5.AbstractC14965w;
import s1.z.c.l;
/* renamed from: e.a.d0.x0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/x0.class */
public final class C12573x0 extends AbstractC21765k {

    /* renamed from: b */
    public final a<C20592g> f36699b;

    /* renamed from: c */
    public final AbstractC19854f<AbstractC12555t> f36700c;

    /* renamed from: d */
    public final AbstractC8432l f36701d;

    /* renamed from: e */
    public final AbstractC19230g f36702e;

    /* renamed from: f */
    public final AbstractC19219a0 f36703f;

    /* renamed from: g */
    public final AbstractC14965w f36704g;

    /* renamed from: h */
    public final AbstractC21881d f36705h;

    /* renamed from: i */
    public final C8601l0 f36706i;

    @Inject
    public C12573x0(a<C20592g> aVar, AbstractC19854f<AbstractC12555t> abstractC19854f, AbstractC8432l abstractC8432l, AbstractC19230g abstractC19230g, AbstractC19219a0 abstractC19219a0, AbstractC14965w abstractC14965w, AbstractC21881d abstractC21881d, C8601l0 c8601l0) {
        l.e(aVar, "featuresRegistry");
        l.e(abstractC19854f, "notificationsManager");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC14965w, "tcPermissionUtil");
        l.e(abstractC21881d, "generalSettings");
        l.e(c8601l0, "timestampUtil");
        this.f36699b = aVar;
        this.f36700c = abstractC19854f;
        this.f36701d = abstractC8432l;
        this.f36702e = abstractC19230g;
        this.f36703f = abstractC19219a0;
        this.f36704g = abstractC14965w;
        this.f36705h = abstractC21881d;
        this.f36706i = c8601l0;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        boolean mo13822k = this.f36703f.mo13822k();
        boolean z = this.f36702e.mo13780q() >= 30 && !this.f36702e.mo13779r();
        boolean mo19348i = this.f36704g.mo19348i();
        if ((!mo13822k) || z) {
            this.f36700c.mo11854a().mo22880c();
            this.f36705h.putLong("permissionNotificationShownTimestamp", this.f36706i.m28258c());
        } else if (true ^ mo19348i) {
            this.f36700c.mo11854a().mo22878e();
            this.f36705h.putLong("permissionNotificationShownTimestamp", this.f36706i.m28258c());
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return "RolePermissionWorkAction";
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        boolean z;
        if (c.ya() && this.f36701d.mo28580d()) {
            C20592g c20592g = (C20592g) this.f36699b.get();
            if (c20592g.f57982n.m10941a(c20592g, C20592g.f57695p6[10]).isEnabled()) {
                if (this.f36706i.m28260a(this.f36705h.getLong("permissionNotificationShownTimestamp", -1L), this.f36705h.getLong("permissionNotificationCooldownSeconds", 10800L), TimeUnit.SECONDS)) {
                    z = true;
                    return z;
                }
            }
        }
        z = false;
        return z;
    }
}
