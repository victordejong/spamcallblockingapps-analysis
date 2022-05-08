package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.LruCache;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskLruMemoryCache.class */
class ZendeskLruMemoryCache implements MemoryCache {
    public final LruCache<String, Object> cache;

    public ZendeskLruMemoryCache() {
        this(new LruCache(50));
    }

    @VisibleForTesting
    ZendeskLruMemoryCache(LruCache<String, Object> lruCache) {
        this.cache = lruCache;
    }

    @Override // zendesk.core.MemoryCache
    public void clear() {
        this.cache.evictAll();
    }

    @Override // zendesk.core.MemoryCache
    public boolean contains(@NonNull String str) {
        boolean z;
        synchronized (this) {
            z = this.cache.get(str) != null;
        }
        return z;
    }

    @Override // zendesk.core.MemoryCache
    @Nullable
    public <T> T get(@NonNull String str) {
        T t;
        synchronized (this) {
            t = (T) this.cache.get(str);
        }
        return t;
    }

    @Override // zendesk.core.MemoryCache
    @NonNull
    public <T> T getOrDefault(@NonNull String str, @NonNull T t) {
        T t2 = (T) get(str);
        return t2 != null ? t2 : t;
    }

    @Override // zendesk.core.MemoryCache
    public void put(@NonNull String str, @NonNull Object obj) {
        synchronized (this) {
            this.cache.put(str, obj);
        }
    }

    @Override // zendesk.core.MemoryCache
    public void remove(@NonNull String str) {
        synchronized (this) {
            this.cache.remove(str);
        }
    }
}
