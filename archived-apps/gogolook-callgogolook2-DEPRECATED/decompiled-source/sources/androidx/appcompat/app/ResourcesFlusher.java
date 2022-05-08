package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ResourcesFlusher.class */
public class ResourcesFlusher {
    public static final String TAG = "ResourcesFlusher";
    public static Field sDrawableCacheField;
    public static boolean sDrawableCacheFieldFetched;
    public static Field sResourcesImplField;
    public static boolean sResourcesImplFieldFetched;
    public static Class<?> sThemedResourceCacheClazz;
    public static boolean sThemedResourceCacheClazzFetched;
    public static Field sThemedResourceCache_mUnthemedEntriesField;
    public static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;

    public static void flush(@NonNull Resources resources) {
        int i = Build.VERSION.SDK_INT;
        if (i < 28) {
            if (i >= 24) {
                flushNougats(resources);
            } else if (i >= 23) {
                flushMarshmallows(resources);
            } else if (i >= 21) {
                flushLollipops(resources);
            }
        }
    }

    @RequiresApi(21)
    public static void flushLollipops(@NonNull Resources resources) {
        Map map;
        if (!sDrawableCacheFieldFetched) {
            try {
                sDrawableCacheField = Resources.class.getDeclaredField("mDrawableCache");
                sDrawableCacheField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "Could not retrieve Resources#mDrawableCache field", e);
            }
            sDrawableCacheFieldFetched = true;
        }
        Field field = sDrawableCacheField;
        if (field != null) {
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "Could not retrieve value from Resources#mDrawableCache", e2);
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    @RequiresApi(23)
    public static void flushMarshmallows(@NonNull Resources resources) {
        if (!sDrawableCacheFieldFetched) {
            try {
                sDrawableCacheField = Resources.class.getDeclaredField("mDrawableCache");
                sDrawableCacheField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "Could not retrieve Resources#mDrawableCache field", e);
            }
            sDrawableCacheFieldFetched = true;
        }
        Field field = sDrawableCacheField;
        Object obj = null;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "Could not retrieve value from Resources#mDrawableCache", e2);
                obj = null;
            }
        }
        if (obj != null) {
            flushThemedResourcesCache(obj);
        }
    }

    @RequiresApi(24)
    public static void flushNougats(@NonNull Resources resources) {
        Object obj;
        if (!sResourcesImplFieldFetched) {
            try {
                sResourcesImplField = Resources.class.getDeclaredField("mResourcesImpl");
                sResourcesImplField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "Could not retrieve Resources#mResourcesImpl field", e);
            }
            sResourcesImplFieldFetched = true;
        }
        Field field = sResourcesImplField;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "Could not retrieve value from Resources#mResourcesImpl", e2);
                obj = null;
            }
            if (obj != null) {
                if (!sDrawableCacheFieldFetched) {
                    try {
                        sDrawableCacheField = obj.getClass().getDeclaredField("mDrawableCache");
                        sDrawableCacheField.setAccessible(true);
                    } catch (NoSuchFieldException e3) {
                        Log.e(TAG, "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
                    }
                    sDrawableCacheFieldFetched = true;
                }
                Field field2 = sDrawableCacheField;
                Object obj2 = null;
                if (field2 != null) {
                    try {
                        obj2 = field2.get(obj);
                    } catch (IllegalAccessException e4) {
                        Log.e(TAG, "Could not retrieve value from ResourcesImpl#mDrawableCache", e4);
                        obj2 = null;
                    }
                }
                if (obj2 != null) {
                    flushThemedResourcesCache(obj2);
                }
            }
        }
    }

    @RequiresApi(16)
    public static void flushThemedResourcesCache(@NonNull Object obj) {
        LongSparseArray longSparseArray;
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e(TAG, "Could not find ThemedResourceCache class", e);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        Class<?> cls = sThemedResourceCacheClazz;
        if (cls != null) {
            if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
                try {
                    sThemedResourceCache_mUnthemedEntriesField = cls.getDeclaredField("mUnthemedEntries");
                    sThemedResourceCache_mUnthemedEntriesField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                    Log.e(TAG, "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
                }
                sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
            }
            Field field = sThemedResourceCache_mUnthemedEntriesField;
            if (field != null) {
                try {
                    longSparseArray = (LongSparseArray) field.get(obj);
                } catch (IllegalAccessException e3) {
                    Log.e(TAG, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
                    longSparseArray = null;
                }
                if (longSparseArray != null) {
                    longSparseArray.clear();
                }
            }
        }
    }
}
