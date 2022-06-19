package p193e.p194a.p619d.p643d.p644a;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout$f;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import java.util.Objects;
import p1727n3.p1807k.p1821i.AbstractC26609n;
import p1727n3.p1807k.p1821i.C26568d0;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/k.class */
public final class C11674k implements AbstractC26609n {

    /* renamed from: a */
    public final /* synthetic */ VoipContactsActivity f34243a;

    public C11674k(VoipContactsActivity voipContactsActivity) {
        this.f34243a = voipContactsActivity;
    }

    @Override // p1727n3.p1807k.p1821i.AbstractC26609n
    /* renamed from: b */
    public final C26568d0 mo1532b(View view, C26568d0 c26568d0) {
        VoipContactsActivity voipContactsActivity = this.f34243a;
        VoipContactsActivity.C4794c c4794c = VoipContactsActivity.f16301B;
        ConstraintLayout constraintLayout = voipContactsActivity.m34344sa().f51231f;
        l.d(constraintLayout, "binding.callButtonContainer");
        ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
        l.d(c26568d0, "insets");
        ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout$f) layoutParams)).bottomMargin = c26568d0.m1664c();
        constraintLayout.setLayoutParams(layoutParams);
        return C26568d0.f74426b;
    }
}
