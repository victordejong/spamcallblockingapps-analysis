package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzso;
import com.google.android.gms.internal.ads.zzsy;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccw.class */
public final class zzccw implements zzbow, zzbpe, zzbqb, zzbqx, zzbri, zzty {

    /* renamed from: a */
    private final zzsm f12952a;

    /* renamed from: b */
    private boolean f12953b = false;

    /* renamed from: c */
    private boolean f12954c = false;

    public zzccw(zzsm zzsmVar, @Nullable zzcxw zzcxwVar) {
        this.f12952a = zzsmVar;
        zzsmVar.zza(zzso.zza.EnumC3503zza.AD_REQUEST);
        if (zzcxwVar != null) {
            zzsmVar.zza(zzso.zza.EnumC3503zza.REQUEST_IS_PREFETCH);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final void onAdClicked() {
        synchronized (this) {
            if (!this.f12954c) {
                this.f12952a.zza(zzso.zza.EnumC3503zza.AD_FIRST_CLICK);
                this.f12954c = true;
                return;
            }
            this.f12952a.zza(zzso.zza.EnumC3503zza.AD_SUBSEQUENT_CLICK);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbow
    public final void onAdFailedToLoad(int i) {
        zzsm zzsmVar;
        zzso.zza.EnumC3503zza zzaVar;
        switch (i) {
            case 1:
                zzsmVar = this.f12952a;
                zzaVar = zzso.zza.EnumC3503zza.AD_FAILED_TO_LOAD_INVALID_REQUEST;
                break;
            case 2:
                zzsmVar = this.f12952a;
                zzaVar = zzso.zza.EnumC3503zza.AD_FAILED_TO_LOAD_NETWORK_ERROR;
                break;
            case 3:
                zzsmVar = this.f12952a;
                zzaVar = zzso.zza.EnumC3503zza.AD_FAILED_TO_LOAD_NO_FILL;
                break;
            case 4:
                zzsmVar = this.f12952a;
                zzaVar = zzso.zza.EnumC3503zza.AD_FAILED_TO_LOAD_TIMEOUT;
                break;
            case 5:
                zzsmVar = this.f12952a;
                zzaVar = zzso.zza.EnumC3503zza.AD_FAILED_TO_LOAD_CANCELLED;
                break;
            case 6:
                zzsmVar = this.f12952a;
                zzaVar = zzso.zza.EnumC3503zza.AD_FAILED_TO_LOAD_NO_ERROR;
                break;
            case 7:
                zzsmVar = this.f12952a;
                zzaVar = zzso.zza.EnumC3503zza.AD_FAILED_TO_LOAD_NOT_FOUND;
                break;
            default:
                zzsmVar = this.f12952a;
                zzaVar = zzso.zza.EnumC3503zza.AD_FAILED_TO_LOAD;
                break;
        }
        zzsmVar.zza(zzaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final void onAdImpression() {
        synchronized (this) {
            this.f12952a.zza(zzso.zza.EnumC3503zza.AD_IMPRESSION);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        this.f12952a.zza(zzso.zza.EnumC3503zza.AD_LOADED);
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final void zza(final zzsy.zza zzaVar) {
        this.f12952a.zza(new zzsp(zzaVar) { // from class: com.google.android.gms.internal.ads.qm

            /* renamed from: a */
            private final zzsy.zza f10368a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10368a = zzaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                zztuVar.zzcbb = this.f10368a;
            }
        });
        this.f12952a.zza(zzso.zza.EnumC3503zza.REQUEST_LOADED_FROM_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzaqk zzaqkVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(final zzczt zzcztVar) {
        this.f12952a.zza(new zzsp(zzcztVar) { // from class: com.google.android.gms.internal.ads.qk

            /* renamed from: a */
            private final zzczt f10366a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10366a = zzcztVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                zzczt zzcztVar2 = this.f10366a;
                zztuVar.zzcay.zzbzw.zzbzo = zzcztVar2.zzgmi.zzgmf.zzbzo;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final void zzb(final zzsy.zza zzaVar) {
        this.f12952a.zza(new zzsp(zzaVar) { // from class: com.google.android.gms.internal.ads.ql

            /* renamed from: a */
            private final zzsy.zza f10367a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10367a = zzaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                zztuVar.zzcbb = this.f10367a;
            }
        });
        this.f12952a.zza(zzso.zza.EnumC3503zza.REQUEST_SAVED_TO_CACHE);
    }

    @Override // com.google.android.gms.internal.ads.zzbri
    public final void zzc(final zzsy.zza zzaVar) {
        this.f12952a.zza(new zzsp(zzaVar) { // from class: com.google.android.gms.internal.ads.qn

            /* renamed from: a */
            private final zzsy.zza f10369a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10369a = zzaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                zztuVar.zzcbb = this.f10369a;
            }
        });
        this.f12952a.zza(zzso.zza.EnumC3503zza.REQUEST_PREFETCH_INTERCEPTED);
    }
}
