package android.support.v4.b;

import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:android/support/v4/b/f.class */
public class f<K, V> {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<K, V> f126a;

    /* renamed from: b  reason: collision with root package name */
    private int f127b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;

    public f(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = i;
        this.f126a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int a(K k, V v) {
        int sizeOf$2838e5a0 = sizeOf$2838e5a0(v);
        if (sizeOf$2838e5a0 >= 0) {
            return sizeOf$2838e5a0;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    public final int createCount() {
        int i;
        synchronized (this) {
            i = this.e;
        }
        return i;
    }

    public void entryRemoved(boolean z, K k, V v, V v2) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i;
        synchronized (this) {
            i = this.f;
        }
        return i;
    }

    public final V get(K k) {
        V v;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            v = this.f126a.get(k);
            if (v != null) {
                this.g++;
            } else {
                this.h++;
                v = null;
            }
        }
        return v;
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.g;
        }
        return i;
    }

    public final int maxSize() {
        int i;
        synchronized (this) {
            i = this.c;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this) {
            i = this.h;
        }
        return i;
    }

    public final V put(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.d++;
            this.f127b += a(k, v);
            put = this.f126a.put(k, v);
            if (put != null) {
                this.f127b -= a(k, put);
            }
        }
        if (put != null) {
            entryRemoved(false, k, put, v);
        }
        trimToSize(this.c);
        return put;
    }

    public final int putCount() {
        int i;
        synchronized (this) {
            i = this.d;
        }
        return i;
    }

    public final V remove(K k) {
        V remove;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            remove = this.f126a.remove(k);
            if (remove != null) {
                this.f127b -= a(k, remove);
            }
        }
        if (remove != null) {
            entryRemoved(false, k, remove, null);
        }
        return remove;
    }

    public void resize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        synchronized (this) {
            this.c = i;
        }
        trimToSize(i);
    }

    public final int size() {
        int i;
        synchronized (this) {
            i = this.f127b;
        }
        return i;
    }

    public int sizeOf$2838e5a0(V v) {
        return 1;
    }

    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            linkedHashMap = new LinkedHashMap(this.f126a);
        }
        return linkedHashMap;
    }

    public final String toString() {
        String format;
        int i = 0;
        synchronized (this) {
            int i2 = this.g + this.h;
            if (i2 != 0) {
                i = (this.g * 100) / i2;
            }
            format = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.c), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(i));
        }
        return format;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        return;
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
            int r0 = r0.f127b     // Catch: all -> 0x003f
            if (r0 < 0) goto L_0x001a
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f126a     // Catch: all -> 0x003f
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x003f
            if (r0 == 0) goto L_0x0044
            r0 = r6
            int r0 = r0.f127b     // Catch: all -> 0x003f
            if (r0 == 0) goto L_0x0044
        L_0x001a:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: all -> 0x003f, all -> 0x003f
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x003f
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: all -> 0x003f
            r0 = r8
            r1 = r9
            r2 = r6
            java.lang.Class r2 = r2.getClass()     // Catch: all -> 0x003f
            java.lang.String r2 = r2.getName()     // Catch: all -> 0x003f
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x003f
            java.lang.String r2 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x003f
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x003f
            r0.<init>(r1)     // Catch: all -> 0x003f
            r0 = r8
            throw r0     // Catch: all -> 0x003f
        L_0x003f:
            r8 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x003f
            r0 = r8
            throw r0
        L_0x0044:
            r0 = r6
            int r0 = r0.f127b     // Catch: all -> 0x003f
            r1 = r7
            if (r0 <= r1) goto L_0x0056
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f126a     // Catch: all -> 0x003f
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x003f
            if (r0 == 0) goto L_0x0059
        L_0x0056:
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x003f
            return
        L_0x0059:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f126a     // Catch: all -> 0x003f
            java.util.Set r0 = r0.entrySet()     // Catch: all -> 0x003f
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x003f
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x003f
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: all -> 0x003f
            r9 = r0
            r0 = r9
            java.lang.Object r0 = r0.getKey()     // Catch: all -> 0x003f
            r8 = r0
            r0 = r9
            java.lang.Object r0 = r0.getValue()     // Catch: all -> 0x003f
            r9 = r0
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f126a     // Catch: all -> 0x003f
            r1 = r8
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x003f
            r0 = r6
            r1 = r6
            int r1 = r1.f127b     // Catch: all -> 0x003f
            r2 = r6
            r3 = r8
            r4 = r9
            int r2 = r2.a(r3, r4)     // Catch: all -> 0x003f
            int r1 = r1 - r2
            r0.f127b = r1     // Catch: all -> 0x003f
            r0 = r6
            r1 = r6
            int r1 = r1.f     // Catch: all -> 0x003f
            r2 = 1
            int r1 = r1 + r2
            r0.f = r1     // Catch: all -> 0x003f
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x003f
            r0 = r6
            r1 = 1
            r2 = r8
            r3 = r9
            r4 = 0
            r0.entryRemoved(r1, r2, r3, r4)
            goto L_0x0000
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.b.f.trimToSize(int):void");
    }
}
