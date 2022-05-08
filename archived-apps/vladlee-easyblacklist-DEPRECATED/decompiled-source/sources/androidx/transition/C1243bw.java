package androidx.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.bw */
/* loaded from: classes-dex2jar.jar:androidx/transition/bw.class */
class C1243bw extends C1242bv {

    /* renamed from: a */
    private static Method f5285a;

    /* renamed from: b */
    private static boolean f5286b;

    /* renamed from: c */
    private static Method f5287c;

    /* renamed from: d */
    private static boolean f5288d;

    /* renamed from: e */
    private static Method f5289e;

    /* renamed from: f */
    private static boolean f5290f;

    @Override // androidx.transition.C1245by
    /* renamed from: a */
    public final void mo6510a(View view, Matrix matrix) {
        if (!f5286b) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToGlobal", Matrix.class);
                f5285a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e);
            }
            f5286b = true;
        }
        Method method = f5285a;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }

    @Override // androidx.transition.C1245by
    /* renamed from: b */
    public final void mo6508b(View view, Matrix matrix) {
        if (!f5288d) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("transformMatrixToLocal", Matrix.class);
                f5287c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e);
            }
            f5288d = true;
        }
        Method method = f5287c;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }

    @Override // androidx.transition.C1245by
    /* renamed from: c */
    public final void mo6506c(View view, Matrix matrix) {
        if (!f5290f) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("setAnimationMatrix", Matrix.class);
                f5289e = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi21", "Failed to retrieve setAnimationMatrix method", e);
            }
            f5290f = true;
        }
        Method method = f5289e;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2.getCause());
            } catch (InvocationTargetException e3) {
            }
        }
    }
}
