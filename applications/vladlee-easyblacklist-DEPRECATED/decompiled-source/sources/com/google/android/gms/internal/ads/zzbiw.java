package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiw.class */
public final class zzbiw implements zzbov, zzbpe, zzbqb, zzty {

    /* renamed from: a */
    private final Context f11936a;

    /* renamed from: b */
    private final zzczt f11937b;

    /* renamed from: c */
    private final zzczl f11938c;

    /* renamed from: d */
    private final zzdda f11939d;

    /* renamed from: e */
    private final zzdq f11940e;

    /* renamed from: f */
    private final View f11941f;

    /* renamed from: g */
    private boolean f11942g;

    /* renamed from: h */
    private boolean f11943h;

    public zzbiw(Context context, zzczt zzcztVar, zzczl zzczlVar, zzdda zzddaVar, View view, zzdq zzdqVar) {
        this.f11936a = context;
        this.f11937b = zzcztVar;
        this.f11938c = zzczlVar;
        this.f11939d = zzddaVar;
        this.f11940e = zzdqVar;
        this.f11941f = view;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final void onAdClicked() {
        zzdda zzddaVar = this.f11939d;
        zzczt zzcztVar = this.f11937b;
        zzczl zzczlVar = this.f11938c;
        zzddaVar.zza(zzcztVar, zzczlVar, zzczlVar.zzdbq);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdClosed() {
    }

    @Override // com.google.android.gms.internal.ads.zzbpe
    public final void onAdImpression() {
        synchronized (this) {
            if (!this.f11943h) {
                String str = null;
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzcls)).booleanValue()) {
                    str = this.f11940e.zzbw().zza(this.f11936a, this.f11941f, (Activity) null);
                }
                this.f11939d.zza(this.f11937b, this.f11938c, false, str, this.f11938c.zzdbr);
                this.f11943h = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        synchronized (this) {
            if (this.f11942g) {
                ArrayList arrayList = new ArrayList(this.f11938c.zzdbr);
                arrayList.addAll(this.f11938c.zzglk);
                this.f11939d.zza(this.f11937b, this.f11938c, true, null, arrayList);
            } else {
                this.f11939d.zza(this.f11937b, this.f11938c, this.f11938c.zzglm);
                this.f11939d.zza(this.f11937b, this.f11938c, this.f11938c.zzglk);
            }
            this.f11942g = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdOpened() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoCompleted() {
        zzdda zzddaVar = this.f11939d;
        zzczt zzcztVar = this.f11937b;
        zzczl zzczlVar = this.f11938c;
        zzddaVar.zza(zzcztVar, zzczlVar, zzczlVar.zzgll);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoStarted() {
        zzdda zzddaVar = this.f11939d;
        zzczt zzcztVar = this.f11937b;
        zzczl zzczlVar = this.f11938c;
        zzddaVar.zza(zzcztVar, zzczlVar, zzczlVar.zzdkz);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void zzb(zzare zzareVar, String str, String str2) {
        zzdda zzddaVar = this.f11939d;
        zzczt zzcztVar = this.f11937b;
        zzczl zzczlVar = this.f11938c;
        zzddaVar.zza(zzcztVar, zzczlVar, zzczlVar.zzdla, zzareVar);
    }
}
