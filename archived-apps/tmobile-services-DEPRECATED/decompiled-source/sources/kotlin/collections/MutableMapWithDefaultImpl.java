package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0006\n\u0002\u0010\u001f\n\u0002\b\u0006\b\u0002\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003B>\u0012\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010.\u0012!\u0010%\u001a\u001d\u0012\u0013\u0012\u00118��¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00028\u00010\"¢\u0006\u0004\b9\u0010:J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00028��H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\f\u0010\nJ\u001a\u0010\u000f\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\nJ\u001a\u0010\u0010\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0007\u001a\u00028��H\u0096\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00028\u00012\u0006\u0010\u0007\u001a\u00028��H\u0016¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u0018\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0007\u001a\u00028��2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J%\u0010\u001c\u001a\u00020\u00042\u0014\u0010\u001b\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010\u001e\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0007\u001a\u00028��H\u0016¢\u0006\u0004\b\u001e\u0010\u0011J\u000f\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!R1\u0010%\u001a\u001d\u0012\u0013\u0012\u00118��¢\u0006\f\b#\u0012\b\b$\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00028\u00010\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R(\u0010+\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010(0'8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00028��0'8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010*R(\u0010/\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010.8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u0016\u00104\u001a\u00020\u00138V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b3\u0010\u0015R\u001c\u00108\u001a\b\u0012\u0004\u0012\u00028\u0001058V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00107¨\u0006;"}, d2 = {"Lkotlin/collections/MutableMapWithDefaultImpl;", "K", "V", "Lkotlin/collections/MutableMapWithDefault;", "", "clear", "()V", "key", "", "containsKey", "(Ljava/lang/Object;)Z", FirebaseAnalytics.Param.VALUE, "containsValue", "", "other", "equals", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "getOrImplicitDefault", "", "hashCode", "()I", "isEmpty", "()Z", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "", Constants.MessagePayloadKeys.FROM, "putAll", "(Ljava/util/Map;)V", "remove", "", "toString", "()Ljava/lang/String;", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "default", "Lkotlin/Function1;", "", "", "getEntries", "()Ljava/util/Set;", "entries", "getKeys", "keys", "", "map", "Ljava/util/Map;", "getMap", "()Ljava/util/Map;", "getSize", "size", "", "getValues", "()Ljava/util/Collection;", "values", "<init>", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/MutableMapWithDefaultImpl.class */
final class MutableMapWithDefaultImpl<K, V> implements MutableMapWithDefault<K, V> {
    @NotNull

    /* renamed from: f */
    private final Map<K, V> f20533f;

    /* renamed from: g */
    private final Function1<K, V> f20534g;

    @NotNull
    /* renamed from: a */
    public Set<Map.Entry<K, V>> m2074a() {
        return getMap().entrySet();
    }

    @NotNull
    /* renamed from: b */
    public Set<K> m2073b() {
        return getMap().keySet();
    }

    @Override // java.util.Map
    public void clear() {
        getMap().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return getMap().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return getMap().containsValue(obj);
    }

    @Override // kotlin.collections.MapWithDefault
    /* renamed from: d */
    public V mo2072d(K k) {
        Map<K, V> map = getMap();
        V v = map.get(k);
        V v2 = v;
        if (v == null) {
            v2 = v;
            if (!map.containsKey(k)) {
                v2 = this.f20534g.invoke(k);
            }
        }
        return v2;
    }

    /* renamed from: e */
    public int m2071e() {
        return getMap().size();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return m2074a();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return getMap().equals(obj);
    }

    @NotNull
    /* renamed from: f */
    public Collection<V> m2070f() {
        return getMap().values();
    }

    @Override // java.util.Map
    @Nullable
    public V get(Object obj) {
        return getMap().get(obj);
    }

    @Override // kotlin.collections.MapWithDefault
    @NotNull
    public Map<K, V> getMap() {
        return this.f20533f;
    }

    @Override // java.util.Map
    public int hashCode() {
        return getMap().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return getMap().isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return m2073b();
    }

    @Override // java.util.Map
    @Nullable
    public V put(K k, V v) {
        return getMap().put(k, v);
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends K, ? extends V> from) {
        Intrinsics.m1830e(from, "from");
        getMap().putAll(from);
    }

    @Override // java.util.Map
    @Nullable
    public V remove(Object obj) {
        return getMap().remove(obj);
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return m2071e();
    }

    @NotNull
    public String toString() {
        return getMap().toString();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return m2070f();
    }
}
