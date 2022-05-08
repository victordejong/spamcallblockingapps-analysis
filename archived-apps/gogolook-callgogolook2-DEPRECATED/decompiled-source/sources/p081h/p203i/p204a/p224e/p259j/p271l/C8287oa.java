package p081h.p203i.p204a.p224e.p259j.p271l;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: h.i.a.e.j.l.oa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/oa.class */
public final class C8287oa<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: a */
    public boolean f19107a = true;

    static {
        new C8287oa().f19107a = false;
    }

    public C8287oa() {
    }

    public C8287oa(Map<K, V> map) {
        super(map);
    }

    /* renamed from: a */
    public static int m18241a(Object obj) {
        if (obj instanceof byte[]) {
            return C8302p9.m18201a((byte[]) obj);
        }
        if (!(obj instanceof AbstractC8286o9)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    /* renamed from: L */
    public final void m18243L() {
        if (!this.f19107a) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public final void m18242a(C8287oa<K, V> oaVar) {
        m18243L();
        if (!oaVar.isEmpty()) {
            putAll(oaVar);
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        m18243L();
        super.clear();
    }

    /* renamed from: d */
    public final boolean m18240d() {
        return this.f19107a;
    }

    /* renamed from: e */
    public final void m18239e() {
        this.f19107a = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00a9 A[RETURN] */
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
            if (r0 == 0) goto L_0x00ab
            r0 = r4
            java.util.Map r0 = (java.util.Map) r0
            r5 = r0
            r0 = r3
            r1 = r5
            if (r0 == r1) goto L_0x00a3
            r0 = r3
            int r0 = r0.size()
            r1 = r5
            int r1 = r1.size()
            if (r0 == r1) goto L_0x0025
        L_0x0020:
            r0 = 0
            r6 = r0
            goto L_0x00a5
        L_0x0025:
            r0 = r3
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x0031:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00a3
            r0 = r4
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r7 = r0
            r0 = r5
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0058
            goto L_0x0020
        L_0x0058:
            r0 = r7
            java.lang.Object r0 = r0.getValue()
            r8 = r0
            r0 = r5
            r1 = r7
            java.lang.Object r1 = r1.getKey()
            java.lang.Object r0 = r0.get(r1)
            r7 = r0
            r0 = r8
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0092
            r0 = r7
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto L_0x0092
            r0 = r8
            byte[] r0 = (byte[]) r0
            r1 = r7
            byte[] r1 = (byte[]) r1
            boolean r0 = java.util.Arrays.equals(r0, r1)
            r9 = r0
            goto L_0x009b
        L_0x0092:
            r0 = r8
            r1 = r7
            boolean r0 = r0.equals(r1)
            r9 = r0
        L_0x009b:
            r0 = r9
            if (r0 != 0) goto L_0x0031
            goto L_0x0020
        L_0x00a3:
            r0 = 1
            r6 = r0
        L_0x00a5:
            r0 = r6
            if (r0 == 0) goto L_0x00ab
            r0 = 1
            return r0
        L_0x00ab:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8287oa.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final C8287oa<K, V> m18238f() {
        return isEmpty() ? new C8287oa<>() : new C8287oa<>(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += m18241a(entry.getValue()) ^ m18241a(entry.getKey());
        }
        return i;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        m18243L();
        C8302p9.m18205a(k);
        C8302p9.m18205a(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        m18243L();
        for (Object obj : map.keySet()) {
            C8302p9.m18205a(obj);
            C8302p9.m18205a(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        m18243L();
        return (V) super.remove(obj);
    }
}
