package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaj.class */
public final class zzaj extends zzf {
    private String zzafx;
    private String zzage;
    private long zzagh;
    private String zzagk;
    private int zzagy;
    private int zzalo;
    private long zzalp;
    private String zztr;
    private String zzts;
    private String zztt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaj(zzbt zzbtVar) {
        super(zzbtVar);
    }

    @WorkerThread
    @VisibleForTesting
    private final String zziz() {
        try {
            Class<?> loadClass = getContext().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
            if (loadClass == null) {
                return null;
            }
            try {
                Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, getContext());
                if (invoke == null) {
                    return null;
                }
                try {
                    return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                } catch (Exception e) {
                    zzgo().zzji().zzbx("Failed to retrieve Firebase Instance Id");
                    return null;
                }
            } catch (Exception e2) {
                zzgo().zzjh().zzbx("Failed to obtain Firebase Analytics instance");
                return null;
            }
        } catch (ClassNotFoundException e3) {
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String getGmpAppId() {
        zzcl();
        return this.zzafx;
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzal() {
        zzcl();
        return this.zztt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final zzh zzbr(String str) {
        zzaf();
        zzgb();
        String zzal = zzal();
        String gmpAppId = getGmpAppId();
        zzcl();
        String str2 = this.zzts;
        long zzja = zzja();
        zzcl();
        String str3 = this.zzage;
        long zzhc = zzgq().zzhc();
        zzcl();
        zzaf();
        if (this.zzalp == 0) {
            this.zzalp = this.zzadj.zzgm().zzd(getContext(), getContext().getPackageName());
        }
        long j = this.zzalp;
        boolean isEnabled = this.zzadj.isEnabled();
        boolean z = zzgp().zzanv;
        zzaf();
        zzgb();
        String zziz = (!zzgq().zzbc(this.zztt) || this.zzadj.isEnabled()) ? zziz() : null;
        zzcl();
        long j2 = this.zzagh;
        long zzkp = this.zzadj.zzkp();
        int zzjb = zzjb();
        zzn zzgq = zzgq();
        zzgq.zzgb();
        Boolean zzau = zzgq.zzau("google_analytics_adid_collection_enabled");
        boolean booleanValue = Boolean.valueOf(zzau == null || zzau.booleanValue()).booleanValue();
        zzn zzgq2 = zzgq();
        zzgq2.zzgb();
        Boolean zzau2 = zzgq2.zzau("google_analytics_ssaid_collection_enabled");
        return new zzh(zzal, gmpAppId, str2, zzja, str3, zzhc, j, str, isEnabled, !z, zziz, j2, zzkp, zzjb, booleanValue, Boolean.valueOf(zzau2 == null || zzau2.booleanValue()).booleanValue(), zzgp().zzjx(), zzgw());
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzgd() {
        return super.zzgd();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzcs zzge() {
        return super.zzge();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzaj zzgf() {
        return super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdr zzgg() {
        return super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdo zzgh() {
        return super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzal zzgi() {
        return super.zzgi();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzeq zzgj() {
        return super.zzgj();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgt() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:2|(1:4)(10:106|5|6|9|(1:11)(2:12|(1:14))|15|102|16|17|(12:19|20|21|22|(3:24|25|26)|27|28|29|30|104|31|32))|35|(1:40)(1:39)|41|(1:46)(1:45)|47|(2:49|(1:51)(1:52))|53|(2:55|(2:57|(1:59))(2:60|(2:67|(12:72|74|(1:78)|100|79|(2:81|82)(1:83)|84|(1:86)|87|(1:89)|92|(2:94|95)(2:96|97))(1:71))(2:64|(1:66))))|73|74|(2:76|78)|100|79|(0)(0)|84|(0)|87|(0)|92|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02d2, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02d3, code lost:
        zzgo().zzjd().zze("getGoogleAppId or isMeasurementEnabled failed with exception. appId", com.google.android.gms.measurement.internal.zzap.zzbv(r0), r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x029e A[Catch: IllegalStateException -> 0x02d2, TryCatch #0 {IllegalStateException -> 0x02d2, blocks: (B:79:0x027a, B:84:0x0291, B:86:0x029e, B:89:0x02ba), top: B:100:0x027a }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02ba A[Catch: IllegalStateException -> 0x02d2, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IllegalStateException -> 0x02d2, blocks: (B:79:0x027a, B:84:0x0291, B:86:0x029e, B:89:0x02ba), top: B:100:0x027a }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02fa  */
    @Override // com.google.android.gms.measurement.internal.zzf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzgu() {
        /*
            Method dump skipped, instructions count: 777
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaj.zzgu():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzgw() {
        zzcl();
        return this.zzagk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzja() {
        zzcl();
        return this.zzalo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zzjb() {
        zzcl();
        return this.zzagy;
    }
}
