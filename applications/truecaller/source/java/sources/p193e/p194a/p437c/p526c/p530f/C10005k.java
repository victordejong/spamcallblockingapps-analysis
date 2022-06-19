package p193e.p194a.p437c.p526c.p530f;

import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9921m0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9945s;
import s1.z.c.l;
/* renamed from: e.a.c.c.f.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/f/k.class */
public final class C10005k {

    /* renamed from: a */
    public final AbstractC9800d0 f29836a;

    /* renamed from: b */
    public final AbstractC9921m0 f29837b;

    /* renamed from: c */
    public final AbstractC9945s f29838c;

    @Inject
    public C10005k(AbstractC9800d0 abstractC9800d0, AbstractC9921m0 abstractC9921m0, AbstractC9945s abstractC9945s) {
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC9921m0, "stateDao");
        l.e(abstractC9945s, "enrichmentDao");
        this.f29836a = abstractC9800d0;
        this.f29837b = abstractC9921m0;
        this.f29838c = abstractC9945s;
    }
}
