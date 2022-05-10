package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqs.class */
public final class zzbqs<AdT> implements zzbqp<AdT> {

    /* renamed from: a */
    public final Map<String, zzcta<AdT>> f25388a;

    public zzbqs(Map<String, zzcta<AdT>> map) {
        this.f25388a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbqp
    /* renamed from: a */
    public final zzcta<AdT> mo15155a(int i, String str) {
        return this.f25388a.get(str);
    }
}
