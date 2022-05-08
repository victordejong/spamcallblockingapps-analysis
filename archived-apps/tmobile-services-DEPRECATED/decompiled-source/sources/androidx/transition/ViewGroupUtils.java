package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/transition/ViewGroupUtils.class */
public class ViewGroupUtils {

    /* renamed from: a */
    private static boolean f5288a = true;

    /* renamed from: b */
    private static Method f5289b;

    /* renamed from: c */
    private static boolean f5290c;

    private ViewGroupUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m16708a(@NonNull ViewGroup viewGroup, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            return viewGroup.getChildDrawingOrder(i);
        }
        if (!f5290c) {
            try {
                Method declaredMethod = ViewGroup.class.getDeclaredMethod("getChildDrawingOrder", Integer.TYPE, Integer.TYPE);
                f5289b = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            f5290c = true;
        }
        Method method = f5289b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(viewGroup, Integer.valueOf(viewGroup.getChildCount()), Integer.valueOf(i))).intValue();
            } catch (IllegalAccessException | InvocationTargetException e2) {
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static ViewGroupOverlayImpl m16707b(@NonNull ViewGroup viewGroup) {
        return Build.VERSION.SDK_INT >= 18 ? new ViewGroupOverlayApi18(viewGroup) : ViewGroupOverlayApi14.m16711g(viewGroup);
    }

    @RequiresApi
    @SuppressLint({"NewApi"})
    /* renamed from: c */
    private static void m16706c(@NonNull ViewGroup viewGroup, boolean z) {
        if (f5288a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError e) {
                f5288a = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static void m16705d(@NonNull ViewGroup viewGroup, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            viewGroup.suppressLayout(z);
        } else if (i >= 18) {
            m16706c(viewGroup, z);
        } else {
            ViewGroupUtilsApi14.m16703b(viewGroup, z);
        }
    }
}
