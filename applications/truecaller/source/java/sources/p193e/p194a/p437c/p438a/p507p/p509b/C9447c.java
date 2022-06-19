package p193e.p194a.p437c.p438a.p507p.p509b;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p438a.p507p.p510c.C9466e;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$insertUpcomingSectionSeparators$1", f = "GetInsightsSmartFeedUseCase.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.b.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/b/c.class */
public final class C9447c extends i implements q<AbstractC9460d, AbstractC9460d, d<? super AbstractC9460d>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28666e;

    /* renamed from: f */
    public /* synthetic */ Object f28667f;

    /* renamed from: g */
    public final /* synthetic */ Set f28668g;

    /* renamed from: h */
    public final /* synthetic */ C9466e f28669h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9447c(Set set, C9466e c9466e, d dVar) {
        super(3, dVar);
        this.f28668g = set;
        this.f28669h = c9466e;
    }

    /* renamed from: h */
    public final Object m27559h(Object obj, Object obj2, Object obj3) {
        AbstractC9460d.C9464d c9464d;
        AbstractC9460d abstractC9460d = (AbstractC9460d) obj;
        AbstractC9460d abstractC9460d2 = (AbstractC9460d) obj2;
        d dVar = (d) obj3;
        l.e(dVar, "continuation");
        Set set = this.f28668g;
        C9466e c9466e = this.f28669h;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        if (!l.a(abstractC9460d, new AbstractC9460d.C9462b("Upcoming")) || !(abstractC9460d2 instanceof AbstractC9460d.C9462b) || !(!set.isEmpty())) {
            if ((abstractC9460d instanceof AbstractC9460d.C9465e) && (abstractC9460d2 instanceof AbstractC9460d.C9462b)) {
                if (c9466e.f28711b) {
                    c9464d = new AbstractC9460d.C9463c(c9466e.f28712c);
                } else if (!set.isEmpty()) {
                    c9464d = new AbstractC9460d.C9464d(s1.u.i.S0(set), c9466e.f28712c);
                }
            }
            c9464d = null;
        } else {
            c9464d = new AbstractC9460d.C9464d(s1.u.i.S0(set), c9466e.f28712c);
        }
        return c9464d;
    }

    /* renamed from: s */
    public final Object m27558s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC9460d abstractC9460d = (AbstractC9460d) this.f28666e;
        AbstractC9460d abstractC9460d2 = (AbstractC9460d) this.f28667f;
        if (!l.a(abstractC9460d, new AbstractC9460d.C9462b("Upcoming")) || !(abstractC9460d2 instanceof AbstractC9460d.C9462b) || !(!this.f28668g.isEmpty())) {
            AbstractC9460d.C9463c c9463c = null;
            if (abstractC9460d instanceof AbstractC9460d.C9465e) {
                c9463c = null;
                if (abstractC9460d2 instanceof AbstractC9460d.C9462b) {
                    C9466e c9466e = this.f28669h;
                    if (c9466e.f28711b) {
                        c9463c = new AbstractC9460d.C9463c(c9466e.f28712c);
                    } else {
                        c9463c = null;
                        if (!this.f28668g.isEmpty()) {
                            c9463c = new AbstractC9460d.C9464d(s1.u.i.S0(this.f28668g), this.f28669h.f28712c);
                        }
                    }
                }
            }
            return c9463c;
        }
        return new AbstractC9460d.C9464d(s1.u.i.S0(this.f28668g), this.f28669h.f28712c);
    }
}
