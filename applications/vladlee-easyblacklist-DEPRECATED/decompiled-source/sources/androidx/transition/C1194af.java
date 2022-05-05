package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.widget.ImageView;
import androidx.transition.C1200al;
/* renamed from: androidx.transition.af */
/* loaded from: classes-dex2jar.jar:androidx/transition/af.class */
final class C1194af extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ImageView f5193a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1194af(ImageView imageView) {
        this.f5193a = imageView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ImageView.ScaleType scaleType = (ImageView.ScaleType) this.f5193a.getTag(C1200al.C1201a.f5205e);
        this.f5193a.setScaleType(scaleType);
        this.f5193a.setTag(C1200al.C1201a.f5205e, null);
        if (scaleType == ImageView.ScaleType.MATRIX) {
            ImageView imageView = this.f5193a;
            imageView.setImageMatrix((Matrix) imageView.getTag(C1200al.C1201a.f5203c));
            this.f5193a.setTag(C1200al.C1201a.f5203c, null);
        }
        animator.removeListener(this);
    }
}
