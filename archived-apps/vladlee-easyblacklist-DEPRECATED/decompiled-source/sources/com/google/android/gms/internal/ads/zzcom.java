package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcom.class */
public final class zzcom extends zzvq {

    /* renamed from: a */
    private final Context f13453a;

    /* renamed from: b */
    private final zzbfx f13454b;

    /* renamed from: c */
    private final zzczw f13455c = new zzczw();

    /* renamed from: d */
    private final zzbxb f13456d = new zzbxb();

    /* renamed from: e */
    private zzvh f13457e;

    public zzcom(zzbfx zzbfxVar, Context context, String str) {
        this.f13454b = zzbfxVar;
        this.f13455c.zzgk(str);
        this.f13453a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        this.f13455c.zzb(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzaby zzabyVar) {
        this.f13455c.zzb(zzabyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzadi zzadiVar) {
        this.f13456d.zzb(zzadiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzadj zzadjVar) {
        this.f13456d.zzb(zzadjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzadu zzaduVar, zzuj zzujVar) {
        this.f13456d.zza(zzaduVar);
        this.f13455c.zzd(zzujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzadv zzadvVar) {
        this.f13456d.zzb(zzadvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzagz zzagzVar) {
        this.f13455c.zzb(zzagzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(zzahh zzahhVar) {
        this.f13456d.zzb(zzahhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zza(String str, zzadp zzadpVar, zzado zzadoVar) {
        this.f13456d.zzb(str, zzadpVar, zzadoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zzb(zzvh zzvhVar) {
        this.f13457e = zzvhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final void zzb(zzwi zzwiVar) {
        this.f13455c.zzc(zzwiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvn
    public final zzvm zzpd() {
        zzbwz zzajw = this.f13456d.zzajw();
        this.f13455c.zzb(zzajw.zzaju());
        this.f13455c.zzc(zzajw.zzajv());
        zzczw zzczwVar = this.f13455c;
        if (zzczwVar.zzjz() == null) {
            zzczwVar.zzd(zzuj.zzg(this.f13453a));
        }
        return new zzcol(this.f13453a, this.f13454b, this.f13455c, zzajw, this.f13457e);
    }
}
