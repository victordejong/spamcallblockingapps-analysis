package p012b.p016b.p017k;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: b.b.k.f */
/* loaded from: classes-dex2jar.jar:b/b/k/f.class */
public class C0592f {

    /* renamed from: a */
    public static Field f2940a;

    /* renamed from: b */
    public static boolean f2941b;

    /* renamed from: c */
    public static Class<?> f2942c;

    /* renamed from: d */
    public static boolean f2943d;

    /* renamed from: e */
    public static Field f2944e;

    /* renamed from: f */
    public static boolean f2945f;

    /* renamed from: g */
    public static Field f2946g;

    /* renamed from: h */
    public static boolean f2947h;

    /* renamed from: a */
    public static void m36828a(Resources resources) {
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            if (i >= 24) {
                m36824d(resources);
            } else if (i >= 23) {
                m36825c(resources);
            } else if (i >= 21) {
                m36826b(resources);
            }
        }
    }

    /* renamed from: a */
    public static void m36827a(Object obj) {
        if (!f2943d) {
            try {
                f2942c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f2943d = true;
        }
        Class<?> cls = f2942c;
        if (cls != null) {
            if (!f2945f) {
                try {
                    Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                    f2944e = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
                }
                f2945f = true;
            }
            Field field = f2944e;
            if (field != null) {
                LongSparseArray longSparseArray = null;
                try {
                    longSparseArray = (LongSparseArray) field.get(obj);
                } catch (IllegalAccessException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }

    /* renamed from: b */
    public static void m36826b(Resources resources) {
        if (!f2941b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f2940a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f2941b = true;
        }
        Field field = f2940a;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* renamed from: c */
    public static void m36825c(Resources resources) {
        if (!f2941b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f2940a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            f2941b = true;
        }
        Field field = f2940a;
        Object obj = null;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e2);
                obj = null;
            }
        }
        if (obj != null) {
            m36827a(obj);
        }
    }

    /* renamed from: d */
    public static void m36824d(Resources resources) {
        Object obj;
        if (!f2947h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f2946g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            f2947h = true;
        }
        Field field = f2946g;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e2);
                obj = null;
            }
            if (obj != null) {
                if (!f2941b) {
                    try {
                        Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                        f2940a = declaredField2;
                        declaredField2.setAccessible(true);
                    } catch (NoSuchFieldException e3) {
                        Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
                    }
                    f2941b = true;
                }
                Field field2 = f2940a;
                Object obj2 = null;
                if (field2 != null) {
                    try {
                        obj2 = field2.get(obj);
                    } catch (IllegalAccessException e4) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e4);
                        obj2 = null;
                    }
                }
                if (obj2 != null) {
                    m36827a(obj2);
                }
            }
        }
    }
}
