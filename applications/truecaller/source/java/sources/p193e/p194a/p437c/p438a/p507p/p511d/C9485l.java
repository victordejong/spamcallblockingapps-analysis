package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27012l0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.C26994c0;
import p193e.p194a.p437c.p548h.AbstractC10254d;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.d.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/l.class */
public final class C9485l<T> implements AbstractC27012l0<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ InsightsSmartFeedViewModel f28764a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC26992b0 f28765b;

    public C9485l(InsightsSmartFeedViewModel insightsSmartFeedViewModel, AbstractC26992b0 abstractC26992b0) {
        this.f28764a = insightsSmartFeedViewModel;
        this.f28765b = abstractC26992b0;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(Boolean bool) {
        Boolean bool2 = bool;
        AbstractC27028u lifecycle = this.f28765b.getLifecycle();
        l.d(lifecycle, "lifecycleOwner.lifecycle");
        if (((C26994c0) lifecycle).f75501c == AbstractC27028u.EnumC27030b.RESUMED) {
            l.d(bool2, "isUpdated");
            if (bool2.booleanValue()) {
                this.f28764a.f12922s.mo26817t(false);
                return;
            }
        }
        AbstractC10254d abstractC10254d = this.f28764a.f12925v;
        l.d(bool2, "isUpdated");
        abstractC10254d.mo26527a(bool2.booleanValue(), 0);
    }
}
