package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxi.class */
public final class zzdxi<K, V> extends ali<K, V, V> {

    /* renamed from: a */
    private static final zzdxp<Map<Object, Object>> f14716a = zzdxf.zzbe(Collections.emptyMap());

    private zzdxi(Map<K, zzdxp<V>> map) {
        super(map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzdxi(Map map, byte b) {
        this(map);
    }

    public static <K, V> zzdxk<K, V> zzhl(int i) {
        return new zzdxk<>(i, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        LinkedHashMap zzhj = zzdxb.zzhj(m4945a().size());
        for (Map.Entry<K, zzdxp<V>> entry : m4945a().entrySet()) {
            zzhj.put(entry.getKey(), entry.getValue().get());
        }
        return Collections.unmodifiableMap(zzhj);
    }
}
