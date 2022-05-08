package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewUtilsBase.class */
class ViewUtilsBase {

    /* renamed from: b */
    private static Method f5312b;

    /* renamed from: c */
    private static boolean f5313c;

    /* renamed from: d */
    private static Field f5314d;

    /* renamed from: e */
    private static boolean f5315e;

    /* renamed from: a */
    private float[] f5316a;

    @SuppressLint({"PrivateApi"})
    /* renamed from: b */
    private void m16675b() {
        if (!f5313c) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("setFrame", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f5312b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsBase", "Failed to retrieve setFrame method", e);
            }
            f5313c = true;
        }
    }

    /* renamed from: a */
    public void mo16676a(@NonNull View view) {
        if (view.getVisibility() == 0) {
            view.setTag(C0542R.C0545id.save_non_transition_alpha, null);
        }
    }

    /* renamed from: c */
    public float mo16674c(@NonNull View view) {
        Float f = (Float) view.getTag(C0542R.C0545id.save_non_transition_alpha);
        return f != null ? view.getAlpha() / f.floatValue() : view.getAlpha();
    }

    /* renamed from: d */
    public void mo16673d(@NonNull View view) {
        if (view.getTag(C0542R.C0545id.save_non_transition_alpha) == null) {
            view.setTag(C0542R.C0545id.save_non_transition_alpha, Float.valueOf(view.getAlpha()));
        }
    }

    /* renamed from: e */
    public void mo16672e(@NonNull View view, @Nullable Matrix matrix) {
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
        float[] fArr = this.f5316a;
        float[] fArr2 = fArr;
        if (fArr == null) {
            fArr2 = new float[9];
            this.f5316a = fArr2;
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

    /* renamed from: f */
    public void mo16671f(@NonNull View view, int i, int i2, int i3, int i4) {
        m16675b();
        Method method = f5312b;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    /* renamed from: g */
    public void mo16670g(@NonNull View view, float f) {
        Float f2 = (Float) view.getTag(C0542R.C0545id.save_non_transition_alpha);
        if (f2 != null) {
            view.setAlpha(f2.floatValue() * f);
        } else {
            view.setAlpha(f);
        }
    }

    /* renamed from: h */
    public void mo16669h(@NonNull View view, int i) {
        if (!f5315e) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                f5314d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.i("ViewUtilsBase", "fetchViewFlagsField: ");
            }
            f5315e = true;
        }
        Field field = f5314d;
        if (field != null) {
            try {
                f5314d.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException e2) {
            }
        }
    }

    /* renamed from: i */
    public void mo16668i(@NonNull View view, @NonNull Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo16668i(view2, matrix);
            matrix.preTranslate(-view2.getScrollX(), -view2.getScrollY());
        }
        matrix.preTranslate(view.getLeft(), view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            matrix.preConcat(matrix2);
        }
    }

    /* renamed from: j */
    public void mo16667j(@NonNull View view, @NonNull Matrix matrix) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            mo16667j(view2, matrix);
            matrix.postTranslate(view2.getScrollX(), view2.getScrollY());
        }
        matrix.postTranslate(-view.getLeft(), -view.getTop());
        Matrix matrix2 = view.getMatrix();
        if (!matrix2.isIdentity()) {
            Matrix matrix3 = new Matrix();
            if (matrix2.invert(matrix3)) {
                matrix.postConcat(matrix3);
            }
        }
    }
}
