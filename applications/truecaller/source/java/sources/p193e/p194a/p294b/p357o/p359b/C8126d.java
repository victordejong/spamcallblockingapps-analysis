package p193e.p194a.p294b.p357o.p359b;

import com.truecaller.bizmon.governmentServices.p145db.GovernmentServicesDb;
import e.m.e.k;
import java.net.URL;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8127a;
import p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8131c;
import p193e.p194a.p294b.p357o.p360c.p361a.AbstractC8137e;
import p193e.p194a.p294b.p370p.AbstractC8204c;
import q3.a.i0;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.b.o.b.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/b/d.class */
public final class C8126d implements AbstractC8118a, i0 {

    /* renamed from: a */
    public URL f25197a;

    /* renamed from: b */
    public final k f25198b;

    /* renamed from: c */
    public final C20592g f25199c;

    /* renamed from: d */
    public final AbstractC8127a f25200d;

    /* renamed from: e */
    public final AbstractC8137e f25201e;

    /* renamed from: f */
    public final AbstractC8131c f25202f;

    /* renamed from: g */
    public final AbstractC8204c f25203g;

    /* renamed from: h */
    public final GovernmentServicesDb f25204h;

    /* renamed from: i */
    public final f f25205i;

    @Inject
    public C8126d(k kVar, C20592g c20592g, AbstractC8127a abstractC8127a, AbstractC8137e abstractC8137e, AbstractC8131c abstractC8131c, AbstractC8204c abstractC8204c, GovernmentServicesDb governmentServicesDb, @Named("IO") f fVar) {
        l.e(kVar, "gson");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8127a, "contactDao");
        l.e(abstractC8137e, "stateDao");
        l.e(abstractC8131c, "districtDao");
        l.e(abstractC8204c, "bizMonSettings");
        l.e(governmentServicesDb, "database");
        l.e(fVar, "asyncContext");
        this.f25198b = kVar;
        this.f25199c = c20592g;
        this.f25200d = abstractC8127a;
        this.f25201e = abstractC8137e;
        this.f25202f = abstractC8131c;
        this.f25203g = abstractC8204c;
        this.f25204h = governmentServicesDb;
        this.f25205i = fVar;
    }

    public f getCoroutineContext() {
        return this.f25205i;
    }
}
