package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.ads.internal.zzq;
/* renamed from: com.google.android.gms.internal.ads.ui */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ui.class */
final class C2276ui implements zzbuv {

    /* renamed from: a */
    private final Context f10563a;

    /* renamed from: b */
    private final zzcbn f10564b;

    /* renamed from: c */
    private final zzczu f10565c;

    /* renamed from: d */
    private final zzazb f10566d;

    /* renamed from: e */
    private final zzczl f10567e;

    /* renamed from: f */
    private final zzdhe<zzcbd> f10568f;

    /* renamed from: g */
    private final zzbdi f10569g;

    private C2276ui(Context context, zzcbn zzcbnVar, zzczu zzczuVar, zzazb zzazbVar, zzczl zzczlVar, zzdhe<zzcbd> zzdheVar, zzbdi zzbdiVar) {
        this.f10563a = context;
        this.f10564b = zzcbnVar;
        this.f10565c = zzczuVar;
        this.f10566d = zzazbVar;
        this.f10567e = zzczlVar;
        this.f10568f = zzdheVar;
        this.f10569g = zzbdiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2276ui(Context context, zzcbn zzcbnVar, zzczu zzczuVar, zzazb zzazbVar, zzczl zzczlVar, zzdhe zzdheVar, zzbdi zzbdiVar, byte b) {
        this(context, zzcbnVar, zzczuVar, zzazbVar, zzczlVar, zzdheVar, zzbdiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final void zza(boolean z, Context context) {
        final zzbdi zzbdiVar;
        zzcbd zzcbdVar = (zzcbd) zzdgs.zzc(this.f10568f);
        try {
            zzczl zzczlVar = this.f10567e;
            if (this.f10569g.zzaap()) {
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzciu)).booleanValue()) {
                    zzbdiVar = this.f10564b.zzc(this.f10565c.zzblm);
                    zzafy.zza(zzbdiVar, zzcbdVar.zzaev());
                    final zzccd zzccdVar = new zzccd();
                    zzccdVar.zza(this.f10563a, zzbdiVar.getView());
                    zzcbdVar.zzadx().zzb(zzbdiVar, true);
                    zzbdiVar.zzaaa().zza(new zzbeu(zzccdVar, zzbdiVar) { // from class: com.google.android.gms.internal.ads.uh

                        /* renamed from: a */
                        private final zzccd f10561a;

                        /* renamed from: b */
                        private final zzbdi f10562b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f10561a = zzccdVar;
                            this.f10562b = zzbdiVar;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbeu
                        public final void zzak(boolean z2) {
                            zzccd zzccdVar2 = this.f10561a;
                            zzbdi zzbdiVar2 = this.f10562b;
                            zzccdVar2.zzakx();
                            zzbdiVar2.zzzu();
                            zzbdiVar2.zzaaa().zzaaz();
                        }
                    });
                    zzbev zzaaa = zzbdiVar.zzaaa();
                    zzbdiVar.getClass();
                    zzaaa.zza(C2277uj.m4463a(zzbdiVar));
                    zzbdiVar.zzb(zzczlVar.zzglo.zzdhr, zzczlVar.zzglo.zzdht, null);
                    zzbdiVar.zzax(true);
                    zzq.zzkq();
                    zzg zzgVar = new zzg(false, zzawb.zzbb(this.f10563a), false, 0.0f, -1, z, this.f10567e.zzglv, this.f10567e.zzblf);
                    zzq.zzkp();
                    zzn.zza(context, new AdOverlayInfoParcel((zzty) null, zzcbdVar.zzaeo(), (zzt) null, zzbdiVar, this.f10567e.zzglw, this.f10566d, this.f10567e.zzdkp, zzgVar, this.f10567e.zzglo.zzdhr, this.f10567e.zzglo.zzdht), true);
                }
            }
            zzbdiVar = this.f10569g;
            zzbdiVar.zzax(true);
            zzq.zzkq();
            zzg zzgVar2 = new zzg(false, zzawb.zzbb(this.f10563a), false, 0.0f, -1, z, this.f10567e.zzglv, this.f10567e.zzblf);
            zzq.zzkp();
            zzn.zza(context, new AdOverlayInfoParcel((zzty) null, zzcbdVar.zzaeo(), (zzt) null, zzbdiVar, this.f10567e.zzglw, this.f10566d, this.f10567e.zzdkp, zzgVar2, this.f10567e.zzglo.zzdhr, this.f10567e.zzglo.zzdht), true);
        } catch (zzbdv e) {
            zzayu.zzc("", e);
        }
    }
}
