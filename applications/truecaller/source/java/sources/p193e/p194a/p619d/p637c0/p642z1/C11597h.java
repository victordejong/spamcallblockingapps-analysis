package p193e.p194a.p619d.p637c0.p642z1;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p619d.p637c0.AbstractC11394e;
import p193e.p194a.p619d.p651p.AbstractC11744a;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.c0.z1.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/h.class */
public final class C11597h implements AbstractC11594f {

    /* renamed from: a */
    public final f f34000a;

    /* renamed from: b */
    public final AbstractC11394e f34001b;

    /* renamed from: c */
    public final AbstractC11744a f34002c;

    /* renamed from: d */
    public final AbstractC8432l f34003d;

    @Inject
    public C11597h(@Named("IO") f fVar, AbstractC11394e abstractC11394e, AbstractC11744a abstractC11744a, AbstractC8432l abstractC8432l) {
        l.e(fVar, "ioContext");
        l.e(abstractC11394e, "callUserResolver");
        l.e(abstractC11744a, "restApi");
        l.e(abstractC8432l, "truecallerAccountManager");
        this.f34000a = fVar;
        this.f34001b = abstractC11394e;
        this.f34002c = abstractC11744a;
        this.f34003d = abstractC8432l;
    }
}
