package p193e.p194a.p437c.p438a.p514q.p516b;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p437c.p438a.p479i.AbstractC9117k;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p579q.C10512i;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.q.b.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/a.class */
public final class C9538a extends AbstractC9117k<s, C10512i> {

    /* renamed from: b */
    public final AbstractC10497d f28884b;

    /* renamed from: c */
    public final f f28885c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9538a(AbstractC10497d abstractC10497d, @Named("IO") f fVar) {
        super(fVar);
        l.e(abstractC10497d, "insightsUiManager");
        l.e(fVar, "ioContext");
        this.f28884b = abstractC10497d;
        this.f28885c = fVar;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9117k
    /* renamed from: a */
    public C10512i mo27466a() {
        return new C10512i(0L, 0L);
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9117k
    /* renamed from: b */
    public Object mo27465b(s sVar, d<? super C10512i> dVar) {
        return this.f28884b.mo25855C(dVar);
    }
}
