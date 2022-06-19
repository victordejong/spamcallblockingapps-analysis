package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9132a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9133b;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getCategoryTags$$inlined$flatMapLatest$1", f = "InsightsSmartFeedViewModel.kt", l = {219}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/c.class */
public final class C9471c extends i implements q<g<? super C9133b>, C9132a, d<? super s>, Object> {

    /* renamed from: e */
    public int f28728e;

    /* renamed from: f */
    public /* synthetic */ Object f28729f;

    /* renamed from: g */
    public /* synthetic */ Object f28730g;

    /* renamed from: h */
    public final /* synthetic */ InsightsSmartFeedViewModel f28731h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9471c(d dVar, InsightsSmartFeedViewModel insightsSmartFeedViewModel) {
        super(3, dVar);
        this.f28731h = insightsSmartFeedViewModel;
    }

    /* renamed from: h */
    public Object m27540h(Object obj, Object obj2, Object obj3) {
        C9471c c9471c = new C9471c((d) obj3, this.f28731h);
        c9471c.f28729f = (g) obj;
        c9471c.f28730g = obj2;
        return c9471c.m27539s(s.a);
    }

    /* renamed from: s */
    public final Object m27539s(Object obj) {
        a aVar = a.a;
        int i = this.f28728e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f28729f;
            f<C9133b> m27874c = this.f28731h.f12920q.m27874c((C9132a) this.f28730g);
            this.f28728e = 1;
            if (s1.a.a.a.v0.f.d.H0(gVar, m27874c, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return s.a;
    }
}
