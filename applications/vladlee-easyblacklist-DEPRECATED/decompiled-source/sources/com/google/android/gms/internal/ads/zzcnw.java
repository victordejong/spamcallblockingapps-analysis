package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnw.class */
public final class zzcnw implements zzcnq<zzbtu> {

    /* renamed from: a */
    private final Context f13425a;

    /* renamed from: b */
    private final zzbup f13426b;

    public zzcnw(Context context, zzbup zzbupVar) {
        this.f13425a = context;
        this.f13426b = zzbupVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcnq
    public final /* synthetic */ zzbtu zza(zzczt zzcztVar, zzczl zzczlVar, View view, zzcnt zzcntVar) {
        zzbtw zza = this.f13426b.zza(new zzbmt(zzcztVar, zzczlVar, null), new C2292uy(C2290uw.f10604a));
        zzcntVar.zza(new C2291ux(zza));
        return zza.zzaem();
    }
}
