package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.zzq;
import java.util.Collections;
/* renamed from: com.google.android.gms.internal.ads.yd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/yd.class */
final class C2379yd implements zzcoz<zzbke> {

    /* renamed from: a */
    private final /* synthetic */ zzcwr f10711a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2379yd(zzcwr zzcwrVar) {
        this.f10711a = zzcwrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final /* synthetic */ void onSuccess(zzbke zzbkeVar) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        zzazb zzazbVar;
        ViewGroup viewGroup3;
        zzuj zza;
        ViewGroup viewGroup4;
        zzuj zza2;
        zzcwz zzcwzVar;
        ViewGroup viewGroup5;
        zzbke zzbkeVar2 = zzbkeVar;
        if (this.f10711a.f14002a != null) {
            this.f10711a.f14002a.destroy();
        }
        zzcwr zzcwrVar = this.f10711a;
        zzcwrVar.f14002a = zzbkeVar2;
        viewGroup = zzcwrVar.f14005d;
        viewGroup.removeAllViews();
        viewGroup2 = this.f10711a.f14005d;
        viewGroup2.addView(zzbkeVar2.zzaga(), zzq.zzks().zzwp());
        zzazbVar = this.f10711a.f14010i;
        if (zzazbVar.zzdwa < ((Integer) zzve.zzoy().zzd(zzzn.zzcoh)).intValue()) {
            com.google.android.gms.ads.internal.overlay.zzq a = zzcwr.m3676a(this.f10711a, zzbkeVar2);
            RelativeLayout.LayoutParams a2 = zzcwr.m3678a(zzbkeVar2);
            a.zzal(zzbkeVar2.zzagb());
            viewGroup5 = this.f10711a.f14005d;
            viewGroup5.addView(a, a2);
        }
        zzbkeVar2.zza(this.f10711a);
        viewGroup3 = this.f10711a.f14005d;
        zza = zzczy.zza(r1.f14004c, Collections.singletonList(this.f10711a.f14002a.zzafz()));
        viewGroup3.setMinimumHeight(zza.heightPixels);
        viewGroup4 = this.f10711a.f14005d;
        zza2 = zzczy.zza(r1.f14004c, Collections.singletonList(this.f10711a.f14002a.zzafz()));
        viewGroup4.setMinimumWidth(zza2.widthPixels);
        zzcwzVar = this.f10711a.f14009h;
        zzcwzVar.zzb(new zzbkg(zzbkeVar2, this.f10711a));
        zzbkeVar2.zzagf();
    }

    @Override // com.google.android.gms.internal.ads.zzcoz
    public final void zzamx() {
        this.f10711a.f14002a = null;
    }
}
