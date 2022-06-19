package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import p1727n3.p1868v.AbstractC27012l0;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.d.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/m.class */
public final class C9486m<T> implements AbstractC27012l0<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ InsightsSmartFeedViewModel f28766a;

    public C9486m(InsightsSmartFeedViewModel insightsSmartFeedViewModel) {
        this.f28766a = insightsSmartFeedViewModel;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(Boolean bool) {
        Boolean bool2 = bool;
        l.d(bool2, "isOutdated");
        if (bool2.booleanValue()) {
            this.f28766a.f12906c.mo1001j(Boolean.TRUE);
            this.f28766a.f12922s.mo26843g(false);
        }
    }
}
