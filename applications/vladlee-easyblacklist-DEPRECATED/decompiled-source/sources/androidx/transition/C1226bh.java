package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.view.View;
import androidx.transition.C1200al;
/* renamed from: androidx.transition.bh */
/* loaded from: classes-dex2jar.jar:androidx/transition/bh.class */
final class C1226bh {

    /* renamed from: androidx.transition.bh$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/bh$a.class */
    private static final class C1227a extends AnimatorListenerAdapter {

        /* renamed from: a */
        private final View f5252a;

        /* renamed from: b */
        private final View f5253b;

        /* renamed from: c */
        private final int f5254c;

        /* renamed from: d */
        private final int f5255d;

        /* renamed from: e */
        private int[] f5256e;

        /* renamed from: f */
        private float f5257f;

        /* renamed from: g */
        private float f5258g;

        /* renamed from: h */
        private final float f5259h;

        /* renamed from: i */
        private final float f5260i;

        C1227a(View view, View view2, int i, int i2, float f, float f2) {
            this.f5253b = view;
            this.f5252a = view2;
            this.f5254c = i - Math.round(this.f5253b.getTranslationX());
            this.f5255d = i2 - Math.round(this.f5253b.getTranslationY());
            this.f5259h = f;
            this.f5260i = f2;
            this.f5256e = (int[]) this.f5252a.getTag(C1200al.C1201a.f5208h);
            if (this.f5256e != null) {
                this.f5252a.setTag(C1200al.C1201a.f5208h, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            if (this.f5256e == null) {
                this.f5256e = new int[2];
            }
            this.f5256e[0] = Math.round(this.f5254c + this.f5253b.getTranslationX());
            this.f5256e[1] = Math.round(this.f5255d + this.f5253b.getTranslationY());
            this.f5252a.setTag(C1200al.C1201a.f5208h, this.f5256e);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            this.f5253b.setTranslationX(this.f5259h);
            this.f5253b.setTranslationY(this.f5260i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationPause(Animator animator) {
            this.f5257f = this.f5253b.getTranslationX();
            this.f5258g = this.f5253b.getTranslationY();
            this.f5253b.setTranslationX(this.f5259h);
            this.f5253b.setTranslationY(this.f5260i);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public final void onAnimationResume(Animator animator) {
            this.f5253b.setTranslationX(this.f5257f);
            this.f5253b.setTranslationY(this.f5258g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Animator m6535a(View view, C1224bf bfVar, int i, int i2, float f, float f2, float f3, float f4, TimeInterpolator timeInterpolator) {
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) bfVar.f5246b.getTag(C1200al.C1201a.f5208h);
        if (iArr != null) {
            f = (iArr[0] - i) + translationX;
            f2 = (iArr[1] - i2) + translationY;
        }
        int round = Math.round(f - translationX);
        int round2 = Math.round(f2 - translationY);
        view.setTranslationX(f);
        view.setTranslationY(f2);
        if (f == f3 && f2 == f4) {
            return null;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat(View.TRANSLATION_X, f, f3), PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, f2, f4));
        C1227a aVar = new C1227a(view, bfVar.f5246b, i + round, i2 + round2, translationX, translationY);
        ofPropertyValuesHolder.addListener(aVar);
        C1187a.m6559a(ofPropertyValuesHolder, aVar);
        ofPropertyValuesHolder.setInterpolator(timeInterpolator);
        return ofPropertyValuesHolder;
    }
}
