package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes-dex2jar.jar:androidx/transition/Slide.class */
public class Slide extends Visibility {

    /* renamed from: R */
    private static final TimeInterpolator f5190R = new DecelerateInterpolator();

    /* renamed from: S */
    private static final TimeInterpolator f5191S = new AccelerateInterpolator();

    /* renamed from: T */
    private static final CalculateSlide f5192T = new CalculateSlideHorizontal() { // from class: androidx.transition.Slide.1
        @Override // androidx.transition.Slide.CalculateSlide
        /* renamed from: b */
        public float mo16790b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() - viewGroup.getWidth();
        }
    };

    /* renamed from: U */
    private static final CalculateSlide f5193U = new CalculateSlideHorizontal() { // from class: androidx.transition.Slide.2
        @Override // androidx.transition.Slide.CalculateSlide
        /* renamed from: b */
        public float mo16790b(ViewGroup viewGroup, View view) {
            boolean z = true;
            if (ViewCompat.m19244A(viewGroup) != 1) {
                z = false;
            }
            return z ? view.getTranslationX() + viewGroup.getWidth() : view.getTranslationX() - viewGroup.getWidth();
        }
    };

    /* renamed from: V */
    private static final CalculateSlide f5194V = new CalculateSlideVertical() { // from class: androidx.transition.Slide.3
        @Override // androidx.transition.Slide.CalculateSlide
        /* renamed from: a */
        public float mo16791a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() - viewGroup.getHeight();
        }
    };

    /* renamed from: W */
    private static final CalculateSlide f5195W = new CalculateSlideHorizontal() { // from class: androidx.transition.Slide.4
        @Override // androidx.transition.Slide.CalculateSlide
        /* renamed from: b */
        public float mo16790b(ViewGroup viewGroup, View view) {
            return view.getTranslationX() + viewGroup.getWidth();
        }
    };

    /* renamed from: X */
    private static final CalculateSlide f5196X = new CalculateSlideHorizontal() { // from class: androidx.transition.Slide.5
        @Override // androidx.transition.Slide.CalculateSlide
        /* renamed from: b */
        public float mo16790b(ViewGroup viewGroup, View view) {
            boolean z = true;
            if (ViewCompat.m19244A(viewGroup) != 1) {
                z = false;
            }
            return z ? view.getTranslationX() - viewGroup.getWidth() : view.getTranslationX() + viewGroup.getWidth();
        }
    };

    /* renamed from: Y */
    private static final CalculateSlide f5197Y = new CalculateSlideVertical() { // from class: androidx.transition.Slide.6
        @Override // androidx.transition.Slide.CalculateSlide
        /* renamed from: a */
        public float mo16791a(ViewGroup viewGroup, View view) {
            return view.getTranslationY() + viewGroup.getHeight();
        }
    };

    /* renamed from: Q */
    private CalculateSlide f5198Q = f5197Y;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$CalculateSlide.class */
    public interface CalculateSlide {
        /* renamed from: a */
        float mo16791a(ViewGroup viewGroup, View view);

        /* renamed from: b */
        float mo16790b(ViewGroup viewGroup, View view);
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$CalculateSlideHorizontal.class */
    private static abstract class CalculateSlideHorizontal implements CalculateSlide {
        private CalculateSlideHorizontal() {
        }

        @Override // androidx.transition.Slide.CalculateSlide
        /* renamed from: a */
        public float mo16791a(ViewGroup viewGroup, View view) {
            return view.getTranslationY();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$CalculateSlideVertical.class */
    private static abstract class CalculateSlideVertical implements CalculateSlide {
        private CalculateSlideVertical() {
        }

        @Override // androidx.transition.Slide.CalculateSlide
        /* renamed from: b */
        public float mo16790b(ViewGroup viewGroup, View view) {
            return view.getTranslationX();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/transition/Slide$GravityFlag.class */
    public @interface GravityFlag {
    }

    public Slide() {
        m16792x0(80);
    }

    @SuppressLint({"RestrictedApi"})
    public Slide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.f5204f);
        int g = TypedArrayUtils.m19596g(obtainStyledAttributes, (XmlPullParser) attributeSet, "slideEdge", 0, 80);
        obtainStyledAttributes.recycle();
        m16792x0(g);
    }

    /* renamed from: p0 */
    private void m16793p0(TransitionValues transitionValues) {
        int[] iArr = new int[2];
        transitionValues.f5272b.getLocationOnScreen(iArr);
        transitionValues.f5271a.put("android:slide:screenPosition", iArr);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        super.mo8628i(transitionValues);
        m16793p0(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        super.mo8627m(transitionValues);
        m16793p0(transitionValues);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: s0 */
    public Animator mo8587s0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.f5271a.get("android:slide:screenPosition");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        return TranslationAnimationCreator.m16712a(view, transitionValues2, iArr[0], iArr[1], this.f5198Q.mo16790b(viewGroup, view), this.f5198Q.mo16791a(viewGroup, view), translationX, translationY, f5190R, this);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: u0 */
    public Animator mo8586u0(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.f5271a.get("android:slide:screenPosition");
        return TranslationAnimationCreator.m16712a(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f5198Q.mo16790b(viewGroup, view), this.f5198Q.mo16791a(viewGroup, view), f5191S, this);
    }

    /* renamed from: x0 */
    public void m16792x0(int i) {
        if (i == 3) {
            this.f5198Q = f5192T;
        } else if (i == 5) {
            this.f5198Q = f5195W;
        } else if (i == 48) {
            this.f5198Q = f5194V;
        } else if (i == 80) {
            this.f5198Q = f5197Y;
        } else if (i == 8388611) {
            this.f5198Q = f5193U;
        } else if (i == 8388613) {
            this.f5198Q = f5196X;
        } else {
            throw new IllegalArgumentException("Invalid slide direction");
        }
        SidePropagation sidePropagation = new SidePropagation();
        sidePropagation.m16794j(i);
        mo16732l0(sidePropagation);
    }
}
