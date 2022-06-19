package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9140i;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getSenderFilters$$inlined$flatMapLatest$1", f = "InsightsSmartFeedViewModel.kt", l = {219}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.h */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/h.class */
public final class C9481h extends i implements q<g<? super List<? extends C9141j>>, C9140i, d<? super s>, Object> {

    /* renamed from: e */
    public int f28752e;

    /* renamed from: f */
    public /* synthetic */ Object f28753f;

    /* renamed from: g */
    public /* synthetic */ Object f28754g;

    /* renamed from: h */
    public final /* synthetic */ InsightsSmartFeedViewModel f28755h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9481h(d dVar, InsightsSmartFeedViewModel insightsSmartFeedViewModel) {
        super(3, dVar);
        this.f28755h = insightsSmartFeedViewModel;
    }

    /* renamed from: h */
    public Object m27525h(Object obj, Object obj2, Object obj3) {
        C9481h c9481h = new C9481h((d) obj3, this.f28755h);
        c9481h.f28753f = (g) obj;
        c9481h.f28754g = obj2;
        return c9481h.m27524s(s.a);
    }

    /* renamed from: s */
    public final Object m27524s(Object obj) {
        a aVar = a.a;
        int i = this.f28752e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f28753f;
            f<List<? extends C9141j>> m27874c = this.f28755h.f12921r.m27874c((C9140i) this.f28754g);
            this.f28752e = 1;
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
