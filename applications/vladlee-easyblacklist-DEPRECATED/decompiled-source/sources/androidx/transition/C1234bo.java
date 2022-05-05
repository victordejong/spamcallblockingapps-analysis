package androidx.transition;

import android.util.Log;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.transition.bo */
/* loaded from: classes-dex2jar.jar:androidx/transition/bo.class */
final class C1234bo {

    /* renamed from: a */
    private static Method f5267a;

    /* renamed from: b */
    private static boolean f5268b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6530a(ViewGroup viewGroup, boolean z) {
        if (!f5268b) {
            try {
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("suppressLayout", Boolean.TYPE);
                f5267a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
                Log.i("ViewUtilsApi18", "Failed to retrieve suppressLayout method", e);
            }
            f5268b = true;
        }
        Method method = f5267a;
        if (method != null) {
            try {
                method.invoke(viewGroup, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
                Log.i("ViewUtilsApi18", "Failed to invoke suppressLayout method", e2);
            } catch (InvocationTargetException e3) {
                Log.i("ViewUtilsApi18", "Error invoking suppressLayout method", e3);
            }
        }
    }
}
