package androidx.transition;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;
import androidx.transition.C1200al;
/* renamed from: androidx.transition.by */
/* loaded from: classes-dex2jar.jar:androidx/transition/by.class */
class C1245by {

    /* renamed from: a */
    private float[] f5293a;

    /* renamed from: a */
    public float mo6513a(View view) {
        Float f = (Float) view.getTag(C1200al.C1201a.f5204d);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    /* renamed from: a */
    public void mo6512a(View view, float f) {
        Float f2 = (Float) view.getTag(C1200al.C1201a.f5204d);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    /* renamed from: a */
    public void mo6511a(View view, int i, int i2, int i3, int i4) {
        view.setLeft(i);
        view.setTop(i2);
        view.setRight(i3);
        view.setBottom(i4);
    }

    /* renamed from: a */
    public void mo6510a(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo6510a(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    /* renamed from: b */
    public void mo6509b(View view) {
        if (view.getTag(C1200al.C1201a.f5204d) == null) {
            view.setTag(C1200al.C1201a.f5204d, Float.valueOf(view.getAlpha()));
        }
    }

    /* renamed from: b */
    public void mo6508b(View view, Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo6508b(view2, matrix);
            matrix.postTranslate(view2.getScrollX(), view2.getScrollY());
        }
        matrix.postTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            Matrix matrix3 = new Matrix();
            if (matrix2.invert(matrix3)) {
                matrix.postConcat(matrix3);
            }
        }
    }

    /* renamed from: c */
    public void mo6507c(View view) {
        if (view.getVisibility() == 0) {
            view.setTag(C1200al.C1201a.f5204d, null);
        }
    }

    /* renamed from: c */
    public void mo6506c(View view, Matrix matrix) {
        if (matrix == null || matrix.isIdentity()) {
            view.setPivotX(view.getWidth() / 2);
            view.setPivotY(view.getHeight() / 2);
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
            view.setScaleX(1.0f);
            view.setScaleY(1.0f);
            view.setRotation(0.0f);
            return;
        }
        float[] fArr = this.f5293a;
        float[] fArr2 = fArr;
        if (fArr == null) {
            fArr2 = new float[9];
            this.f5293a = fArr2;
        }
        matrix.getValues(fArr2);
        float f = fArr2[3];
        float sqrt = ((float) Math.sqrt(1.0f - (f * f))) * (fArr2[0] < 0.0f ? -1 : 1);
        float degrees = (float) Math.toDegrees(Math.atan2(f, sqrt));
        float f2 = fArr2[0] / sqrt;
        float f3 = fArr2[4] / sqrt;
        float f4 = fArr2[2];
        float f5 = fArr2[5];
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setTranslationX(f4);
        view.setTranslationY(f5);
        view.setRotation(degrees);
        view.setScaleX(f2);
        view.setScaleY(f3);
    }
}
