package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: androidx.appcompat.app.i */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/i.class */
class C0072i {

    /* renamed from: a */
    private static Field f248a;

    /* renamed from: b */
    private static boolean f249b;

    /* renamed from: c */
    private static Class<?> f250c;

    /* renamed from: d */
    private static boolean f251d;

    /* renamed from: e */
    private static Field f252e;

    /* renamed from: f */
    private static boolean f253f;

    /* renamed from: g */
    private static Field f254g;

    /* renamed from: h */
    private static boolean f255h;

    /* renamed from: a */
    static void m6803a(Resources resources) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return;
        }
        if (i >= 24) {
            m6800d(resources);
        } else if (i >= 23) {
            m6801c(resources);
        } else if (i < 21) {
        } else {
            m6802b(resources);
        }
    }

    /* renamed from: b */
    private static void m6802b(Resources resources) {
        Map map;
        if (!f249b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f248a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f249b = true;
        }
        Field field = f248a;
        if (field != null) {
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
                map = null;
            }
            if (map == null) {
                return;
            }
            map.clear();
        }
    }

    /* renamed from: c */
    private static void m6801c(Resources resources) {
        if (!f249b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f248a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f249b = true;
        }
        Field field = f248a;
        Object obj = null;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
                obj = null;
            }
        }
        if (obj == null) {
            return;
        }
        m6799e(obj);
    }

    /* renamed from: d */
    private static void m6800d(Resources resources) {
        Object obj;
        if (!f255h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f254g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f255h = true;
        }
        Field field = f254g;
        if (field == null) {
            return;
        }
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e2) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e2);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f249b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f248a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
            }
            f249b = true;
        }
        Field field2 = f248a;
        Object obj2 = null;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e4) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e4);
                obj2 = null;
            }
        }
        if (obj2 == null) {
            return;
        }
        m6799e(obj2);
    }

    /* renamed from: e */
    private static void m6799e(Object obj) {
        LongSparseArray longSparseArray;
        if (!f251d) {
            try {
                f250c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f251d = true;
        }
        Class<?> cls = f250c;
        if (cls == null) {
            return;
        }
        if (!f253f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f252e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            f253f = true;
        }
        Field field = f252e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
            longSparseArray = null;
        }
        if (longSparseArray == null) {
            return;
        }
        longSparseArray.clear();
    }
}
