package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;
/* renamed from: androidx.appcompat.app.ac */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ac.class */
final class C0281ac {

    /* renamed from: a */
    private static Field f1221a;

    /* renamed from: b */
    private static boolean f1222b;

    /* renamed from: c */
    private static Class<?> f1223c;

    /* renamed from: d */
    private static boolean f1224d;

    /* renamed from: e */
    private static Field f1225e;

    /* renamed from: f */
    private static boolean f1226f;

    /* renamed from: g */
    private static Field f1227g;

    /* renamed from: h */
    private static boolean f1228h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m9855a(Resources resources) {
        Map map;
        Object obj;
        if (Build.VERSION.SDK_INT < 28) {
            if (Build.VERSION.SDK_INT >= 24) {
                if (!f1228h) {
                    try {
                        Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                        f1227g = declaredField;
                        declaredField.setAccessible(true);
                    } catch (NoSuchFieldException e) {
                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
                    }
                    f1228h = true;
                }
                Field field = f1227g;
                if (field != null) {
                    try {
                        obj = field.get(resources);
                    } catch (IllegalAccessException e2) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e2);
                        obj = null;
                    }
                    if (obj != null) {
                        if (!f1222b) {
                            try {
                                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                                f1221a = declaredField2;
                                declaredField2.setAccessible(true);
                            } catch (NoSuchFieldException e3) {
                                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
                            }
                            f1222b = true;
                        }
                        Field field2 = f1221a;
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
                            m9854a(obj2);
                        }
                    }
                }
            } else if (Build.VERSION.SDK_INT >= 23) {
                if (!f1222b) {
                    try {
                        Field declaredField3 = Resources.class.getDeclaredField("mDrawableCache");
                        f1221a = declaredField3;
                        declaredField3.setAccessible(true);
                    } catch (NoSuchFieldException e5) {
                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e5);
                    }
                    f1222b = true;
                }
                Field field3 = f1221a;
                Object obj3 = null;
                if (field3 != null) {
                    try {
                        obj3 = field3.get(resources);
                    } catch (IllegalAccessException e6) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e6);
                        obj3 = null;
                    }
                }
                if (obj3 != null) {
                    m9854a(obj3);
                }
            } else if (Build.VERSION.SDK_INT >= 21) {
                if (!f1222b) {
                    try {
                        Field declaredField4 = Resources.class.getDeclaredField("mDrawableCache");
                        f1221a = declaredField4;
                        declaredField4.setAccessible(true);
                    } catch (NoSuchFieldException e7) {
                        Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e7);
                    }
                    f1222b = true;
                }
                Field field4 = f1221a;
                if (field4 != null) {
                    try {
                        map = (Map) field4.get(resources);
                    } catch (IllegalAccessException e8) {
                        Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e8);
                        map = null;
                    }
                    if (map != null) {
                        map.clear();
                    }
                }
            }
        }
    }

    /* renamed from: a */
    private static void m9854a(Object obj) {
        LongSparseArray longSparseArray;
        if (!f1224d) {
            try {
                f1223c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            f1224d = true;
        }
        Class<?> cls = f1223c;
        if (cls != null) {
            if (!f1226f) {
                try {
                    Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                    f1225e = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
                }
                f1226f = true;
            }
            Field field = f1225e;
            if (field != null) {
                try {
                    longSparseArray = (LongSparseArray) field.get(obj);
                } catch (IllegalAccessException e3) {
                    Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
                    longSparseArray = null;
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }
}
