package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbod;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcln.class */
public final class zzcln extends zzclk<zzcbb> {

    /* renamed from: a */
    private final zzbfx f13320a;

    /* renamed from: b */
    private final zzbod.zza f13321b;

    /* renamed from: c */
    private final zzbrm f13322c;

    public zzcln(zzbfx zzbfxVar, zzbod.zza zzaVar, zzbrm zzbrmVar) {
        this.f13320a = zzbfxVar;
        this.f13321b = zzaVar;
        this.f13322c = zzbrmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclk
    /* renamed from: a */
    protected final zzdhe<zzcbb> mo3739a(zzczu zzczuVar, Bundle bundle) {
        return this.f13320a.zzacm().zze(this.f13321b.zza(zzczuVar).zze(bundle).zzahh()).zze(this.f13322c).zzaes().zzadc().zzaha();
    }
}
