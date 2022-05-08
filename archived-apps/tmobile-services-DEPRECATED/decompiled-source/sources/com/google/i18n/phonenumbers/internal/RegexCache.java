package com.google.i18n.phonenumbers.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/internal/RegexCache.class */
public class RegexCache {

    /* renamed from: a */
    private LRUCache<String, Pattern> f12388a;

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/internal/RegexCache$LRUCache.class */
    private static class LRUCache<K, V> {

        /* renamed from: a */
        private LinkedHashMap<K, V> f12389a;

        /* renamed from: b */
        private int f12390b;

        public LRUCache(int i) {
            this.f12390b = i;
            this.f12389a = new LinkedHashMap<K, V>(((i * 4) / 3) + 1, 0.75f, true) { // from class: com.google.i18n.phonenumbers.internal.RegexCache.LRUCache.1
                @Override // java.util.LinkedHashMap
                protected boolean removeEldestEntry(Map.Entry<K, V> entry) {
                    return size() > LRUCache.this.f12390b;
                }
            };
        }

        /* renamed from: b */
        public V m7867b(K k) {
            V v;
            synchronized (this) {
                v = this.f12389a.get(k);
            }
            return v;
        }

        /* renamed from: c */
        public void m7866c(K k, V v) {
            synchronized (this) {
                this.f12389a.put(k, v);
            }
        }
    }

    public RegexCache(int i) {
        this.f12388a = new LRUCache<>(i);
    }

    /* renamed from: a */
    public Pattern m7869a(String str) {
        Pattern b = this.f12388a.m7867b(str);
        Pattern pattern = b;
        if (b == null) {
            pattern = Pattern.compile(str);
            this.f12388a.m7866c(str, pattern);
        }
        return pattern;
    }
}
