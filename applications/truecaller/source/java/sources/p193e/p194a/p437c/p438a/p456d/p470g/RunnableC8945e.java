package p193e.p194a.p437c.p438a.p456d.p470g;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.insights.p168ui.financepage.view.FinanceActivity;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.g.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/g/e.class */
public final class RunnableC8945e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ FinanceActivity f27224a;

    public RunnableC8945e(FinanceActivity financeActivity) {
        this.f27224a = financeActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FinanceActivity financeActivity = this.f27224a;
        int i = FinanceActivity.f12754g;
        ConstraintLayout constraintLayout = financeActivity.m35197pa().f27360d;
        l.d(constraintLayout, "binding.emptyState");
        constraintLayout.setAlpha(1.0f);
    }
}
