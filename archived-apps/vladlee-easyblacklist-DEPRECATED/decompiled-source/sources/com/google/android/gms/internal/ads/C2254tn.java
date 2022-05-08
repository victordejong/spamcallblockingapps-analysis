package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzn;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.ads.internal.zzq;
/* renamed from: com.google.android.gms.internal.ads.tn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tn.class */
final class C2254tn implements zzbuv {

    /* renamed from: a */
    private final Context f10515a;

    /* renamed from: b */
    private final zzazb f10516b;

    /* renamed from: c */
    private final zzdhe<zzbtw> f10517c;

    /* renamed from: d */
    private final zzczl f10518d;

    /* renamed from: e */
    private final zzbdi f10519e;

    private C2254tn(Context context, zzazb zzazbVar, zzdhe<zzbtw> zzdheVar, zzczl zzczlVar, zzbdi zzbdiVar) {
        this.f10515a = context;
        this.f10516b = zzazbVar;
        this.f10517c = zzdheVar;
        this.f10518d = zzczlVar;
        this.f10519e = zzbdiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2254tn(Context context, zzazb zzazbVar, zzdhe zzdheVar, zzczl zzczlVar, zzbdi zzbdiVar, byte b) {
        this(context, zzazbVar, zzdheVar, zzczlVar, zzbdiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final void zza(boolean z, Context context) {
        zzbtw zzbtwVar = (zzbtw) zzdgs.zzc(this.f10517c);
        this.f10519e.zzax(true);
        zzq.zzkq();
        zzg zzgVar = new zzg(false, zzawb.zzbb(this.f10515a), false, 0.0f, -1, z, this.f10518d.zzglv, false);
        zzq.zzkp();
        zzn.zza(context, new AdOverlayInfoParcel((zzty) null, zzbtwVar.zzaeo(), (zzt) null, this.f10519e, this.f10518d.zzglw, this.f10516b, this.f10518d.zzdkp, zzgVar, this.f10518d.zzglo.zzdhr, this.f10518d.zzglo.zzdht), true);
    }
}
