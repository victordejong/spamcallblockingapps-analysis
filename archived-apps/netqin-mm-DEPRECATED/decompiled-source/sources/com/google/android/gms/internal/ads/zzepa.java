package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.xa0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepa.class */
public final class zzepa<K, V> extends xa0<K, V, V> {
    static {
        zzeox.m12195a(Collections.emptyMap());
    }

    public zzepa(Map<K, zzeph<V>> map) {
        super(map);
    }

    /* renamed from: a */
    public static <K, V> zzepc<K, V> m12193a(int i) {
        return new zzepc<>(i);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        LinkedHashMap c = zzeot.m12200c(m26163a().size());
        for (Map.Entry<K, zzeph<V>> entry : m26163a().entrySet()) {
            c.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(c);
    }
}
