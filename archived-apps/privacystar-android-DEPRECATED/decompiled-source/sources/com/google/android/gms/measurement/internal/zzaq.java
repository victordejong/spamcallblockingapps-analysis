package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaq.class */
public final class zzaq implements Runnable {
    private final /* synthetic */ int zzamh;
    private final /* synthetic */ String zzami;
    private final /* synthetic */ Object zzamj;
    private final /* synthetic */ Object zzamk;
    private final /* synthetic */ Object zzaml;
    private final /* synthetic */ zzap zzamm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(zzap zzapVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.zzamm = zzapVar;
        this.zzamh = i;
        this.zzami = str;
        this.zzamj = obj;
        this.zzamk = obj2;
        this.zzaml = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        zzba zzgp = this.zzamm.zzadj.zzgp();
        if (!zzgp.isInitialized()) {
            this.zzamm.zza(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.zzamm.zzalw;
        if (c == 0) {
            if (this.zzamm.zzgq().zzdw()) {
                zzap zzapVar = this.zzamm;
                this.zzamm.zzgr();
                zzapVar.zzalw = 'C';
            } else {
                zzap zzapVar2 = this.zzamm;
                this.zzamm.zzgr();
                zzapVar2.zzalw = 'c';
            }
        }
        j = this.zzamm.zzadt;
        if (j < 0) {
            this.zzamm.zzadt = this.zzamm.zzgq().zzhc();
        }
        char charAt = "01VDIWEA?".charAt(this.zzamh);
        c2 = this.zzamm.zzalw;
        j2 = this.zzamm.zzadt;
        String zza = zzap.zza(true, this.zzami, this.zzamj, this.zzamk, this.zzaml);
        StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(zza);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.zzami.substring(0, 1024);
        }
        zzgp.zzand.zzc(str, 1L);
    }
}
