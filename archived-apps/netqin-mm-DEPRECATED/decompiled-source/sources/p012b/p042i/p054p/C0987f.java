package p012b.p042i.p054p;

import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import java.lang.reflect.Field;
/* renamed from: b.i.p.f */
/* loaded from: classes-dex2jar.jar:b/i/p/f.class */
public final class C0987f {

    /* renamed from: a */
    public static Field f4241a;

    /* renamed from: b */
    public static boolean f4242b;

    /* renamed from: a */
    public static void m35300a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f4242b) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f4241a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f4242b = true;
        }
        Field field = f4241a;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e("LayoutInflaterCompatHC", "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    /* renamed from: b */
    public static void m35299b(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                m35300a(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                m35300a(layoutInflater, factory2);
            }
        }
    }
}
