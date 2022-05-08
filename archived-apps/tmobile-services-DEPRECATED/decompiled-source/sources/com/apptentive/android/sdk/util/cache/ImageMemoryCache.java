package com.apptentive.android.sdk.util.cache;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.collection.LruCache;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/cache/ImageMemoryCache.class */
public class ImageMemoryCache {
    private final LruCache<String, Object> bufferCache;

    /* renamed from: com.apptentive.android.sdk.util.cache.ImageMemoryCache$3 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/cache/ImageMemoryCache$3.class */
    final class C09043 implements Comparator<String> {
        C09043() {
        }

        public int compare(String str, String str2) {
            return str.substring(0, str.lastIndexOf("_")).compareTo(str2.substring(0, str2.lastIndexOf("_")));
        }
    }

    public ImageMemoryCache() {
        this.bufferCache = new LruCache<String, Object>(this, 1) { // from class: com.apptentive.android.sdk.util.cache.ImageMemoryCache.1
            /* JADX INFO: Access modifiers changed from: protected */
            public void entryRemoved(boolean z, String str, Object obj, Object obj2) {
                if (obj == null) {
                    return;
                }
                if (obj instanceof Bitmap) {
                    ((Bitmap) obj).recycle();
                } else if (obj instanceof BitmapDrawable) {
                    ((BitmapDrawable) obj).getBitmap().recycle();
                }
            }
        };
    }

    public ImageMemoryCache(int i) {
        this.bufferCache = new LruCache<String, Object>(this, i * 1024 * 1024) { // from class: com.apptentive.android.sdk.util.cache.ImageMemoryCache.2
            /* JADX INFO: Access modifiers changed from: protected */
            public void entryRemoved(boolean z, String str, Object obj, Object obj2) {
                if (obj == null) {
                    return;
                }
                if (obj instanceof Bitmap) {
                    ((Bitmap) obj).recycle();
                } else if (obj instanceof BitmapDrawable) {
                    ((BitmapDrawable) obj).getBitmap().recycle();
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            public int sizeOf(String str, Object obj) {
                int i2;
                if (obj instanceof Bitmap) {
                    Bitmap bitmap = (Bitmap) obj;
                    i2 = bitmap.getRowBytes() * bitmap.getHeight();
                } else if (obj instanceof BitmapDrawable) {
                    Bitmap bitmap2 = ((BitmapDrawable) obj).getBitmap();
                    i2 = bitmap2.getHeight() * bitmap2.getRowBytes();
                } else {
                    i2 = 0;
                }
                return i2;
            }
        };
    }

    public static String generateMemoryCacheEntryKey(String str, int i, int i2) {
        return str + "_" + i + ":" + i2;
    }

    public void addObjectToCache(String str, Object obj) {
        if (!str.isEmpty() && obj != null && getObjectFromCache(str) == null) {
            this.bufferCache.put(str, obj);
        }
    }

    public void evictAll() {
        LruCache<String, Object> lruCache = this.bufferCache;
        if (lruCache != null) {
            lruCache.evictAll();
        }
    }

    public Object getObjectFromCache(String str) {
        LruCache<String, Object> lruCache = this.bufferCache;
        if (lruCache == null) {
            return null;
        }
        return lruCache.get(str);
    }
}
