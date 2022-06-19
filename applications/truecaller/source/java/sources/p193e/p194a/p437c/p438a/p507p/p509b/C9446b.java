package p193e.p194a.p437c.p438a.p507p.p509b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9459c;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p578p.C10480a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$insertSectionHeaderSeparators$1", f = "GetInsightsSmartFeedUseCase.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.b.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/b/b.class */
public final class C9446b extends i implements q<AbstractC9460d, AbstractC9460d, d<? super AbstractC9460d>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28664e;

    /* renamed from: f */
    public /* synthetic */ Object f28665f;

    public C9446b(d dVar) {
        super(3, dVar);
    }

    /* renamed from: h */
    public final Object m27561h(Object obj, Object obj2, Object obj3) {
        d dVar = (d) obj3;
        l.e(dVar, "continuation");
        C9446b c9446b = new C9446b(dVar);
        c9446b.f28664e = (AbstractC9460d) obj;
        c9446b.f28665f = (AbstractC9460d) obj2;
        return c9446b.m27560s(s.a);
    }

    /* renamed from: s */
    public final Object m27560s(Object obj) {
        AbstractC9460d.C9462b c9462b;
        C25225a.m3932a3(obj);
        AbstractC9460d abstractC9460d = (AbstractC9460d) this.f28664e;
        AbstractC9460d abstractC9460d2 = (AbstractC9460d) this.f28665f;
        if (abstractC9460d2 == null) {
            c9462b = null;
        } else if (abstractC9460d == null && (abstractC9460d2 instanceof AbstractC9460d.C9465e)) {
            c9462b = new AbstractC9460d.C9462b("Upcoming");
        } else if ((abstractC9460d == null || (abstractC9460d instanceof AbstractC9460d.C9465e)) && (abstractC9460d2 instanceof AbstractC9460d.C9461a)) {
            c9462b = new AbstractC9460d.C9462b(C10480a.m25866z0((AbstractC9459c) abstractC9460d2));
        } else {
            c9462b = null;
            if (abstractC9460d != null) {
                c9462b = null;
                if (abstractC9460d instanceof AbstractC9460d.C9461a) {
                    l.e(abstractC9460d, "$this$isSmartFeedFromDifferentMonth");
                    c9462b = null;
                    if ((!(abstractC9460d instanceof AbstractC9459c) || !(abstractC9460d2 instanceof AbstractC9459c)) ? false : !l.a(((AbstractC9459c) abstractC9460d).mo27544a().A(), ((AbstractC9459c) abstractC9460d2).mo27544a().A())) {
                        c9462b = null;
                        if (abstractC9460d2 instanceof AbstractC9460d.C9461a) {
                            c9462b = new AbstractC9460d.C9462b(C10480a.m25866z0((AbstractC9459c) abstractC9460d2));
                        }
                    }
                }
            }
        }
        return c9462b;
    }
}
