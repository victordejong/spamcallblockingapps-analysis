package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/transition/Explode.class */
public class Explode extends Visibility {

    /* renamed from: R */
    private static final TimeInterpolator f5139R = new DecelerateInterpolator();

    /* renamed from: S */
    private static final TimeInterpolator f5140S = new AccelerateInterpolator();

    /* renamed from: Q */
    private int[] f5141Q;

    public Explode() {
        this.f5141Q = new int[2];
        mo16732l0(new CircularPropagation());
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5141Q = new int[2];
        mo16732l0(new CircularPropagation());
    }

    /* renamed from: p0 */
    private void m16856p0(TransitionValues transitionValues) {
        View view = transitionValues.f5272b;
        view.getLocationOnScreen(this.f5141Q);
        int[] iArr = this.f5141Q;
        int i = iArr[0];
        int i2 = iArr[1];
        transitionValues.f5271a.put("android:explode:screenBounds", new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    /* renamed from: x0 */
    private static float m16855x0(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    /* renamed from: y0 */
    private static float m16854y0(View view, int i, int i2) {
        return m16855x0(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }

    /* renamed from: z0 */
    private void m16853z0(View view, Rect rect, int[] iArr) {
        int i;
        int i2;
        view.getLocationOnScreen(this.f5141Q);
        int[] iArr2 = this.f5141Q;
        int i3 = iArr2[0];
        int i4 = iArr2[1];
        Rect u = m16759u();
        if (u == null) {
            i2 = (view.getWidth() / 2) + i3 + Math.round(view.getTranslationX());
            i = (view.getHeight() / 2) + i4 + Math.round(view.getTranslationY());
        } else {
            i2 = u.centerX();
            i = u.centerY();
        }
        float centerX = rect.centerX() - i2;
        float centerY = rect.centerY() - i;
        float f = centerX;
        float f2 = centerY;
        if (centerX == 0.0f) {
            f = centerX;
            f2 = centerY;
            if (centerY == 0.0f) {
                f = ((float) (Math.random() * 2.0d)) - 1.0f;
                f2 = ((float) (Math.random() * 2.0d)) - 1.0f;
            }
        }
        float x0 = m16855x0(f, f2);
        float f3 = f / x0;
        float f4 = f2 / x0;
        float y0 = m16854y0(view, i2 - i3, i - i4);
        iArr[0] = Math.round(f3 * y0);
        iArr[1] = Math.round(y0 * f4);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        super.mo8628i(transitionValues);
        m16856p0(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        super.mo8627m(transitionValues);
        m16856p0(transitionValues);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: s0 */
    public Animator mo8587s0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues2.f5271a.get("android:explode:screenBounds");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        m16853z0(viewGroup, rect, this.f5141Q);
        int[] iArr = this.f5141Q;
        return TranslationAnimationCreator.m16712a(view, transitionValues2, rect.left, rect.top, translationX + iArr[0], translationY + iArr[1], translationX, translationY, f5139R, this);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: u0 */
    public Animator mo8586u0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f;
        float f2;
        if (transitionValues == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues.f5271a.get("android:explode:screenBounds");
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.f5272b.getTag(C0542R.C0545id.transition_position);
        if (iArr != null) {
            f2 = (iArr[0] - rect.left) + translationX;
            f = (iArr[1] - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f2 = translationX;
            f = translationY;
        }
        m16853z0(viewGroup, rect, this.f5141Q);
        int[] iArr2 = this.f5141Q;
        return TranslationAnimationCreator.m16712a(view, transitionValues, i, i2, translationX, translationY, f2 + iArr2[0], f + iArr2[1], f5140S, this);
    }
}
