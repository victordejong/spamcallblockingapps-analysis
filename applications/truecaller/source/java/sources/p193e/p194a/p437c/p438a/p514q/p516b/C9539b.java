package p193e.p194a.p437c.p438a.p514q.p516b;

import com.truecaller.insights.p168ui.models.AdapterItem;
import javax.inject.Named;
import p1727n3.p1868v.C27010k0;
import p1727n3.p1909z.AbstractC27603v;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.q.b.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/b.class */
public final class C9539b extends AbstractC27603v.AbstractC27605b<Long, AdapterItem> {

    /* renamed from: a */
    public final C9554f f28886a;

    /* renamed from: b */
    public final f f28887b;

    /* renamed from: c */
    public final C9538a f28888c;

    /* renamed from: d */
    public final C27010k0<Boolean> f28889d;

    public C9539b(C9554f c9554f, @Named("IO") f fVar, C9538a c9538a, C27010k0<Boolean> c27010k0) {
        l.e(c9554f, "updatesPageFlowUseCase");
        l.e(fVar, "ioContext");
        l.e(c9538a, "updatesBoundaryUseCase");
        l.e(c27010k0, "emptyStateLv");
        this.f28886a = c9554f;
        this.f28887b = fVar;
        this.f28888c = c9538a;
        this.f28889d = c27010k0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [e.a.c.a.q.b.e, n3.z.v<java.lang.Long, com.truecaller.insights.ui.models.AdapterItem>] */
    @Override // p1727n3.p1909z.AbstractC27603v.AbstractC27605b
    /* renamed from: a */
    public AbstractC27603v<Long, AdapterItem> mo20a() {
        return new C9542e(this.f28886a, this.f28887b, this.f28888c, this.f28889d);
    }
}
