package kotlin.collections;

import com.google.android.gms.common.api.Api;
import java.util.Collections;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\b\u0002\n\u0002\u0010%\n��\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\n\u001a;\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u00012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0002H\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001aX\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u00012\u0006\u0010\b\u001a\u00020\u00072#\u0010\f\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\b\u000bH\u0081\bø\u0001��¢\u0006\u0004\b\r\u0010\u000e\u001aP\u0010\r\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u00012#\u0010\f\u001a\u001f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\b\u000bH\u0081\bø\u0001��¢\u0006\u0004\b\r\u0010\u000f\u001a'\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0001H\u0001¢\u0006\u0004\b\u0010\u0010\u0011\u001a/\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0002\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u00012\u0006\u0010\b\u001a\u00020\u0007H\u0001¢\u0006\u0004\b\u0010\u0010\u0012\u001a\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0001¢\u0006\u0004\b\u0014\u0010\u0015\u001a9\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u00012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0016¢\u0006\u0004\b\u0018\u0010\u0019\u001ac\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001e\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u00012\u000e\u0010\u001b\u001a\n\u0012\u0006\b��\u0012\u00028��0\u001a2*\u0010\u001d\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00160\u001c\"\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0016H\u0007¢\u0006\u0004\b\u001f\u0010 \u001a[\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001e\"\u000e\b��\u0010��*\b\u0012\u0004\u0012\u00028��0!\"\u0004\b\u0001\u0010\u00012*\u0010\u001d\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00160\u001c\"\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0016¢\u0006\u0004\b\u001f\u0010\"\u001aE\u0010'\u001a\u00028\u0001\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010$\u001a\u00028��2\f\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00010%H\u0086\bø\u0001��¢\u0006\u0004\b'\u0010(\u001a \u0010+\u001a\u00020**\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0\u0004H\u0087\b¢\u0006\u0004\b+\u0010,\u001a9\u0010-\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004H��¢\u0006\u0004\b-\u0010\u0006\u001a8\u0010.\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004H\u0081\b¢\u0006\u0004\b.\u0010\u0006\u001aA\u0010/\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001e\"\u000e\b��\u0010��*\b\u0012\u0004\u0012\u00028��0!\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0004¢\u0006\u0004\b/\u00100\u001aG\u0010/\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u001e\"\u0004\b��\u0010��\"\u0004\b\u0001\u0010\u0001*\u0010\u0012\u0006\b\u0001\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u00042\u000e\u0010\u001b\u001a\n\u0012\u0006\b��\u0012\u00028��0\u001a¢\u0006\u0004\b/\u00101\"\u0016\u00102\u001a\u00020\u00078\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b2\u00103\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00064"}, d2 = {"K", "V", "", "builder", "", "build", "(Ljava/util/Map;)Ljava/util/Map;", "", "capacity", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "builderAction", "buildMapInternal", "(ILkotlin/Function1;)Ljava/util/Map;", "(Lkotlin/Function1;)Ljava/util/Map;", "createMapBuilder", "()Ljava/util/Map;", "(I)Ljava/util/Map;", "expectedSize", "mapCapacity", "(I)I", "Lkotlin/Pair;", "pair", "mapOf", "(Lkotlin/Pair;)Ljava/util/Map;", "Ljava/util/Comparator;", "comparator", "", "pairs", "Ljava/util/SortedMap;", "sortedMapOf", "(Ljava/util/Comparator;[Lkotlin/Pair;)Ljava/util/SortedMap;", "", "([Lkotlin/Pair;)Ljava/util/SortedMap;", "Ljava/util/concurrent/ConcurrentMap;", "key", "Lkotlin/Function0;", "defaultValue", "getOrPut", "(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "", "Ljava/util/Properties;", "toProperties", "(Ljava/util/Map;)Ljava/util/Properties;", "toSingletonMap", "toSingletonMapOrSelf", "toSortedMap", "(Ljava/util/Map;)Ljava/util/SortedMap;", "(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/SortedMap;", "INT_MAX_POWER_OF_TWO", "I", "kotlin-stdlib"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "kotlin/collections/MapsKt")
/* loaded from: classes2-dex2jar.jar:kotlin/collections/MapsKt__MapsJVMKt.class */
public class MapsKt__MapsJVMKt extends MapsKt__MapWithDefaultKt {
    @PublishedApi
    /* renamed from: c */
    public static int m2088c(int i) {
        if (i >= 0) {
            i = i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        return i;
    }

    @NotNull
    /* renamed from: d */
    public static <K, V> Map<K, V> m2087d(@NotNull Pair<? extends K, ? extends V> pair) {
        Intrinsics.m1830e(pair, "pair");
        Map<K, V> singletonMap = Collections.singletonMap(pair.m2484c(), pair.m2483d());
        Intrinsics.m1831d(singletonMap, "java.util.Collections.si…(pair.first, pair.second)");
        return singletonMap;
    }

    @NotNull
    /* renamed from: e */
    public static final <K, V> Map<K, V> m2086e(@NotNull Map<? extends K, ? extends V> toSingletonMap) {
        Intrinsics.m1830e(toSingletonMap, "$this$toSingletonMap");
        Map.Entry<? extends K, ? extends V> next = toSingletonMap.entrySet().iterator().next();
        Map<K, V> singletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        Intrinsics.m1831d(singletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return singletonMap;
    }
}
