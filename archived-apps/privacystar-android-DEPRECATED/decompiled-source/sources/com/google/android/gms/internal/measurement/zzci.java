package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzci.class */
final class zzci implements zzbw<zzcj> {
    private final zzcj zzaap = new zzcj();
    private final zzaw zzvy;

    public zzci(zzaw zzawVar) {
        this.zzvy = zzawVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzbw
    public final void zza(String str, boolean z) {
        if ("ga_dryRun".equals(str)) {
            this.zzaap.zzaau = z ? 1 : 0;
            return;
        }
        this.zzvy.zzby().zzd("Bool xml configuration name not recognized", str);
    }

    @Override // com.google.android.gms.internal.measurement.zzbw
    public final void zzb(String str, int i) {
        if ("ga_dispatchPeriod".equals(str)) {
            this.zzaap.zzaat = i;
        } else {
            this.zzvy.zzby().zzd("Int xml configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzbw
    public final void zzb(String str, String str2) {
    }

    @Override // com.google.android.gms.internal.measurement.zzbw
    public final void zzc(String str, String str2) {
        if ("ga_appName".equals(str)) {
            this.zzaap.zzaaq = str2;
        } else if ("ga_appVersion".equals(str)) {
            this.zzaap.zzaar = str2;
        } else if ("ga_logLevel".equals(str)) {
            this.zzaap.zzaas = str2;
        } else {
            this.zzvy.zzby().zzd("String xml configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzbw
    public final /* synthetic */ zzcj zzdv() {
        return this.zzaap;
    }
}
