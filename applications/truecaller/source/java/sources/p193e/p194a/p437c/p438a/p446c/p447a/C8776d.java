package p193e.p194a.p437c.p438a.p446c.p447a;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.insights.p168ui.important.view.BusinessInsightsFragment;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p438a.p439a.p440a.C8684c;
import p193e.p194a.p437c.p438a.p477g.C9051m0;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.a.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/a/d.class */
public final class C8776d<T> implements AbstractC27012l0<List<? extends AdapterItem>> {

    /* renamed from: a */
    public final /* synthetic */ BusinessInsightsFragment f26782a;

    public C8776d(BusinessInsightsFragment businessInsightsFragment) {
        this.f26782a = businessInsightsFragment;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(List<? extends AdapterItem> list) {
        boolean z;
        List<? extends AdapterItem> list2 = list;
        C8684c c8684c = this.f26782a.f12811e;
        if (c8684c == null) {
            l.l("insightsAdapter");
            throw null;
        }
        c8684c.submitList(list2);
        BusinessInsightsFragment businessInsightsFragment = this.f26782a;
        Objects.requireNonNull(businessInsightsFragment);
        if (list2 != null) {
            if (!list2.isEmpty()) {
                Iterator<T> it = list2.iterator();
                while (true) {
                    z = false;
                    if (it.hasNext()) {
                        if (((AdapterItem) it.next()) instanceof AdapterItem.C4114f) {
                            z = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            } else {
                z = false;
            }
            if (z) {
                C9051m0 c9051m0 = businessInsightsFragment.m35184PA().f27433b;
                l.d(c9051m0, "binding.footer");
                ConstraintLayout constraintLayout = c9051m0.f27533a;
                l.d(constraintLayout, "binding.footer.root");
                C19286f.m13689O(constraintLayout);
                BusinessInsightsFragment.m35185OA(this.f26782a);
            }
        }
        C9051m0 c9051m02 = businessInsightsFragment.m35184PA().f27433b;
        l.d(c9051m02, "binding.footer");
        ConstraintLayout constraintLayout2 = c9051m02.f27533a;
        l.d(constraintLayout2, "binding.footer.root");
        C19286f.m13684T(constraintLayout2);
        BusinessInsightsFragment.m35185OA(this.f26782a);
    }
}
