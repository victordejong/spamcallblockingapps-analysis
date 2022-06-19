package p193e.p194a.p437c.p438a.p507p.p513e;

import androidx.activity.result.ActivityResult;
import com.mopub.common.Constants;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.Objects;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.e.i */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/i.class */
public final class C9516i<O> implements AbstractC25373a<ActivityResult> {

    /* renamed from: a */
    public final /* synthetic */ C9507f f28850a;

    public C9516i(C9507f c9507f) {
        this.f28850a = c9507f;
    }

    @Override // p1727n3.p1728a.p1730e.AbstractC25373a
    /* renamed from: a */
    public void mo3695a(ActivityResult activityResult) {
        ActivityResult activityResult2 = activityResult;
        l.d(activityResult2, "result");
        boolean z = activityResult2.f76a == -1;
        if (z) {
            C9507f c9507f = this.f28850a;
            s1.a.l[] lVarArr = C9507f.f28829m;
            c9507f.m27487SA();
        }
        C9507f c9507f2 = this.f28850a;
        s1.a.l[] lVarArr2 = C9507f.f28829m;
        InsightsSmartFeedViewModel m27488RA = c9507f2.m27488RA();
        Objects.requireNonNull(m27488RA);
        l.e("default_sms", "eventCategory");
        m27488RA.m35154e("default_sms", "click", z ? "granted" : Constants.TAS_DENIED);
    }
}
