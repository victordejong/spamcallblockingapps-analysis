package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0006\bÂ\u0002\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\t\b\u0002¢\u0006\u0004\b+\u0010,J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000e\u001a\u00020\u00062\b\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\bJ\u001c\u0010\u000f\u001a\u0004\u0018\u00010\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR*\u0010\u001f\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\t0\u001c0\u001b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001eR\u001e\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u001b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010\u001eR\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010&\u001a\u00020\u00118V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010\u0013R\u001c\u0010*\u001a\b\u0012\u0004\u0012\u00020\t0'8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lkotlin/collections/EmptyMap;", "Ljava/util/Map;", "Ljava/io/Serializable;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "key", "", "containsKey", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.VALUE, "containsValue", "(Ljava/lang/Void;)Z", "other", "equals", "get", "(Ljava/lang/Object;)Ljava/lang/Void;", "", "hashCode", "()I", "isEmpty", "()Z", "readResolve", "()Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "", "", "getEntries", "()Ljava/util/Set;", "entries", "getKeys", "keys", "", "serialVersionUID", "J", "getSize", "size", "", "getValues", "()Ljava/util/Collection;", "values", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/EmptyMap.class */
final class EmptyMap implements Map, Serializable, KMappedMarker {

    /* renamed from: f */
    public static final EmptyMap f20521f = new EmptyMap();
    private static final long serialVersionUID = 8246714829545688274L;

    private EmptyMap() {
    }

    private final Object readResolve() {
        return f20521f;
    }

    /* renamed from: a */
    public boolean m2119a(@NotNull Void value) {
        Intrinsics.m1830e(value, "value");
        return false;
    }

    @Nullable
    /* renamed from: b */
    public Void m2118b(@Nullable Object obj) {
        return null;
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean containsKey(@Nullable Object obj) {
        return false;
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof Void) {
            return m2119a((Void) obj);
        }
        return false;
    }

    @NotNull
    /* renamed from: e */
    public Set<Map.Entry> m2117e() {
        return EmptySet.f20522f;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry> entrySet() {
        return m2117e();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Map) && ((Map) obj).isEmpty();
    }

    @NotNull
    /* renamed from: f */
    public Set<Object> m2116f() {
        return EmptySet.f20522f;
    }

    /* renamed from: g */
    public int m2115g() {
        return 0;
    }

    @Override // java.util.Map
    public final /* bridge */ Object get(Object obj) {
        return m2118b(obj);
    }

    @NotNull
    /* renamed from: h */
    public Collection m2114h() {
        return EmptyList.f20520f;
    }

    @Override // java.util.Map
    public int hashCode() {
        return 0;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return true;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Object> keySet() {
        return m2116f();
    }

    @Override // java.util.Map
    public /* synthetic */ Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return m2115g();
    }

    @NotNull
    public String toString() {
        return "{}";
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        return m2114h();
    }
}
