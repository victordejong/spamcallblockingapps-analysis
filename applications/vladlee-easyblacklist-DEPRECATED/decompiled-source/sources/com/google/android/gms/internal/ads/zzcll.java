package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbod;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcll.class */
public final class zzcll extends zzclk<zzbtu> {

    /* renamed from: a */
    private final zzbfx f13309a;

    /* renamed from: b */
    private final zzbod.zza f13310b;

    /* renamed from: c */
    private final zzcns f13311c;

    /* renamed from: d */
    private final zzbrm f13312d;

    public zzcll(zzbfx zzbfxVar, zzbod.zza zzaVar, zzcns zzcnsVar, zzbrm zzbrmVar) {
        this.f13309a = zzbfxVar;
        this.f13310b = zzaVar;
        this.f13311c = zzcnsVar;
        this.f13312d = zzbrmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclk
    /* renamed from: a */
    protected final zzdhe<zzbtu> mo3739a(zzczu zzczuVar, Bundle bundle) {
        return this.f13309a.zzack().zzd(this.f13310b.zza(zzczuVar).zze(bundle).zzahh()).zzd(this.f13312d).zzb(this.f13311c).zzaek().zzadc().zzaha();
    }
}
