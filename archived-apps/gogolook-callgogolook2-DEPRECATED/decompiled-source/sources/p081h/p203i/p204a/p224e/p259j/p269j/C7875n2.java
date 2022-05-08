package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: h.i.a.e.j.j.n2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/n2.class */
public final class C7875n2<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b */
    public static final C7875n2 f18440b;

    /* renamed from: a */
    public boolean f18441a = true;

    static {
        C7875n2 n2Var = new C7875n2();
        f18440b = n2Var;
        n2Var.f18441a = false;
    }

    public C7875n2() {
    }

    public C7875n2(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    public static int m19148a(Object obj) {
        if (obj instanceof byte[]) {
            return C7891p1.m19101a((byte[]) obj);
        }
        if (!(obj instanceof AbstractC7898q1)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: g */
    public static <K, V> C7875n2<K, V> m19144g() {
        return f18440b;
    }

    /* renamed from: a */
    public final void m19150a() {
        this.f18441a = false;
    }

    /* renamed from: a */
    public final void m19149a(C7875n2<K, V> n2Var) {
        m19145f();
        if (!n2Var.isEmpty()) {
            putAll(n2Var);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m19145f();
        super.clear();
    }

    /* renamed from: d */
    public final boolean m19147d() {
        return this.f18441a;
    }

    /* renamed from: e */
    public final C7875n2<K, V> m19146e() {
        return isEmpty() ? new C7875n2<>() : new C7875n2<>(this);
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p269j.C7875n2.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final void m19145f() {
        if (!this.f18441a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m19148a(entry.getValue()) ^ m19148a(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m19145f();
        C7891p1.m19105a(k);
        C7891p1.m19105a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m19145f();
        for (Object obj : map.keySet()) {
            C7891p1.m19105a(obj);
            C7891p1.m19105a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m19145f();
        return (V) super.remove(obj);
    }
}
