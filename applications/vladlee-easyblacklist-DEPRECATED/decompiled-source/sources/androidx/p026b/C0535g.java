package androidx.p026b;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: androidx.b.g */
/* loaded from: classes-dex2jar.jar:androidx/b/g.class */
public class C0535g<K, V> {

    /* renamed from: a */
    private final LinkedHashMap<K, V> f2482a;

    /* renamed from: b */
    private int f2483b;

    /* renamed from: c */
    private int f2484c;

    /* renamed from: d */
    private int f2485d;

    /* renamed from: e */
    private int f2486e;

    /* renamed from: f */
    private int f2487f;

    /* renamed from: g */
    private int f2488g;

    /* renamed from: h */
    private int f2489h;

    public C0535g(int i) {
        if (i > 0) {
            this.f2484c = i;
            this.f2482a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    private int m8927a(K k, V v) {
        int a = mo5733a(v);
        if (a >= 0) {
            return a;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v);
    }

    /* renamed from: a */
    protected int mo5733a(V v) {
        return 1;
    }

    public final int createCount() {
        int i;
        synchronized (this) {
            i = this.f2486e;
        }
        return i;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i;
        synchronized (this) {
            i = this.f2487f;
        }
        return i;
    }

    public final V get(K k) {
        if (k != null) {
            synchronized (this) {
                V v = this.f2482a.get(k);
                if (v != null) {
                    this.f2488g++;
                    return v;
                }
                this.f2489h++;
                return null;
            }
        }
        throw new NullPointerException("key == null");
    }

    public final int hitCount() {
        int i;
        synchronized (this) {
            i = this.f2488g;
        }
        return i;
    }

    public final int maxSize() {
        int i;
        synchronized (this) {
            i = this.f2484c;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this) {
            i = this.f2489h;
        }
        return i;
    }

    public final V put(K k, V v) {
        V put;
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            this.f2485d++;
            this.f2483b += m8927a(k, v);
            put = this.f2482a.put(k, v);
            if (put != null) {
                this.f2483b -= m8927a(k, put);
            }
        }
        trimToSize(this.f2484c);
        return put;
    }

    public final int putCount() {
        int i;
        synchronized (this) {
            i = this.f2485d;
        }
        return i;
    }

    public final V remove(K k) {
        V remove;
        if (k != null) {
            synchronized (this) {
                remove = this.f2482a.remove(k);
                if (remove != null) {
                    this.f2483b -= m8927a(k, remove);
                }
            }
            return remove;
        }
        throw new NullPointerException("key == null");
    }

    public void resize(int i) {
        if (i > 0) {
            synchronized (this) {
                this.f2484c = i;
            }
            trimToSize(i);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final int size() {
        int i;
        synchronized (this) {
            i = this.f2483b;
        }
        return i;
    }

    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this) {
            linkedHashMap = new LinkedHashMap(this.f2482a);
        }
        return linkedHashMap;
    }

    public final String toString() {
        String format;
        synchronized (this) {
            int i = this.f2488g + this.f2489h;
            format = String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f2484c), Integer.valueOf(this.f2488g), Integer.valueOf(this.f2489h), Integer.valueOf(i != 0 ? (this.f2488g * 100) / i : 0));
        }
        return format;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a4, code lost:
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
            int r0 = r0.f2483b     // Catch: all -> 0x00a5
            if (r0 < 0) goto L_0x007c
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f2482a     // Catch: all -> 0x00a5
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00a5
            if (r0 == 0) goto L_0x001a
            r0 = r6
            int r0 = r0.f2483b     // Catch: all -> 0x00a5
            if (r0 != 0) goto L_0x007c
        L_0x001a:
            r0 = r6
            int r0 = r0.f2483b     // Catch: all -> 0x00a5
            r1 = r7
            if (r0 <= r1) goto L_0x0079
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f2482a     // Catch: all -> 0x00a5
            boolean r0 = r0.isEmpty()     // Catch: all -> 0x00a5
            if (r0 == 0) goto L_0x002f
            goto L_0x0079
        L_0x002f:
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f2482a     // Catch: all -> 0x00a5
            java.util.Set r0 = r0.entrySet()     // Catch: all -> 0x00a5
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x00a5
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x00a5
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: all -> 0x00a5
            r8 = r0
            r0 = r8
            java.lang.Object r0 = r0.getKey()     // Catch: all -> 0x00a5
            r9 = r0
            r0 = r8
            java.lang.Object r0 = r0.getValue()     // Catch: all -> 0x00a5
            r8 = r0
            r0 = r6
            java.util.LinkedHashMap<K, V> r0 = r0.f2482a     // Catch: all -> 0x00a5
            r1 = r9
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x00a5
            r0 = r6
            r1 = r6
            int r1 = r1.f2483b     // Catch: all -> 0x00a5
            r2 = r6
            r3 = r9
            r4 = r8
            int r2 = r2.m8927a(r3, r4)     // Catch: all -> 0x00a5
            int r1 = r1 - r2
            r0.f2483b = r1     // Catch: all -> 0x00a5
            r0 = r6
            r1 = r6
            int r1 = r1.f2487f     // Catch: all -> 0x00a5
            r2 = 1
            int r1 = r1 + r2
            r0.f2487f = r1     // Catch: all -> 0x00a5
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00a5
            goto L_0x0000
        L_0x0079:
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00a5
            return
        L_0x007c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: all -> 0x00a5
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x00a5
            r8 = r0
            r0 = r8
            r0.<init>()     // Catch: all -> 0x00a5
            r0 = r8
            r1 = r6
            java.lang.Class r1 = r1.getClass()     // Catch: all -> 0x00a5
            java.lang.String r1 = r1.getName()     // Catch: all -> 0x00a5
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00a5
            r0 = r8
            java.lang.String r1 = ".sizeOf() is reporting inconsistent results!"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x00a5
            r0 = r9
            r1 = r8
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x00a5
            r0.<init>(r1)     // Catch: all -> 0x00a5
            r0 = r9
            throw r0     // Catch: all -> 0x00a5
        L_0x00a5:
            r9 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x00a5
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.p026b.C0535g.trimToSize(int):void");
    }
}
