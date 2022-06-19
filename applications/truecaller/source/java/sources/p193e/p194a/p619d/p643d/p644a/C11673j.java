package p193e.p194a.p619d.p643d.p644a;

import android.view.View;
import android.widget.Button;
import com.google.android.material.bottomsheet.BottomSheetBehavior$d;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.truecaller.voip.contacts.p188ui.VoipContactsActivity;
import com.truecaller.voip.contacts.p188ui.VoipContactsMvp$VoipBottomSheetState;
import p193e.p194a.p1059m3.C18160g;
import s1.z.c.l;
/* renamed from: e.a.d.d.a.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/j.class */
public final class C11673j extends BottomSheetBehavior$d {

    /* renamed from: a */
    public final /* synthetic */ VoipContactsActivity f34242a;

    public C11673j(VoipContactsActivity voipContactsActivity) {
        this.f34242a = voipContactsActivity;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior$d
    /* renamed from: a */
    public void mo24294a(View view, float f) {
        l.e(view, "bottomSheet");
        VoipContactsActivity voipContactsActivity = this.f34242a;
        int i = (f > 0 ? 1 : (f == 0 ? 0 : -1));
        float f2 = i >= 0 ? f : 0.0f;
        VoipContactsActivity.C4794c c4794c = VoipContactsActivity.f16301B;
        voipContactsActivity.m34339xa(f2);
        float interpolation = this.f34242a.f16323u.getInterpolation(i >= 0 ? 1.0f : 1 - Math.abs(f));
        C18160g m34344sa = this.f34242a.m34344sa();
        View view2 = m34344sa.f51227b;
        l.d(view2, "backgroundView");
        view2.setAlpha(interpolation);
        View view3 = m34344sa.f51228c;
        l.d(view3, "bottomShadowView");
        view3.setAlpha(interpolation);
        FloatingActionButton floatingActionButton = m34344sa.f51232g;
        l.d(floatingActionButton, "fabGroupCall");
        floatingActionButton.setAlpha(interpolation);
        Button button = m34344sa.f51230e;
        l.d(button, "buttonCreateGroupCall");
        button.setAlpha(interpolation);
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior$d
    /* renamed from: b */
    public void mo24293b(View view, int i) {
        VoipContactsMvp$VoipBottomSheetState voipContactsMvp$VoipBottomSheetState;
        l.e(view, "bottomSheet");
        if (i == 1) {
            voipContactsMvp$VoipBottomSheetState = VoipContactsMvp$VoipBottomSheetState.DRAGGING;
        } else if (i == 3) {
            voipContactsMvp$VoipBottomSheetState = VoipContactsMvp$VoipBottomSheetState.EXPANDED;
        } else if (i == 4) {
            voipContactsMvp$VoipBottomSheetState = VoipContactsMvp$VoipBottomSheetState.COLLAPSED;
        } else if (i != 5) {
            return;
        } else {
            voipContactsMvp$VoipBottomSheetState = VoipContactsMvp$VoipBottomSheetState.HIDDEN;
        }
        String str = "Bottom sheet state changed " + i + " | " + voipContactsMvp$VoipBottomSheetState;
        this.f34242a.m34340wa().mo24233f3(voipContactsMvp$VoipBottomSheetState);
    }
}
