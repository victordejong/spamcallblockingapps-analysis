package p193e.p194a.p619d.p643d.p644a;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.p */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/p.class */
public final class RunnableC11679p implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ VoipContactsActivity.C4806o f34249a;

    public RunnableC11679p(VoipContactsActivity.C4806o c4806o) {
        this.f34249a = c4806o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = VoipContactsActivity.this.f16311i;
        if (bottomSheetBehavior != null) {
            bottomSheetBehavior.M(4);
        } else {
            l.l("bottomSheetBehavior");
            throw null;
        }
    }
}
