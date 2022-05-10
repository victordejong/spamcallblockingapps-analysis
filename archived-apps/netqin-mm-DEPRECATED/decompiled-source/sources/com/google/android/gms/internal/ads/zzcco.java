package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzua;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcco.class */
public final class zzcco implements zzp, zzbvs {

    /* renamed from: a */
    public final Context f25708a;

    /* renamed from: b */
    public final zzbgj f25709b;

    /* renamed from: c */
    public final zzdnv f25710c;

    /* renamed from: d */
    public final zzbbx f25711d;

    /* renamed from: e */
    public final zzua.zza.EnumC10505zza f25712e;
    @VisibleForTesting

    /* renamed from: f */
    public IObjectWrapper f25713f;

    public zzcco(Context context, zzbgj zzbgjVar, zzdnv zzdnvVar, zzbbx zzbbxVar, zzua.zza.EnumC10505zza zzaVar) {
        this.f25708a = context;
        this.f25709b = zzbgjVar;
        this.f25710c = zzdnvVar;
        this.f25711d = zzbbxVar;
        this.f25712e = zzaVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: B1 */
    public final void mo13537B1() {
        this.f25713f = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    /* renamed from: u1 */
    public final void mo13529u1() {
        zzbgj zzbgjVar;
        if (this.f25713f != null && (zzbgjVar = this.f25709b) != null) {
            zzbgjVar.mo15577a("onSdkImpression", new HashMap());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvs
    /* renamed from: x */
    public final void mo13495x() {
        zzua.zza.EnumC10505zza zzaVar = this.f25712e;
        if ((zzaVar == zzua.zza.EnumC10505zza.REWARD_BASED_VIDEO_AD || zzaVar == zzua.zza.EnumC10505zza.INTERSTITIAL || zzaVar == zzua.zza.EnumC10505zza.APP_OPEN) && this.f25710c.f27567N && this.f25709b != null && com.google.android.gms.ads.internal.zzp.m17954r().m16413b(this.f25708a)) {
            zzbbx zzbbxVar = this.f25711d;
            int i = zzbbxVar.f24760b;
            int i2 = zzbbxVar.f24761c;
            StringBuilder sb = new StringBuilder(23);
            sb.append(i);
            sb.append(".");
            sb.append(i2);
            IObjectWrapper a = com.google.android.gms.ads.internal.zzp.m17954r().m16415a(sb.toString(), this.f25709b.getWebView(), "", "javascript", this.f25710c.f27569P.m17915b());
            this.f25713f = a;
            if (a != null && this.f25709b.getView() != null) {
                com.google.android.gms.ads.internal.zzp.m17954r().m16416a(this.f25713f, this.f25709b.getView());
                this.f25709b.mo15590a(this.f25713f);
                com.google.android.gms.ads.internal.zzp.m17954r().m16417a(this.f25713f);
            }
        }
    }
}
