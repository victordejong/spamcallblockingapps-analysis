package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p012b.p035f.C0780a;
import p012b.p035f.C0782b;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/CollectionUtils.class */
public final class CollectionUtils {
    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m17103a() {
        return Collections.emptyList();
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m17101a(T t) {
        return Collections.singletonList(t);
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static <T> List<T> m17098a(T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : m17101a(tArr[0]) : m17103a();
    }

    @KeepForSdk
    /* renamed from: a */
    public static <K, V> Map<K, V> m17099a(K k, V v, K k2, V v2, K k3, V v3) {
        Map b = m17096b(3, false);
        b.put(k, v);
        b.put(k2, v2);
        b.put(k3, v3);
        return Collections.unmodifiableMap(b);
    }

    @KeepForSdk
    /* renamed from: a */
    public static <K, V> Map<K, V> m17097a(K[] kArr, V[] vArr) {
        if (kArr.length == vArr.length) {
            int length = kArr.length;
            if (length == 0) {
                return Collections.emptyMap();
            }
            if (length == 1) {
                return Collections.singletonMap(kArr[0], vArr[0]);
            }
            Map b = m17096b(kArr.length, false);
            for (int i = 0; i < kArr.length; i++) {
                b.put(kArr[i], vArr[i]);
            }
            return Collections.unmodifiableMap(b);
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

    /* renamed from: a */
    public static <T> Set<T> m17102a(int i, boolean z) {
        return i <= (z ? 128 : 256) ? new C0782b(i) : new HashSet(i, z ? 0.75f : 1.0f);
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: a */
    public static <T> Set<T> m17100a(T t, T t2, T t3) {
        Set a = m17102a(3, false);
        a.add(t);
        a.add(t2);
        a.add(t3);
        return Collections.unmodifiableSet(a);
    }

    /* renamed from: b */
    public static <K, V> Map<K, V> m17096b(int i, boolean z) {
        return i <= 256 ? new C0780a(i) : new HashMap(i, 1.0f);
    }

    @KeepForSdk
    @Deprecated
    /* renamed from: b */
    public static <T> Set<T> m17095b(T... tArr) {
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
            Set a = m17102a(2, false);
            a.add(t);
            a.add(t2);
            return Collections.unmodifiableSet(a);
        } else if (length == 3) {
            return m17100a(tArr[0], tArr[1], tArr[2]);
        } else {
            if (length != 4) {
                Set a2 = m17102a(tArr.length, false);
                Collections.addAll(a2, tArr);
                return Collections.unmodifiableSet(a2);
            }
            T t3 = tArr[0];
            T t4 = tArr[1];
            T t5 = tArr[2];
            T t6 = tArr[3];
            Set a3 = m17102a(4, false);
            a3.add(t3);
            a3.add(t4);
            a3.add(t5);
            a3.add(t6);
            return Collections.unmodifiableSet(a3);
        }
    }
}
