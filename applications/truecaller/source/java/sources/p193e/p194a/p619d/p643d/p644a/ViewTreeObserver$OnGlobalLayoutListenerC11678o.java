package p193e.p194a.p619d.p643d.p644a;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.o */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/o.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC11678o implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ View f34247a;

    /* renamed from: b */
    public final /* synthetic */ VoipContactsActivity f34248b;

    public ViewTreeObserver$OnGlobalLayoutListenerC11678o(View view, VoipContactsActivity voipContactsActivity) {
        this.f34247a = view;
        this.f34248b = voipContactsActivity;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [android.content.Context, com.truecaller.voip.contacts.ui.VoipContactsActivity] */
    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f34247a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        int m13553f0 = C19291g.m13553f0(this.f34248b);
        VoipContactsActivity voipContactsActivity = this.f34248b;
        VoipContactsActivity.C4794c c4794c = VoipContactsActivity.f16301B;
        View view = voipContactsActivity.m34344sa().f51233h;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height = m13553f0;
        view.setLayoutParams(layoutParams);
        ConstraintLayout constraintLayout = this.f34248b.m34344sa().f51229d;
        l.d(constraintLayout, "binding.bottomSheet");
        CoordinatorLayout coordinatorLayout = this.f34248b.m34344sa().f51234i;
        l.d(coordinatorLayout, "binding.voipContactsContainer");
        constraintLayout.setMaxHeight(coordinatorLayout.getHeight() - m13553f0);
    }
}
