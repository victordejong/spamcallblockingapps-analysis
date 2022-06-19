package p193e.p194a.p682e.p699c2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import com.truecaller.p183ui.components.FeedbackItemView;
/* renamed from: e.a.e.c2.d0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/d0.class */
public class C13184d0 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ String f38301a;

    /* renamed from: b */
    public final /* synthetic */ Drawable f38302b;

    /* renamed from: c */
    public final /* synthetic */ FeedbackItemView f38303c;

    public C13184d0(FeedbackItemView feedbackItemView, String str, Drawable drawable) {
        this.f38303c = feedbackItemView;
        this.f38301a = str;
        this.f38302b = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f38303c.f15748c.setText(this.f38301a);
        this.f38303c.f15747b.setImageDrawable(this.f38302b);
    }
}
