package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import p1727n3.p1868v.AbstractC27012l0;
import q3.a.x2.a1;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.d.n */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/n.class */
public final class C9487n<T> implements AbstractC27012l0<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ InsightsSmartFeedViewModel f28767a;

    public C9487n(InsightsSmartFeedViewModel insightsSmartFeedViewModel) {
        this.f28767a = insightsSmartFeedViewModel;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(Boolean bool) {
        Boolean bool2 = bool;
        a1<Boolean> a1Var = this.f28767a.f12908e;
        l.d(bool2, "isFinanceTrxHidden");
        a1Var.setValue(bool2);
    }
}
