package com.google.android.gms.internal.ads;

import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxb.class */
public final class zzdxb {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> HashSet<T> m3296a(int i) {
        return new HashSet<>(m3295b(i));
    }

    /* renamed from: b */
    private static int m3295b(int i) {
        return i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : Api.BaseClientBuilder.API_PRIORITY_OTHER;
    }

    public static <T> List<T> zzhh(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    public static <K, V> LinkedHashMap<K, V> zzhj(int i) {
        return new LinkedHashMap<>(m3295b(i));
    }
}
