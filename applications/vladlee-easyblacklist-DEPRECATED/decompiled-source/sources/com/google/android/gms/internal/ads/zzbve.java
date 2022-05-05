package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import javax.annotation.ParametersAreNonnullByDefault;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbve.class */
public final class zzbve implements zzbov, zzbsm {

    /* renamed from: a */
    private final zzats f12451a;

    /* renamed from: b */
    private final Context f12452b;

    /* renamed from: c */
    private final zzatv f12453c;

    /* renamed from: d */
    private final View f12454d;

    /* renamed from: e */
    private String f12455e;

    /* renamed from: f */
    private final int f12456f;

    public zzbve(zzats zzatsVar, Context context, zzatv zzatvVar, View view, int i) {
        this.f12451a = zzatsVar;
        this.f12452b = context;
        this.f12453c = zzatvVar;
        this.f12454d = view;
        this.f12456f = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdClosed() {
        this.f12451a.zzam(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdLeftApplication() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onAdOpened() {
        View view = this.f12454d;
        if (!(view == null || this.f12455e == null)) {
            this.f12453c.zzg(view.getContext(), this.f12455e);
        }
        this.f12451a.zzam(true);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    public final void onRewardedVideoStarted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbsm
    public final void zzahx() {
        this.f12455e = this.f12453c.zzad(this.f12452b);
        String valueOf = String.valueOf(this.f12455e);
        String str = this.f12456f == 7 ? "/Rewarded" : "/Interstitial";
        this.f12455e = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzbov
    @ParametersAreNonnullByDefault
    public final void zzb(zzare zzareVar, String str, String str2) {
        if (this.f12453c.zzab(this.f12452b)) {
            try {
                this.f12453c.zza(this.f12452b, this.f12453c.zzag(this.f12452b), this.f12451a.getAdUnitId(), zzareVar.getType(), zzareVar.getAmount());
            } catch (RemoteException e) {
                zzavs.zzd("Remote Exception to get reward item.", e);
            }
        }
    }
}
