package p193e.p194a.p619d.p657v.p658k;

import com.huawei.hms.push.constant.RemoteMessageConst;
import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import q3.a.i0;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.h0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/h0.class */
public final class C11918h0 implements i0, AbstractC11893d0 {

    /* renamed from: a */
    public int f34999a;

    /* renamed from: b */
    public final i0 f35000b;

    /* renamed from: c */
    public final String f35001c;

    /* renamed from: d */
    public final AbstractC12236h f35002d;

    /* renamed from: e */
    public final AbstractC11405f0 f35003e;

    @Inject
    public C11918h0(i0 i0Var, String str, AbstractC12236h abstractC12236h, AbstractC11405f0 abstractC11405f0) {
        l.e(i0Var, "coroutineScope");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(abstractC12236h, "rtcManager");
        l.e(abstractC11405f0, "analyticsUtil");
        this.f35000b = i0Var;
        this.f35001c = str;
        this.f35002d = abstractC12236h;
        this.f35003e = abstractC11405f0;
        d.x2(new u0(new C11907f0(new C11898e0(abstractC12236h.mo23401a())), new C11914g0(this, null)), this);
    }

    public f getCoroutineContext() {
        return this.f35000b.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11893d0
    /* renamed from: l */
    public void mo23832l(Long l) {
        synchronized (this) {
            if (l == null) {
                return;
            }
            int size = this.f35002d.mo23394h().size();
            synchronized (this) {
                if (size > this.f34999a) {
                    this.f34999a = size;
                }
                this.f35003e.mo24713f(true, this.f35001c, l.longValue(), Integer.valueOf(this.f34999a + 1));
            }
        }
    }
}
