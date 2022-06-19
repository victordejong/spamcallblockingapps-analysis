package p193e.p194a.p982k0.p989n.p991b;

import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import com.truecaller.callrecording.C3624R;
/* renamed from: e.a.k0.n.b.g */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/g.class */
public class C16371g extends C16370f {

    /* renamed from: d */
    public boolean f46041d = false;

    /* renamed from: e */
    public boolean f46042e = false;

    /* renamed from: f */
    public boolean f46043f = false;

    public C16371g(Context context) {
        super(context);
    }

    /* renamed from: a */
    public final void m17500a(int i) {
        if (!isInEditMode()) {
            AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(getContext(), i);
            animatorSet.setTarget(getChildAt(0));
            animatorSet.start();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f46042e = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f46042e = false;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (this.f46042e && i != getVisibility()) {
            if (i == 0) {
                m17500a(C3624R.animator.bubble_trash_shown_animator);
            } else {
                m17500a(C3624R.animator.bubble_trash_hide_animator);
            }
        }
        super.setVisibility(i);
    }
}
