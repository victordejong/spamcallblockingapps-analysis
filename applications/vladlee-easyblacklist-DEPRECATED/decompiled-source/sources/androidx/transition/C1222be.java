package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import android.os.Build;
/* renamed from: androidx.transition.be */
/* loaded from: classes-dex2jar.jar:androidx/transition/be.class */
final class C1222be {

    /* renamed from: a */
    private static final boolean f5239a;

    /* renamed from: b */
    private static final boolean f5240b;

    /* renamed from: c */
    private static final boolean f5241c;

    /* renamed from: androidx.transition.be$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/be$a.class */
    static final class C1223a implements TypeEvaluator<Matrix> {

        /* renamed from: a */
        final float[] f5242a = new float[9];

        /* renamed from: b */
        final float[] f5243b = new float[9];

        /* renamed from: c */
        final Matrix f5244c = new Matrix();

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.f5242a);
            matrix2.getValues(this.f5243b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f5243b;
                float f2 = fArr[i];
                float[] fArr2 = this.f5242a;
                fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
            }
            this.f5244c.setValues(this.f5243b);
            return this.f5244c;
        }
    }

    static {
        boolean z = true;
        f5239a = Build.VERSION.SDK_INT >= 19;
        f5240b = Build.VERSION.SDK_INT >= 18;
        if (Build.VERSION.SDK_INT < 28) {
            z = false;
        }
        f5241c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Animator m6537a(Animator animator, Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01c2  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View m6536a(android.view.ViewGroup r7, android.view.View r8, android.view.View r9) {
        /*
            Method dump skipped, instructions count: 498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.C1222be.m6536a(android.view.ViewGroup, android.view.View, android.view.View):android.view.View");
    }
}
