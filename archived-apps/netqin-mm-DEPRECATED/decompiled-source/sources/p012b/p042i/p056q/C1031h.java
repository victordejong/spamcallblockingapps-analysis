package p012b.p042i.p056q;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.widget.PopupWindow;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p012b.p042i.p054p.C0967d;
import p012b.p042i.p054p.C1002u;
/* renamed from: b.i.q.h */
/* loaded from: classes-dex2jar.jar:b/i/q/h.class */
public final class C1031h {

    /* renamed from: a */
    public static Method f4316a;

    /* renamed from: b */
    public static boolean f4317b;

    /* renamed from: c */
    public static Field f4318c;

    /* renamed from: d */
    public static boolean f4319d;

    /* renamed from: a */
    public static void m35106a(PopupWindow popupWindow, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            popupWindow.setWindowLayoutType(i);
            return;
        }
        if (!f4317b) {
            try {
                Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
                f4316a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (Exception e) {
            }
            f4317b = true;
        }
        Method method = f4316a;
        if (method != null) {
            try {
                method.invoke(popupWindow, Integer.valueOf(i));
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public static void m35105a(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        if (Build.VERSION.SDK_INT >= 19) {
            popupWindow.showAsDropDown(view, i, i2, i3);
            return;
        }
        int i4 = i;
        if ((C0967d.m35388a(i3, C1002u.m35208n(view)) & 7) == 5) {
            i4 = i - (popupWindow.getWidth() - view.getWidth());
        }
        popupWindow.showAsDropDown(view, i4, i2);
    }

    /* renamed from: a */
    public static void m35104a(PopupWindow popupWindow, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            popupWindow.setOverlapAnchor(z);
        } else if (i >= 21) {
            if (!f4319d) {
                try {
                    Field declaredField = PopupWindow.class.getDeclaredField("mOverlapAnchor");
                    f4318c = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    Log.i("PopupWindowCompatApi21", "Could not fetch mOverlapAnchor field from PopupWindow", e);
                }
                f4319d = true;
            }
            Field field = f4318c;
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
