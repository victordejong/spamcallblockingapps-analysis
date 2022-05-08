package kotlin.collections;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.markers.KMutableMap;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\t\b\u0004¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\b\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0006\u001a\u00028��2\u0006\u0010\u0007\u001a\u00028\u0001H&¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lkotlin/collections/AbstractMutableMap;", "K", "V", "Ljava/util/Map;", "Lkotlin/jvm/internal/markers/KMutableMap;", "Ljava/util/AbstractMap;", "key", FirebaseAnalytics.Param.VALUE, "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMutableMap.class */
public abstract class AbstractMutableMap<K, V> extends AbstractMap<K, V> implements Map<K, V>, KMutableMap {
    /* renamed from: a */
    public abstract Set mo784a();

    /* renamed from: b */
    public /* bridge */ Set mo783b() {
        return super.keySet();
    }

    /* renamed from: e */
    public /* bridge */ int mo782e() {
        return super.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return mo784a();
    }

    /* renamed from: f */
    public /* bridge */ Collection m2356f() {
        return super.values();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return mo783b();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return mo782e();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<V> values() {
        return m2356f();
    }
}
