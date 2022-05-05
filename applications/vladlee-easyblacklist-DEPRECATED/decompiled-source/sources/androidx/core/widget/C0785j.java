package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: androidx.core.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/j.class */
public final class C0785j {

    /* renamed from: a */
    private static Method f3248a;

    /* renamed from: b */
    private static boolean f3249b;

    /* renamed from: c */
    private static Field f3250c;

    /* renamed from: d */
    private static boolean f3251d;

    /* renamed from: a */
    public static void m8137a(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f3249b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f3248a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            f3249b = true;
        }
        Method method = f3248a;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static void m8136a(PopupWindow popupWindow, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (Build.VERSION.SDK_INT >= 21) {
            if (!f3251d) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f3250c = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
                }
                f3251d = true;
            }
            Field field = f3250c;
            if (field != null) {
                try {
                    field.set(popupWindow, Boolean.valueOf(z));
                } catch (IllegalAccessException e2) {
                    Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e2);
                }
            }
        }
    }
}
