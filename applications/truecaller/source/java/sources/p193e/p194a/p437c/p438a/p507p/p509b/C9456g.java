package p193e.p194a.p437c.p438a.p507p.p509b;

import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1909z.C27555b2;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p438a.p507p.p510c.C9466e;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p606w.p607o0.p608k.C10832a;
import p193e.p194a.p437c.p606w.p607o0.p608k.C10834c;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.b.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/b/g.class */
public final class C9456g extends AbstractC9107c<C9466e, C27555b2<AbstractC9460d>> {

    /* renamed from: b */
    public final AbstractC10497d f28693b;

    /* renamed from: c */
    public final f f28694c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9456g(AbstractC10497d abstractC10497d, @Named("IO") f fVar) {
        super(fVar);
        l.e(abstractC10497d, "insightsUiBridge");
        l.e(fVar, "ioContext");
        this.f28693b = abstractC10497d;
        this.f28694c = fVar;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public C27555b2<AbstractC9460d> mo27441a() {
        C27555b2.C27556b c27556b = C27555b2.f77623e;
        C27555b2 c27555b2 = C27555b2.f77622d;
        Objects.requireNonNull(c27555b2, "null cannot be cast to non-null type androidx.paging.PagingData<T>");
        return c27555b2;
    }

    /* renamed from: d */
    public q3.a.x2.f<C27555b2<AbstractC9460d>> mo27440b(C9466e c9466e) {
        l.e(c9466e, "input");
        C10834c c10834c = new C10834c(C10480a.m26025R1(c9466e.f28713d));
        return new C9452e(new C9448d(this.f28693b.mo25846w(new C10832a(c9466e.f28710a, c10834c)), this, i.d1(C10480a.m26050L0(c10834c.f32182a))), this, c9466e);
    }
}
