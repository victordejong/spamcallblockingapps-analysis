package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeClipBounds.class */
public class ChangeClipBounds extends Transition {

    /* renamed from: O */
    private static final String[] f5101O = {"android:clipBounds:clip"};

    public ChangeClipBounds() {
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: p0 */
    private void m16885p0(TransitionValues transitionValues) {
        View view = transitionValues.f5272b;
        if (view.getVisibility() != 8) {
            Rect t = ViewCompat.m19172t(view);
            transitionValues.f5271a.put("android:clipBounds:clip", t);
            if (t == null) {
                transitionValues.f5271a.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo8629J() {
        return f5101O;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        m16885p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        m16885p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo8625q(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        Rect rect;
        Rect rect2;
        ObjectAnimator objectAnimator = null;
        if (transitionValues != null) {
            objectAnimator = null;
            if (transitionValues2 != null) {
                objectAnimator = null;
                if (transitionValues.f5271a.containsKey("android:clipBounds:clip")) {
                    if (!transitionValues2.f5271a.containsKey("android:clipBounds:clip")) {
                        objectAnimator = null;
                    } else {
                        Rect rect3 = (Rect) transitionValues.f5271a.get("android:clipBounds:clip");
                        Rect rect4 = (Rect) transitionValues2.f5271a.get("android:clipBounds:clip");
                        boolean z = rect4 == null;
                        if (rect3 == null && rect4 == null) {
                            return null;
                        }
                        if (rect3 == null) {
                            rect = (Rect) transitionValues.f5271a.get("android:clipBounds:bounds");
                            rect2 = rect4;
                        } else {
                            rect = rect3;
                            rect2 = rect4;
                            if (rect4 == null) {
                                rect2 = (Rect) transitionValues2.f5271a.get("android:clipBounds:bounds");
                                rect = rect3;
                            }
                        }
                        if (rect.equals(rect2)) {
                            return null;
                        }
                        ViewCompat.m19171t0(transitionValues2.f5272b, rect);
                        ObjectAnimator ofObject = ObjectAnimator.ofObject(transitionValues2.f5272b, (Property<View, V>) ViewUtils.f5305c, (TypeEvaluator) new RectEvaluator(new Rect()), (Object[]) new Rect[]{rect, rect2});
                        objectAnimator = ofObject;
                        if (z) {
                            final View view = transitionValues2.f5272b;
                            ofObject.addListener(new AnimatorListenerAdapter(this) { // from class: androidx.transition.ChangeClipBounds.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    ViewCompat.m19171t0(view, null);
                                }
                            });
                            objectAnimator = ofObject;
                        }
                    }
                }
            }
        }
        return objectAnimator;
    }
}
