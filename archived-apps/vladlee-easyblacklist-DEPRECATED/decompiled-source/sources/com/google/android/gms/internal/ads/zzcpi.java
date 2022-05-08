package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzbrm;
import com.google.android.gms.internal.ads.zzcpj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpi.class */
public final class zzcpi extends zzaur {

    /* renamed from: a */
    private zzbfx f13691a;

    public zzcpi(zzbfx zzbfxVar) {
        this.f13691a = zzbfxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzauo
    public final void zza(IObjectWrapper iObjectWrapper, zzauu zzauuVar, zzaun zzaunVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        String str = zzauuVar.zzbqz;
        String str2 = zzauuVar.zzblx;
        zzdgs.zza(this.f13691a.zzaco().zzf(new zzbod.zza().zzbz(context).zza(new zzczw().zzgk(str).zzg(new zzuf().zzok()).zzd(zzauuVar.zzdpu).zzaos()).zzahh()).zza(new zzcpj(new zzcpj.zza().zzgj(str2), (byte) 0)).zzf(new zzbrm.zza().zzahw()).zzaet().zzaey(), new C2303vi(zzaunVar), this.f13691a.zzaca());
    }
}
