package com.google.android.gms.internal.ads;

import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeot.class */
public final class zzeot {
    /* renamed from: a */
    public static <T> List<T> m12202a(int i) {
        return i == 0 ? Collections.emptyList() : new ArrayList(i);
    }

    /* renamed from: b */
    public static <T> HashSet<T> m12201b(int i) {
        return new HashSet<>(m12199d(i));
    }

    /* renamed from: c */
    public static <K, V> LinkedHashMap<K, V> m12200c(int i) {
        return new LinkedHashMap<>(m12199d(i));
    }

    /* renamed from: d */
    public static int m12199d(int i) {
        return i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
    }
}
