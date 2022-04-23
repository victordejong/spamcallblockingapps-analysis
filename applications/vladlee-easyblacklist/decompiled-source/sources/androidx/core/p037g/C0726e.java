package androidx.core.p037g;

import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;
/* renamed from: androidx.core.g.e */
/* loaded from: classes-dex2jar.jar:androidx/core/g/e.class */
public final class C0726e {

    /* renamed from: a */
    private static Field f3089a;

    /* renamed from: b */
    private static boolean f3090b;

    /* renamed from: a */
    public static void m8408a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                m8407b(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                m8407b(layoutInflater, factory2);
            }
        }
    }

    /* renamed from: b */
    private static void m8407b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f3090b) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f3089a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f3090b = true;
        }
        Field field = f3089a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }
}
