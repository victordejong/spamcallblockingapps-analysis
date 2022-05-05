package androidx.transition;

import android.util.Log;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.bx */
/* loaded from: classes-dex2jar.jar:androidx/transition/bx.class */
final class C1244bx extends C1243bw {

    /* renamed from: a */
    private static Method f5291a;

    /* renamed from: b */
    private static boolean f5292b;

    @Override // androidx.transition.C1245by
    /* renamed from: a */
    public final void mo6511a(View view, int i, int i2, int i3, int i4) {
        if (!f5292b) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("setLeftTopRightBottom", Integer.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE);
                f5291a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e);
            }
            f5292b = true;
        }
        Method method = f5291a;
        if (method != null) {
            try {
                method.invoke(view, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
            } catch (IllegalAccessException e2) {
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3.getCause());
            }
        }
    }
}
