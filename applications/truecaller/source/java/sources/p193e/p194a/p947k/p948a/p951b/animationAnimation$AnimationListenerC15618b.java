package p193e.p194a.p947k.p948a.p951b;

import android.view.animation.Animation;
import com.truecaller.videocallerid.p187ui.fullscreenpopupvideo.FullScreenPopupVideoActivity;
/* renamed from: e.a.k.a.b.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/b/b.class */
public final class animationAnimation$AnimationListenerC15618b implements Animation.AnimationListener {

    /* renamed from: a */
    public final /* synthetic */ FullScreenPopupVideoActivity f44148a;

    public animationAnimation$AnimationListenerC15618b(FullScreenPopupVideoActivity fullScreenPopupVideoActivity) {
        this.f44148a = fullScreenPopupVideoActivity;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.truecaller.videocallerid.ui.fullscreenpopupvideo.FullScreenPopupVideoActivity, android.app.Activity] */
    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        animationAnimation$AnimationListenerC15618b.super.finish();
        this.f44148a.overridePendingTransition(0, 0);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
