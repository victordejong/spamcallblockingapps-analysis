package p081h.p203i.p204a.p224e.p259j.p266g;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: h.i.a.e.j.g.e2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/e2.class */
public final class C7577e2<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final C7577e2 f17815b;

    /* renamed from: a */
    public boolean f17816a = true;

    static {
        C7577e2 e2Var = new C7577e2();
        f17815b = e2Var;
        e2Var.f17816a = false;
    }

    public C7577e2() {
    }

    public C7577e2(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    public static int m20213a(Object obj) {
        if (obj instanceof byte[]) {
            return C7602h1.m20128a((byte[]) obj);
        }
        if (!(obj instanceof AbstractC7612i1)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: h */
    public static <K, V> C7577e2<K, V> m20208h() {
        return f17815b;
    }

    /* renamed from: a */
    public final void m20214a(C7577e2<K, V> e2Var) {
        m20210f();
        if (!e2Var.isEmpty()) {
            putAll(e2Var);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m20210f();
        super.clear();
    }

    /* renamed from: d */
    public final boolean m20212d() {
        return this.f17816a;
    }

    /* renamed from: e */
    public final C7577e2<K, V> m20211e() {
        return isEmpty() ? new C7577e2<>() : new C7577e2<>(this);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof java.util.Map
            if (r0 == 0) goto L_0x00aa
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto L_0x00a2
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0025
        L_0x0020:
            r0 = 0
            r6 = r0
            goto L_0x00a4
        L_0x0025:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
        L_0x0032:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00a2
            r0 = r7
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r8 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x005b
            goto L_0x0020
        L_0x005b:
            r0 = r8
            java.lang.Object r0 = r0.getValue()
            r4 = r0
            r0 = r5
            r1 = r8
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r0 = r0.get(r1)
            r8 = r0
            r0 = r4
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0092
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0092
            r0 = r4
            byte[] r0 = (byte[]) r0
            r1 = r8
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L_0x009a
        L_0x0092:
            r0 = r4
            r1 = r8
            boolean r0 = r0.equals(r1)
            r9 = r0
        L_0x009a:
            r0 = r9
            if (r0 != 0) goto L_0x0032
            goto L_0x0020
        L_0x00a2:
            r0 = 1
            r6 = r0
        L_0x00a4:
            r0 = r6
            if (r0 == 0) goto L_0x00aa
            r0 = 1
            return r0
        L_0x00aa:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p266g.C7577e2.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final void m20210f() {
        if (!this.f17816a) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: g */
    public final void m20209g() {
        this.f17816a = false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m20213a(entry.getValue()) ^ m20213a(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m20210f();
        C7602h1.m20132a(k);
        C7602h1.m20132a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m20210f();
        for (Object obj : map.keySet()) {
            C7602h1.m20132a(obj);
            C7602h1.m20132a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m20210f();
        return (V) super.remove(obj);
    }
}
