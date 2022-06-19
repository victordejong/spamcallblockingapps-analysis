package p193e.p194a.p437c.p438a.p456d.p470g;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.truecaller.common.p156ui.tablayout.TabLayoutX;
import com.truecaller.insights.p168ui.financepage.view.FinanceActivity;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.g.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/d.class */
public final class C8944d<T> implements AbstractC27012l0<T> {

    /* renamed from: a */
    public final /* synthetic */ FinanceActivity f27223a;

    public C8944d(FinanceActivity financeActivity) {
        this.f27223a = financeActivity;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public final void onChanged(T t) {
        boolean booleanValue = ((Boolean) t).booleanValue();
        FinanceActivity financeActivity = this.f27223a;
        int i = FinanceActivity.f12754g;
        ConstraintLayout constraintLayout = financeActivity.m35197pa().f27360d;
        l.d(constraintLayout, "binding.emptyState");
        C19286f.m13683U(constraintLayout, booleanValue);
        ViewPager2 viewPager2 = financeActivity.m35197pa().f27366j;
        l.d(viewPager2, "binding.viewPager");
        boolean z = !booleanValue;
        C19286f.m13683U(viewPager2, z);
        TabLayoutX tabLayoutX = financeActivity.m35197pa().f27365i;
        l.d(tabLayoutX, "binding.tabs");
        C19286f.m13683U(tabLayoutX, z);
        ExtendedFloatingActionButton extendedFloatingActionButton = financeActivity.m35197pa().f27361e;
        l.d(extendedFloatingActionButton, "binding.filterFab");
        C19286f.m13683U(extendedFloatingActionButton, z);
    }
}
