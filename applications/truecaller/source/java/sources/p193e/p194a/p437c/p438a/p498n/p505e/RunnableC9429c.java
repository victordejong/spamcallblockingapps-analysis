package p193e.p194a.p437c.p438a.p498n.p505e;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.insights.p168ui.reminders.view.RemindersActivity;
import s1.z.c.l;
/* renamed from: e.a.c.a.n.e.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/e/c.class */
public final class RunnableC9429c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RemindersActivity f28636a;

    public RunnableC9429c(RemindersActivity remindersActivity) {
        this.f28636a = remindersActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RemindersActivity remindersActivity = this.f28636a;
        int i = RemindersActivity.f12896e;
        ConstraintLayout constraintLayout = remindersActivity.m35158pa().f27449d;
        l.d(constraintLayout, "binding.emptyState");
        constraintLayout.setAlpha(1.0f);
    }
}
