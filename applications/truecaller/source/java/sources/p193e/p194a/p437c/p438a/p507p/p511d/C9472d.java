package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9132a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getCategoryTags$1", f = "InsightsSmartFeedViewModel.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/d.class */
public final class C9472d extends i implements q<Set<? extends AbstractC10836e>, Boolean, d<? super C9132a>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28732e;

    /* renamed from: f */
    public /* synthetic */ boolean f28733f;

    /* renamed from: g */
    public final /* synthetic */ InsightsSmartFeedViewModel f28734g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9472d(InsightsSmartFeedViewModel insightsSmartFeedViewModel, d dVar) {
        super(3, dVar);
        this.f28734g = insightsSmartFeedViewModel;
    }

    /* renamed from: h */
    public final Object m27538h(Object obj, Object obj2, Object obj3) {
        Set set = (Set) obj;
        boolean booleanValue = ((Boolean) obj2).booleanValue();
        d dVar = (d) obj3;
        l.e(set, "currentFilters");
        l.e(dVar, "continuation");
        InsightsSmartFeedViewModel insightsSmartFeedViewModel = this.f28734g;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return new C9132a(5, booleanValue, set, insightsSmartFeedViewModel.f12909f);
    }

    /* renamed from: s */
    public final Object m27537s(Object obj) {
        C25225a.m3932a3(obj);
        return new C9132a(5, this.f28733f, (Set) this.f28732e, this.f28734g.f12909f);
    }
}
