package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdte;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdih.class */
public abstract class zzdih<KeyFormatProtoT extends zzdte, KeyT> {

    /* renamed from: a */
    private final Class<KeyFormatProtoT> f14309a;

    public zzdih(Class<KeyFormatProtoT> cls) {
        this.f14309a = cls;
    }

    public final Class<KeyFormatProtoT> zzasb() {
        return this.f14309a;
    }

    public abstract void zzc(KeyFormatProtoT keyformatprotot);

    public abstract KeyT zzd(KeyFormatProtoT keyformatprotot);

    public abstract KeyFormatProtoT zzq(zzdqk zzdqkVar);
}
