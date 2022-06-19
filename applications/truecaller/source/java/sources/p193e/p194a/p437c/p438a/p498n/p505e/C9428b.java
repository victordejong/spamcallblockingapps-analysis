package p193e.p194a.p437c.p438a.p498n.p505e;

import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.insights.p168ui.reminders.view.RemindersActivity;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.s;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.c.a.n.e.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/e/b.class */
public final /* synthetic */ class C9428b extends j implements l<Boolean, s> {
    public C9428b(RemindersActivity remindersActivity) {
        super(1, remindersActivity, RemindersActivity.class, "setupEmptyState", "setupEmptyState(Z)V", 0);
    }

    /* renamed from: d */
    public Object m27572d(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        RemindersActivity remindersActivity = (RemindersActivity) ((b) this).b;
        int i = RemindersActivity.f12896e;
        ConstraintLayout constraintLayout = remindersActivity.m35158pa().f27449d;
        s1.z.c.l.d(constraintLayout, "binding.emptyState");
        C19286f.m13683U(constraintLayout, booleanValue);
        if (booleanValue) {
            FrameLayout frameLayout = remindersActivity.m35158pa().f27450e;
            s1.z.c.l.d(frameLayout, "binding.remindersContainer");
            C19286f.m13687Q(frameLayout);
        } else {
            FrameLayout frameLayout2 = remindersActivity.m35158pa().f27450e;
            s1.z.c.l.d(frameLayout2, "binding.remindersContainer");
            C19286f.m13684T(frameLayout2);
        }
        return s.a;
    }
}
