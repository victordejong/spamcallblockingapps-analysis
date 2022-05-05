package androidx.transition;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.bv */
/* loaded from: classes-dex2jar.jar:androidx/transition/bv.class */
class C1242bv extends C1245by {

    /* renamed from: a */
    private static Method f5281a;

    /* renamed from: b */
    private static boolean f5282b;

    /* renamed from: c */
    private static Method f5283c;

    /* renamed from: d */
    private static boolean f5284d;

    @Override // androidx.transition.C1245by
    /* renamed from: a */
    public final float mo6513a(View view) {
        if (!f5284d) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("getTransitionAlpha", new Class[0]);
                f5283c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e);
            }
            f5284d = true;
        }
        Method method = f5283c;
        if (method != null) {
            try {
                return ((Float) method.invoke(view, new Object[0])).floatValue();
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
        return super.mo6513a(view);
    }

    @Override // androidx.transition.C1245by
    /* renamed from: a */
    public final void mo6512a(View view, float f) {
        if (!f5282b) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("setTransitionAlpha", Float.TYPE);
                f5281a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e);
            }
            f5282b = true;
        }
        Method method = f5281a;
        if (method != null) {
            try {
                method.invoke(view, Float.valueOf(f));
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        } else {
            view.setAlpha(f);
        }
    }

    @Override // androidx.transition.C1245by
    /* renamed from: b */
    public final void mo6509b(View view) {
    }

    @Override // androidx.transition.C1245by
    /* renamed from: c */
    public final void mo6507c(View view) {
    }
}
