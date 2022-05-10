package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeko;
import com.google.android.gms.internal.ads.zzelj;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.z70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/z70.class */
public final class z70<K> implements Map.Entry<K, Object> {

    /* renamed from: a */
    public Map.Entry<K, zzeko> f16262a;

    public z70(Map.Entry<K, zzeko> entry) {
        this.f16262a = entry;
    }

    /* renamed from: a */
    public final zzeko m26098a() {
        return this.f16262a.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f16262a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f16262a.getValue() == null) {
            return null;
        }
        zzeko.m12359c();
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzelj) {
            return this.f16262a.getValue().m12353b((zzelj) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
