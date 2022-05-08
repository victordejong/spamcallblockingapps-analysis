package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.google.android.gms.internal.ads.ro */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ro.class */
final class C2201ro implements zzdgt<zzczt> {

    /* renamed from: a */
    private final /* synthetic */ zzcfx f10426a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2201ro(zzcfx zzcfxVar) {
        this.f10426a = zzcfxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(zzczt zzcztVar) {
        zzchz zzchzVar;
        zzchz zzchzVar2;
        zzczt zzcztVar2 = zzcztVar;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqf)).booleanValue()) {
            zzchzVar = this.f10426a.f13105e;
            zzchzVar.zzdk(zzcztVar2.zzgmi.zzgmf.responseCode);
            zzchzVar2 = this.f10426a.f13105e;
            zzchzVar2.zzeq(zzcztVar2.zzgmi.zzgmf.zzfwt);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        Pattern pattern;
        zzchz zzchzVar;
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcqf)).booleanValue()) {
            pattern = zzcfx.f13100f;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                zzchzVar = this.f10426a.f13105e;
                zzchzVar.zzdk(Integer.parseInt(group));
            }
        }
    }
}
