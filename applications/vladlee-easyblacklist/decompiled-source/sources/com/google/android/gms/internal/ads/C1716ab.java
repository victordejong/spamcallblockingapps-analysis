package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ab */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ab.class */
public final class C1716ab extends zzbfk {

    /* renamed from: a */
    private final /* synthetic */ zzahr f7147a;

    private C1716ab(zzahr zzahrVar) {
        this.f7147a = zzahrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1716ab(zzahr zzahrVar, byte b) {
        this(zzahrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbfk
    public final void zza(zzbfn zzbfnVar) {
        zzaii zzaiiVar;
        zzaii zzaiiVar2;
        zzaiiVar = this.f7147a.f10929b;
        if (zzaiiVar != null) {
            zzaiiVar2 = this.f7147a.f10929b;
            zzaiiVar2.zzsa();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfk
    public final void zzb(zzbfn zzbfnVar) {
        this.f7147a.zzg(zzbfnVar.uri);
    }

    @Override // com.google.android.gms.internal.ads.zzbfk
    public final boolean zzc(zzbfn zzbfnVar) {
        return this.f7147a.zzg(zzbfnVar.uri);
    }
}
