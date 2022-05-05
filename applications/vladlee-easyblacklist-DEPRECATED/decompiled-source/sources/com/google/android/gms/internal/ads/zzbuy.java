package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuy.class */
public final class zzbuy implements zzo, zzbqb {

    /* renamed from: a */
    private final Context f12434a;

    /* renamed from: b */
    private final zzbdi f12435b;

    /* renamed from: c */
    private final zzczl f12436c;

    /* renamed from: d */
    private final zzazb f12437d;

    /* renamed from: e */
    private final int f12438e;

    /* renamed from: f */
    private IObjectWrapper f12439f;

    public zzbuy(Context context, zzbdi zzbdiVar, zzczl zzczlVar, zzazb zzazbVar, int i) {
        this.f12434a = context;
        this.f12435b = zzbdiVar;
        this.f12436c = zzczlVar;
        this.f12437d = zzazbVar;
        this.f12438e = i;
    }

    @Override // com.google.android.gms.internal.ads.zzbqb
    public final void onAdLoaded() {
        int i = this.f12438e;
        if ((i == 7 || i == 3) && this.f12436c.zzdli && this.f12435b != null && zzq.zzlf().zzp(this.f12434a)) {
            int i2 = this.f12437d.zzdvz;
            int i3 = this.f12437d.zzdwa;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i2);
            sb.append(".");
            sb.append(i3);
            this.f12439f = zzq.zzlf().zza(sb.toString(), this.f12435b.getWebView(), "", "javascript", this.f12436c.zzgly.optInt("media_type", -1) == 0 ? null : "javascript");
            if (this.f12439f != null && this.f12435b.getView() != null) {
                zzq.zzlf().zza(this.f12439f, this.f12435b.getView());
                this.f12435b.zzan(this.f12439f);
                zzq.zzlf().zzab(this.f12439f);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzte() {
        this.f12439f = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zztf() {
        zzbdi zzbdiVar;
        if (this.f12439f != null && (zzbdiVar = this.f12435b) != null) {
            zzbdiVar.zza("onSdkImpression", new HashMap());
        }
    }
}
