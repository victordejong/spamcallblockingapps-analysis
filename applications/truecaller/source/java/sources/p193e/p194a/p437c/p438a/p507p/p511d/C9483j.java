package p193e.p194a.p437c.p438a.p507p.p511d;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getSenderFilters$3", f = "InsightsSmartFeedViewModel.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/j.class */
public final class C9483j extends i implements p<List<? extends C9141j>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f28759e;

    /* renamed from: f */
    public final /* synthetic */ InsightsSmartFeedViewModel f28760f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9483j(InsightsSmartFeedViewModel insightsSmartFeedViewModel, d dVar) {
        super(2, dVar);
        this.f28760f = insightsSmartFeedViewModel;
    }

    /* renamed from: i */
    public final d<s> m27521i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C9483j c9483j = new C9483j(this.f28760f, dVar);
        c9483j.f28759e = obj;
        return c9483j;
    }

    /* renamed from: k */
    public final Object m27520k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        InsightsSmartFeedViewModel insightsSmartFeedViewModel = this.f28760f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        List list = (List) obj;
        if (insightsSmartFeedViewModel.f12905b) {
            if (!list.isEmpty()) {
                insightsSmartFeedViewModel.m35153f(AnalyticsConstants.SUCCESS, null);
            }
            insightsSmartFeedViewModel.f12905b = false;
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m27519s(Object obj) {
        C25225a.m3932a3(obj);
        List list = (List) this.f28759e;
        if (this.f28760f.f12905b) {
            if (!list.isEmpty()) {
                this.f28760f.m35153f(AnalyticsConstants.SUCCESS, null);
            }
            this.f28760f.f12905b = false;
        }
        return s.a;
    }
}
