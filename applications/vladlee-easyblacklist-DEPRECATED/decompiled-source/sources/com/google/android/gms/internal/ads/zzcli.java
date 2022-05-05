package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbod;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcli.class */
public final class zzcli extends zzclk<zzbmj> {

    /* renamed from: a */
    private final zzbfx f13298a;

    /* renamed from: b */
    private final zzbvi f13299b;

    /* renamed from: c */
    private final zzbod.zza f13300c;

    /* renamed from: d */
    private final zzbrm f13301d;

    public zzcli(zzbfx zzbfxVar, zzbvi zzbviVar, zzbod.zza zzaVar, zzbrm zzbrmVar) {
        this.f13298a = zzbfxVar;
        this.f13299b = zzbviVar;
        this.f13300c = zzaVar;
        this.f13301d = zzbrmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclk
    /* renamed from: a */
    protected final zzdhe<zzbmj> mo3739a(zzczu zzczuVar, Bundle bundle) {
        return this.f13298a.zzacl().zza(this.f13300c.zza(zzczuVar).zze(bundle).zzahh()).zza(this.f13301d).zza(this.f13299b).zzadf().zzadc().zzaha();
    }
}
