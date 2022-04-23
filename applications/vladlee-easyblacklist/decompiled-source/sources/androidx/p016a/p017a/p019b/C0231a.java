package androidx.p016a.p017a.p019b;

import androidx.p016a.p017a.p019b.C0232b;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.a.a.b.a */
/* loaded from: classes-dex2jar.jar:androidx/a/a/b/a.class */
public final class C0231a<K, V> extends C0232b<K, V> {

    /* renamed from: b */
    private HashMap<K, C0232b.C0235c<K, V>> f504b = new HashMap<>();

    @Override // androidx.p016a.p017a.p019b.C0232b
    /* renamed from: a */
    protected final C0232b.C0235c<K, V> mo9973a(K k) {
        return this.f504b.get(k);
    }

    @Override // androidx.p016a.p017a.p019b.C0232b
    /* renamed from: a */
    public final V mo9972a(K k, V v) {
        C0232b.C0235c<K, V> a = mo9973a(k);
        if (a != null) {
            return a.f510b;
        }
        this.f504b.put(k, m9969b(k, v));
        return null;
    }

    @Override // androidx.p016a.p017a.p019b.C0232b
    /* renamed from: b */
    public final V mo9970b(K k) {
        V v = (V) super.mo9970b(k);
        this.f504b.remove(k);
        return v;
    }

    /* renamed from: c */
    public final boolean m9976c(K k) {
        return this.f504b.containsKey(k);
    }

    /* renamed from: d */
    public final Map.Entry<K, V> m9975d(K k) {
        if (m9976c(k)) {
            return this.f504b.get(k).f512d;
        }
        return null;
    }
}
