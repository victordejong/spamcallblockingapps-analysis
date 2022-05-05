package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbod;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclj.class */
public final class zzclj extends zzclk<zzbkk> {

    /* renamed from: a */
    private final zzbfx f13302a;

    /* renamed from: b */
    private final zzbod.zza f13303b;

    /* renamed from: c */
    private final zzcns f13304c;

    /* renamed from: d */
    private final zzbrm f13305d;

    /* renamed from: e */
    private final zzbvi f13306e;

    /* renamed from: f */
    private final zzbqp f13307f;

    /* renamed from: g */
    private final ViewGroup f13308g;

    public zzclj(zzbfx zzbfxVar, zzbod.zza zzaVar, zzcns zzcnsVar, zzbrm zzbrmVar, zzbvi zzbviVar, zzbqp zzbqpVar, ViewGroup viewGroup) {
        this.f13302a = zzbfxVar;
        this.f13303b = zzaVar;
        this.f13304c = zzcnsVar;
        this.f13305d = zzbrmVar;
        this.f13306e = zzbviVar;
        this.f13307f = zzbqpVar;
        this.f13308g = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzclk
    /* renamed from: a */
    protected final zzdhe<zzbkk> mo3739a(zzczu zzczuVar, Bundle bundle) {
        return this.f13302a.zzach().zzc(this.f13303b.zza(zzczuVar).zze(bundle).zzahh()).zzc(this.f13305d).zza(this.f13304c).zzb(this.f13306e).zza(new zzbma(this.f13307f)).zzb(new zzbkf(this.f13308g)).zzaee().zzadc().zzaha();
    }
}
