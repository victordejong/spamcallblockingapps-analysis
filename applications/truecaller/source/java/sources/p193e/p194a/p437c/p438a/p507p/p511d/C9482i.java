package p193e.p194a.p437c.p438a.p507p.p511d;

import com.huawei.hms.actions.SearchIntents;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9140i;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getSenderFilters$1", f = "InsightsSmartFeedViewModel.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/i.class */
public final class C9482i extends i implements q<String, Set<? extends AbstractC10836e>, d<? super C9140i>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28756e;

    /* renamed from: f */
    public /* synthetic */ Object f28757f;

    /* renamed from: g */
    public final /* synthetic */ InsightsSmartFeedViewModel f28758g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9482i(InsightsSmartFeedViewModel insightsSmartFeedViewModel, d dVar) {
        super(3, dVar);
        this.f28758g = insightsSmartFeedViewModel;
    }

    /* renamed from: h */
    public final Object m27523h(Object obj, Object obj2, Object obj3) {
        String str = (String) obj;
        Set set = (Set) obj2;
        d dVar = (d) obj3;
        l.e(str, SearchIntents.EXTRA_QUERY);
        l.e(set, "currentFilters");
        l.e(dVar, "continuation");
        InsightsSmartFeedViewModel insightsSmartFeedViewModel = this.f28758g;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return new C9140i(str, set, insightsSmartFeedViewModel.f12909f, false);
    }

    /* renamed from: s */
    public final Object m27522s(Object obj) {
        C25225a.m3932a3(obj);
        return new C9140i((String) this.f28756e, (Set) this.f28757f, this.f28758g.f12909f, false);
    }
}
