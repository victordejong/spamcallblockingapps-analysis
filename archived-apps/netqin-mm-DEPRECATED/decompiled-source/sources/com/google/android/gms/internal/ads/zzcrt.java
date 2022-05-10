package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrt.class */
public final class zzcrt implements zzeoy<zzcru> {

    /* renamed from: a */
    public final zzeph<Context> f26443a;

    public zzcrt(zzeph<Context> zzephVar) {
        this.f26443a = zzephVar;
    }

    /* renamed from: a */
    public static zzcrt m13905a(zzeph<Context> zzephVar) {
        return new zzcrt(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcru(this.f26443a.get());
    }
}
