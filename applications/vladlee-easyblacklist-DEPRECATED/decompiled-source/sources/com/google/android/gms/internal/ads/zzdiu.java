package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdte;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdiu.class */
public abstract class zzdiu<KeyProtoT extends zzdte, PublicKeyProtoT extends zzdte> extends zzdii<KeyProtoT> {

    /* renamed from: a */
    private final Class<PublicKeyProtoT> f14331a;

    /* JADX INFO: Access modifiers changed from: protected */
    @SafeVarargs
    public zzdiu(Class<KeyProtoT> cls, Class<PublicKeyProtoT> cls2, zzdik<?, KeyProtoT>... zzdikVarArr) {
        super(cls, zzdikVarArr);
        this.f14331a = cls2;
    }
}
