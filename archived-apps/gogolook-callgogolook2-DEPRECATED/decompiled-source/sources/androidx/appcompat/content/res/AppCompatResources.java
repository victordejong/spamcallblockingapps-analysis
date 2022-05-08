package androidx.appcompat.content.res;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ColorStateListInflaterCompat;
import java.util.WeakHashMap;
@SuppressLint({"RestrictedAPI"})
/* loaded from: classes-dex2jar.jar:androidx/appcompat/content/res/AppCompatResources.class */
public final class AppCompatResources {
    public static final String LOG_TAG = "AppCompatResources";
    public static final ThreadLocal<TypedValue> TL_TYPED_VALUE = new ThreadLocal<>();
    public static final WeakHashMap<Context, SparseArray<ColorStateListCacheEntry>> sColorStateCaches = new WeakHashMap<>(0);
    public static final Object sColorStateCacheLock = new Object();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/content/res/AppCompatResources$ColorStateListCacheEntry.class */
    public static class ColorStateListCacheEntry {
        public final Configuration configuration;
        public final ColorStateList value;

        public ColorStateListCacheEntry(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration) {
            this.value = colorStateList;
            this.configuration = configuration;
        }
    }

    public static void addColorStateListToCache(@NonNull Context context, @ColorRes int i, @NonNull ColorStateList colorStateList) {
        synchronized (sColorStateCacheLock) {
            SparseArray<ColorStateListCacheEntry> sparseArray = sColorStateCaches.get(context);
            SparseArray<ColorStateListCacheEntry> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                sColorStateCaches.put(context, sparseArray2);
            }
            sparseArray2.append(i, new ColorStateListCacheEntry(colorStateList, context.getResources().getConfiguration()));
        }
    }

    @Nullable
    public static ColorStateList getCachedColorStateList(@NonNull Context context, @ColorRes int i) {
        ColorStateListCacheEntry colorStateListCacheEntry;
        synchronized (sColorStateCacheLock) {
            SparseArray<ColorStateListCacheEntry> sparseArray = sColorStateCaches.get(context);
            if (!(sparseArray == null || sparseArray.size() <= 0 || (colorStateListCacheEntry = sparseArray.get(i)) == null)) {
                if (colorStateListCacheEntry.configuration.equals(context.getResources().getConfiguration())) {
                    return colorStateListCacheEntry.value;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    public static ColorStateList getColorStateList(@NonNull Context context, @ColorRes int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList cachedColorStateList = getCachedColorStateList(context, i);
        if (cachedColorStateList != null) {
            return cachedColorStateList;
        }
        ColorStateList inflateColorStateList = inflateColorStateList(context, i);
        if (inflateColorStateList == null) {
            return ContextCompat.getColorStateList(context, i);
        }
        addColorStateListToCache(context, i, inflateColorStateList);
        return inflateColorStateList;
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return ResourceManagerInternal.get().getDrawable(context, i);
    }

    @NonNull
    public static TypedValue getTypedValue() {
        TypedValue typedValue = TL_TYPED_VALUE.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            TL_TYPED_VALUE.set(typedValue2);
        }
        return typedValue2;
    }

    @Nullable
    public static ColorStateList inflateColorStateList(Context context, int i) {
        if (isColorInt(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return ColorStateListInflaterCompat.createFromXml(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e(LOG_TAG, "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    public static boolean isColorInt(@NonNull Context context, @ColorRes int i) {
        Resources resources = context.getResources();
        TypedValue typedValue = getTypedValue();
        boolean z = true;
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (i2 < 28 || i2 > 31) {
            z = false;
        }
        return z;
    }
}
