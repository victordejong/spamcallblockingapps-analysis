package com.privacystar.core.util.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/model/LRUCache.class */
public class LRUCache<Q, T> {
    public static final int SIZE_INFINITE = -1;
    private HashMap<T, Q> mReverseLookup;
    private HashMap<Q, T> objectMap;
    private int sizeCap;
    private HashMap<T, Long> timeMap;

    public LRUCache() {
        this(-1);
    }

    public LRUCache(int i) {
        this.sizeCap = i;
        this.objectMap = new HashMap<>();
        this.timeMap = new HashMap<>();
        this.mReverseLookup = new HashMap<>();
    }

    private void updateTime(T t) {
        this.timeMap.put(t, Long.valueOf(new Date().getTime()));
    }

    public void add(Q q, T t) {
        this.objectMap.put(q, t);
        this.mReverseLookup.put(t, q);
        updateTime(t);
        if (this.objectMap.keySet().size() > this.sizeCap && this.sizeCap != -1) {
            releaseItem();
        }
    }

    public boolean containsKey(Q q) {
        return this.objectMap.containsKey(q);
    }

    public T get(Q q) {
        if (!this.objectMap.containsKey(q)) {
            return null;
        }
        T t = this.objectMap.get(q);
        updateTime(t);
        return t;
    }

    public Collection<T> getAll() {
        return this.objectMap.values();
    }

    public Collection<T> getAllCloned() {
        return new ArrayList(this.objectMap.values());
    }

    public T getOrDefault(Q q, T t) {
        T t2 = get(q);
        if (t2 == null) {
            add(q, t);
        } else {
            t = t2;
        }
        return t;
    }

    public int getSize() {
        return this.objectMap.size();
    }

    public void releaseItem() {
        T t = null;
        for (Map.Entry<T, Long> entry : this.timeMap.entrySet()) {
            if (t == null || this.timeMap.get(t).longValue() > entry.getValue().longValue()) {
                t = entry.getKey();
            }
        }
        if (t != null) {
            this.timeMap.remove(t);
            Q q = this.mReverseLookup.get(t);
            this.mReverseLookup.remove(t);
            this.objectMap.remove(q);
        }
    }
}
