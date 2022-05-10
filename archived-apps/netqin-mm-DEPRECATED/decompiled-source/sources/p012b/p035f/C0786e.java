package p012b.p035f;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: b.f.e */
/* loaded from: classes-dex2jar.jar:b/f/e.class */
public class C0786e<K, V> {

    /* renamed from: a */
    public final LinkedHashMap<K, V> f3680a;

    /* renamed from: b */
    public int f3681b;

    /* renamed from: c */
    public int f3682c;

    /* renamed from: d */
    public int f3683d;

    /* renamed from: e */
    public int f3684e;

    /* renamed from: f */
    public int f3685f;

    /* renamed from: g */
    public int f3686g;

    /* renamed from: h */
    public int f3687h;

    public C0786e(int i) {
        if (i > 0) {
            this.f3682c = i;
            this.f3680a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    public final int m36044a(K k, V v) {
        int b = mo3778b(k, v);
        if (b >= 0) {
            return b;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    /* renamed from: a */
    public V m36045a(K k) {
        return null;
    }

    /* renamed from: a */
    public void m36043a(boolean z, K k, V v, V v2) {
    }

    /* renamed from: b */
    public int mo3778b(K k, V v) {
        return 1;
    }

    public final int createCount() {
        int i;
        synchronized (this) {
            i = this.f3684e;
        }
        return i;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i;
        synchronized (this) {
            i = this.f3685f;
        }
        return i;
    }

    public final V get(K k) {
        V put;
        if (k != null) {
            synchronized (this) {
                V v = this.f3680a.get(k);
                if (v != null) {
                    this.f3686g++;
                    return v;
                }
                this.f3687h++;
                V a = m36045a(k);
                if (a == null) {
                    return null;
                }
                synchronized (this) {
                    this.f3684e++;
                    put = this.f3680a.put(k, a);
                    if (put != null) {
                        this.f3680a.put(k, put);
                    } else {
                        this.f3681b += m36044a(k, a);
                    }
                }
                if (put != null) {
                    m36043a(false, k, a, put);
                    return put;
                }
                trimToSize(this.f3682c);
                return a;
            }
        }
        throw new NullPointerException("key == null");
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.f3686g;
        }
        return i;
    }

    public final int maxSize() {
        int i;
        synchronized (this) {
            i = this.f3682c;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this) {
            i = this.f3687h;
        }
        return i;
    }

    public final V put(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f3683d++;
            this.f3681b += m36044a(k, v);
            put = this.f3680a.put(k, v);
            if (put != null) {
                this.f3681b -= m36044a(k, put);
            }
        }
        if (put != null) {
            m36043a(false, k, put, v);
        }
        trimToSize(this.f3682c);
        return put;
    }

    public final int putCount() {
        int i;
        synchronized (this) {
            i = this.f3683d;
        }
        return i;
    }

    public final V remove(K k) {
        V remove;
        if (k != null) {
            synchronized (this) {
                remove = this.f3680a.remove(k);
                if (remove != null) {
                    this.f3681b -= m36044a(k, remove);
                }
            }
            if (remove != null) {
                m36043a(false, k, remove, null);
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    public void resize(int i) {
        if (i > 0) {
            synchronized (this) {
                this.f3682c = i;
            }
            trimToSize(i);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final int size() {
        int i;
        synchronized (this) {
            i = this.f3681b;
        }
        return i;
    }

    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            linkedHashMap = new LinkedHashMap(this.f3680a);
        }
        return linkedHashMap;
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.f3686g + this.f3687h;
            format = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f3682c), Integer.valueOf(this.f3686g), Integer.valueOf(this.f3687h), Integer.valueOf(i != 0 ? (this.f3686g * 100) / i : 0));
        }
        return format;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ac, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r7) {
        /*
            r6 = this;
        L_0x0000:
            r0 = r6
            monitor-enter(r0)
            r0 = r6
            int r0 = r0.f3681b     // Catch: all -> 0x00ad
            if (r0 < 0) goto L_0x0084
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f3680a     // Catch: all -> 0x00ad
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x001a
            r0 = r6
            int r0 = r0.f3681b     // Catch: all -> 0x00ad
            if (r0 != 0) goto L_0x0084
        L_0x001a:
            r0 = r6
            int r0 = r0.f3681b     // Catch: all -> 0x00ad
            r1 = r7
            if (r0 <= r1) goto L_0x0081
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f3680a     // Catch: all -> 0x00ad
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00ad
            if (r0 == 0) goto L_0x002f
            goto L_0x0081
        L_0x002f:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f3680a     // Catch: all -> 0x00ad
            java.util.Set r0 = r0.entrySet()     // Catch: all -> 0x00ad
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00ad
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00ad
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: all -> 0x00ad
            r8 = r0
            r0 = r8
            java.lang.Object r0 = r0.getKey()     // Catch: all -> 0x00ad
            r9 = r0
            r0 = r8
            java.lang.Object r0 = r0.getValue()     // Catch: all -> 0x00ad
            r8 = r0
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f3680a     // Catch: all -> 0x00ad
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x00ad
            r0 = r6
            r1 = r6
            int r1 = r1.f3681b     // Catch: all -> 0x00ad
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.m36044a(r3, r4)     // Catch: all -> 0x00ad
            int r1 = r1 - r2
            r0.f3681b = r1     // Catch: all -> 0x00ad
            r0 = r6
            r1 = r6
            int r1 = r1.f3685f     // Catch: all -> 0x00ad
            r2 = 1
            int r1 = r1 + r2
            r0.f3685f = r1     // Catch: all -> 0x00ad
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00ad
            r0 = r6
            r1 = 1
            r2 = r9
            r3 = r8
            r4 = 0
            r0.m36043a(r1, r2, r3, r4)
            goto L_0x0000
        L_0x0081:
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00ad
            return
        L_0x0084:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: all -> 0x00ad
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00ad
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: all -> 0x00ad
            r0 = r8
            r1 = r6
            java.lang.Class r1 = r1.getClass()     // Catch: all -> 0x00ad
            java.lang.String r1 = r1.getName()     // Catch: all -> 0x00ad
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00ad
            r0 = r8
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00ad
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00ad
            r0.<init>(r1)     // Catch: all -> 0x00ad
            r0 = r9
            throw r0     // Catch: all -> 0x00ad
        L_0x00ad:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00ad
            goto L_0x00b5
        L_0x00b3:
            r0 = r9
            throw r0
        L_0x00b5:
            goto L_0x00b3
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p035f.C0786e.trimToSize(int):void");
    }
}
