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
    public static final String PROPNAME_BOUNDS = "android:clipBounds:bounds";
    public static final String PROPNAME_CLIP = "android:clipBounds:clip";
    public static final String[] sTransitionProperties = {PROPNAME_CLIP};

    public ChangeClipBounds() {
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view.getVisibility() != 8) {
            Rect clipBounds = ViewCompat.getClipBounds(view);
            transitionValues.values.put(PROPNAME_CLIP, clipBounds);
            if (clipBounds == null) {
                transitionValues.values.put(PROPNAME_BOUNDS, new Rect(0, 0, view.getWidth(), view.getHeight()));
            }
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        Rect rect;
        Rect rect2;
        ObjectAnimator objectAnimator = null;
        if (transitionValues != null) {
            objectAnimator = null;
            if (transitionValues2 != null) {
                objectAnimator = null;
                if (transitionValues.values.containsKey(PROPNAME_CLIP)) {
                    if (!transitionValues2.values.containsKey(PROPNAME_CLIP)) {
                        objectAnimator = null;
                    } else {
                        Rect rect3 = (Rect) transitionValues.values.get(PROPNAME_CLIP);
                        Rect rect4 = (Rect) transitionValues2.values.get(PROPNAME_CLIP);
                        boolean z = rect4 == null;
                        if (rect3 == null && rect4 == null) {
                            return null;
                        }
                        if (rect3 == null) {
                            rect2 = (Rect) transitionValues.values.get(PROPNAME_BOUNDS);
                            rect = rect4;
                        } else {
                            rect2 = rect3;
                            rect = rect4;
                            if (rect4 == null) {
                                rect = (Rect) transitionValues2.values.get(PROPNAME_BOUNDS);
                                rect2 = rect3;
                            }
                        }
                        if (rect2.equals(rect)) {
                            return null;
                        }
                        ViewCompat.setClipBounds(transitionValues2.view, rect2);
                        ObjectAnimator ofObject = ObjectAnimator.ofObject(transitionValues2.view, (Property<View, V>) ViewUtils.CLIP_BOUNDS, (TypeEvaluator) new RectEvaluator(new Rect()), (Object[]) new Rect[]{rect2, rect});
                        objectAnimator = ofObject;
                        if (z) {
                            final View view = transitionValues2.view;
                            ofObject.addListener(new AnimatorListenerAdapter() { // from class: androidx.transition.ChangeClipBounds.1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator animator) {
                                    ViewCompat.setClipBounds(view, null);
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

    @Override // androidx.transition.Transition
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }
}
