package p193e.p194a.p437c.p438a.p456d.p470g;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.insights.p168ui.financepage.view.FinanceActivity;
import java.util.List;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p438a.p456d.p457a.p458c.C8877e;
import p193e.p194a.p437c.p438a.p493l.C9234a;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.g.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/c.class */
public final class C8943c<T> implements AbstractC27012l0<List<? extends C9234a>> {

    /* renamed from: a */
    public final /* synthetic */ FinanceActivity f27222a;

    public C8943c(FinanceActivity financeActivity) {
        this.f27222a = financeActivity;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(List<? extends C9234a> list) {
        List<? extends C9234a> list2 = list;
        if (list2.isEmpty()) {
            C8877e c8877e = this.f27222a.f12759e;
            if (c8877e == null) {
                l.l("selectedFiltersAdapter");
                throw null;
            }
            c8877e.submitList(list2);
            ConstraintLayout constraintLayout = this.f27222a.m35197pa().f27362f.f27439b;
            l.d(constraintLayout, "binding.filtersContainer.selectedFiltersVG");
            C19286f.m13689O(constraintLayout);
            return;
        }
        FinanceActivity financeActivity = this.f27222a;
        int i = FinanceActivity.f12754g;
        ConstraintLayout constraintLayout2 = financeActivity.m35197pa().f27362f.f27439b;
        l.d(constraintLayout2, "binding.filtersContainer.selectedFiltersVG");
        C19286f.m13684T(constraintLayout2);
        C8877e c8877e2 = this.f27222a.f12759e;
        if (c8877e2 != null) {
            c8877e2.submitList(list2);
        } else {
            l.l("selectedFiltersAdapter");
            throw null;
        }
    }
}
