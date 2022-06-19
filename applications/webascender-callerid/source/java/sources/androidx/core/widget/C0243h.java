package androidx.core.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import f.h.l.d;
import f.h.l.t;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: androidx.core.widget.h */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/h.class */
public final class C0243h {

    /* renamed from: a */
    private static Method f1378a;

    /* renamed from: b */
    private static boolean f1379b;

    /* renamed from: c */
    private static Field f1380c;

    /* renamed from: d */
    private static boolean f1381d;

    /* renamed from: a */
    public static void m5886a(PopupWindow popupWindow, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (i < 21) {
        } else {
            if (!f1381d) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f1380c = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
                }
                f1381d = true;
            }
            Field field = f1380c;
            if (field == null) {
                return;
            }
            try {
                field.set(popupWindow, Boolean.valueOf(z));
            } catch (IllegalAccessException e2) {
                Log.i("PopupWindowCompatApi21", "Could not set overlap anchor field in PopupWindow", e2);
            }
        }
    }

    /* renamed from: b */
    public static void m5885b(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f1379b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f1378a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            f1379b = true;
        }
        Method method = f1378a;
        if (method == null) {
            return;
        }
        try {
            method.invoke(popupWindow, Integer.valueOf(i));
        } catch (Exception e2) {
        }
    }

    /* renamed from: c */
    public static void m5884c(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i, i2, i3);
            return;
        }
        int i4 = i;
        if ((d.b(i3, t.B(view)) & 7) == 5) {
            i4 = i - (popupWindow.getWidth() - view.getWidth());
        }
        popupWindow.showAsDropDown(view, i4, i2);
    }
}
