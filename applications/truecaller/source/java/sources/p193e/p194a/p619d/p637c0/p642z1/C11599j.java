package p193e.p194a.p619d.p637c0.p642z1;

import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p619d.p637c0.AbstractC11394e;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11558b;
import p193e.p194a.p619d.p651p.AbstractC11744a;
import p193e.p194a.p619d.p655t.AbstractC11796a;
import p193e.p194a.p619d.p663x.p665r.AbstractC12284n;
import p193e.p194a.p619d.p663x.p665r.AbstractC12285o;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.z1.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/j.class */
public final class C11599j {

    /* renamed from: a */
    public final f f34004a;

    /* renamed from: b */
    public final AbstractC11556y0 f34005b;

    /* renamed from: c */
    public final AbstractC12284n f34006c;

    /* renamed from: d */
    public final AbstractC12285o f34007d;

    /* renamed from: e */
    public final AbstractC11394e f34008e;

    /* renamed from: f */
    public final a<AbstractC11744a> f34009f;

    /* renamed from: g */
    public final a<AbstractC11796a> f34010g;

    /* renamed from: h */
    public final AbstractC19222c f34011h;

    /* renamed from: i */
    public final a<AbstractC11558b> f34012i;

    /* renamed from: j */
    public final a<AbstractC11405f0> f34013j;

    @Inject
    public C11599j(@Named("IO") f fVar, AbstractC11556y0 abstractC11556y0, AbstractC12284n abstractC12284n, AbstractC12285o abstractC12285o, AbstractC11394e abstractC11394e, a<AbstractC11744a> aVar, a<AbstractC11796a> aVar2, AbstractC19222c abstractC19222c, a<AbstractC11558b> aVar3, a<AbstractC11405f0> aVar4) {
        l.e(fVar, "asyncContext");
        l.e(abstractC11556y0, "idProvider");
        l.e(abstractC12284n, "rtmLoginManager");
        l.e(abstractC12285o, "rtmManager");
        l.e(abstractC11394e, "callUserResolver");
        l.e(aVar, "restApi");
        l.e(aVar2, "voipDao");
        l.e(abstractC19222c, "clock");
        l.e(aVar3, "voipAvailabilityUtil");
        l.e(aVar4, "analyticsUtil");
        this.f34004a = fVar;
        this.f34005b = abstractC11556y0;
        this.f34006c = abstractC12284n;
        this.f34007d = abstractC12285o;
        this.f34008e = abstractC11394e;
        this.f34009f = aVar;
        this.f34010g = aVar2;
        this.f34011h = abstractC19222c;
        this.f34012i = aVar3;
        this.f34013j = aVar4;
    }

    /* renamed from: a */
    public AbstractC11598i m24417a() {
        f fVar = this.f34004a;
        AbstractC11556y0 abstractC11556y0 = this.f34005b;
        AbstractC12284n abstractC12284n = this.f34006c;
        AbstractC12285o abstractC12285o = this.f34007d;
        AbstractC11394e abstractC11394e = this.f34008e;
        Object obj = this.f34009f.get();
        l.d(obj, "restApi.get()");
        AbstractC11744a abstractC11744a = (AbstractC11744a) obj;
        Object obj2 = this.f34010g.get();
        l.d(obj2, "voipDao.get()");
        AbstractC11796a abstractC11796a = (AbstractC11796a) obj2;
        AbstractC19222c abstractC19222c = this.f34011h;
        Object obj3 = this.f34012i.get();
        l.d(obj3, "voipAvailabilityUtil.get()");
        AbstractC11558b abstractC11558b = (AbstractC11558b) obj3;
        Object obj4 = this.f34013j.get();
        l.d(obj4, "analyticsUtil.get()");
        return new C11600k(fVar, abstractC11556y0, abstractC12284n, abstractC12285o, abstractC11394e, abstractC11744a, abstractC11796a, abstractC19222c, abstractC11558b, (AbstractC11405f0) obj4);
    }
}
