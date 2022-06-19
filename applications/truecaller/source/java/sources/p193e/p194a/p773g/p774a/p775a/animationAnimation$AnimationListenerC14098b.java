package p193e.p194a.p773g.p774a.p775a;

import android.view.animation.Animation;
import com.truecaller.acs.p131ui.popup.AfterCallPopupActivity;
/* renamed from: e.a.g.a.a.b */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/a/b.class */
public final class animationAnimation$AnimationListenerC14098b implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPopupActivity f40752a;

    public animationAnimation$AnimationListenerC14098b(AfterCallPopupActivity afterCallPopupActivity) {
        this.f40752a = afterCallPopupActivity;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.truecaller.acs.ui.popup.AfterCallPopupActivity, android.app.Activity] */
    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        animationAnimation$AnimationListenerC14098b.super.finish();
        this.f40752a.overridePendingTransition(0, 0);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
