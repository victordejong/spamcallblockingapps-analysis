package com.google.android.gms.common.util;

import androidx.p026b.C0529a;
import androidx.p026b.C0531c;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/CollectionUtils.class */
public final class CollectionUtils {
    private CollectionUtils() {
    }

    /* renamed from: a */
    private static <K, V> Map<K, V> m5569a(int i) {
        return i <= 256 ? new C0529a(i) : new HashMap(i, 1.0f);
    }

    /* renamed from: a */
    private static <T> Set<T> m5568a(int i, boolean z) {
        return i <= (z ? 128 : 256) ? new C0531c(i) : new HashSet(i, z ? 0.75f : 1.0f);
    }

    public static boolean isEmpty(Collection<?> collection) {
        if (collection == null) {
            return true;
        }
        return collection.isEmpty();
    }

    @Deprecated
    public static <T> List<T> listOf() {
        return Collections.emptyList();
    }

    @Deprecated
    public static <T> List<T> listOf(T t) {
        return Collections.singletonList(t);
    }

    @Deprecated
    public static <T> List<T> listOf(T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : listOf(tArr[0]) : listOf();
    }

    public static <K, V> Map<K, V> mapOf(K k, V v, K k2, V v2, K k3, V v3) {
        Map a = m5569a(3);
        a.put(k, v);
        a.put(k2, v2);
        a.put(k3, v3);
        return Collections.unmodifiableMap(a);
    }

    public static <K, V> Map<K, V> mapOf(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        Map a = m5569a(6);
        a.put(k, v);
        a.put(k2, v2);
        a.put(k3, v3);
        a.put(k4, v4);
        a.put(k5, v5);
        a.put(k6, v6);
        return Collections.unmodifiableMap(a);
    }

    public static <K, V> Map<K, V> mapOfKeyValueArrays(K[] kArr, V[] vArr) {
        if (kArr.length == vArr.length) {
            int length = kArr.length;
            if (length == 0) {
                return Collections.emptyMap();
            }
            if (length == 1) {
                return Collections.singletonMap(kArr[0], vArr[0]);
            }
            Map a = m5569a(kArr.length);
            for (int i = 0; i < kArr.length; i++) {
                a.put(kArr[i], vArr[i]);
            }
            return Collections.unmodifiableMap(a);
        }
        int length2 = kArr.length;
        int length3 = vArr.length;
        StringBuilder sb = new StringBuilder(66);
        sb.append("Key and values array lengths not equal: ");
        sb.append(length2);
        sb.append(" != ");
        sb.append(length3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static <T> Set<T> mutableSetOfWithSize(int i) {
        return i == 0 ? new C0531c() : m5568a(i, true);
    }

    @Deprecated
    public static <T> Set<T> setOf(T t, T t2, T t3) {
        Set a = m5568a(3, false);
        a.add(t);
        a.add(t2);
        a.add(t3);
        return Collections.unmodifiableSet(a);
    }

    @Deprecated
    public static <T> Set<T> setOf(T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t = tArr[0];
            T t2 = tArr[1];
            Set a = m5568a(2, false);
            a.add(t);
            a.add(t2);
            return Collections.unmodifiableSet(a);
        } else if (length == 3) {
            return setOf(tArr[0], tArr[1], tArr[2]);
        } else {
            if (length != 4) {
                Set a2 = m5568a(tArr.length, false);
                Collections.addAll(a2, tArr);
                return Collections.unmodifiableSet(a2);
            }
            T t3 = tArr[0];
            T t4 = tArr[1];
            T t5 = tArr[2];
            T t6 = tArr[3];
            Set a3 = m5568a(4, false);
            a3.add(t3);
            a3.add(t4);
            a3.add(t5);
            a3.add(t6);
            return Collections.unmodifiableSet(a3);
        }
    }
}
