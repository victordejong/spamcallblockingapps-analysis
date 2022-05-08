package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Map;
/* JADX WARN: Incorrect field signature: TK; */
/* renamed from: h.i.a.e.j.j.u3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/u3.class */
public final class C7933u3 implements Comparable<C7933u3>, Map.Entry<K, V> {

    /* renamed from: a */
    public final Comparable f18609a;

    /* renamed from: b */
    public V f18610b;

    /* renamed from: c */
    public final /* synthetic */ C7876n3 f18611c;

    /* JADX WARN: Multi-variable type inference failed */
    public C7933u3(C7876n3 n3Var, K k, V v) {
        this.f18611c = n3Var;
        this.f18609a = k;
        this.f18610b = v;
    }

    public C7933u3(C7876n3 n3Var, Map.Entry<K, V> entry) {
        this(n3Var, (Comparable) entry.getKey(), entry.getValue());
    }

    /* renamed from: a */
    public static boolean m18863a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C7933u3 u3Var) {
        return ((Comparable) getKey()).compareTo((Comparable) u3Var.getKey());
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return m18863a(this.f18609a, entry.getKey()) && m18863a(this.f18610b, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f18609a;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.f18610b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f18609a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        V v = this.f18610b;
        if (v != 0) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.f18611c.m19129f();
        V v2 = this.f18610b;
        this.f18610b = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f18609a);
        String valueOf2 = String.valueOf(this.f18610b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
