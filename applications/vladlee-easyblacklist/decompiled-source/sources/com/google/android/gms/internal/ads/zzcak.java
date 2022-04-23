package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcak.class */
public final class zzcak implements zzafn<Object> {

    /* renamed from: a */
    private final zzado f12826a;

    /* renamed from: b */
    private final zzcaj f12827b;

    /* renamed from: c */
    private final zzdxa<zzcad> f12828c;

    public zzcak(zzbwz zzbwzVar, zzbws zzbwsVar, zzcaj zzcajVar, zzdxa<zzcad> zzdxaVar) {
        this.f12826a = zzbwzVar.zzga(zzbwsVar.getCustomTemplateId());
        this.f12827b = zzcajVar;
        this.f12828c = zzdxaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final void zza(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.f12826a.zza(this.f12828c.get(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzavs.zzd(sb.toString(), e);
        }
    }

    public final void zzakr() {
        if (this.f12826a != null) {
            this.f12827b.zza("/nativeAdCustomClick", this);
        }
    }
}
