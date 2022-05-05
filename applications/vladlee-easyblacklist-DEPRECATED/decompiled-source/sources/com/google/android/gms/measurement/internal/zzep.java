package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzle;
import com.google.android.gms.internal.measurement.zzmu;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzep.class */
public final class zzep extends AbstractC2713cu {

    /* renamed from: a */
    private String f17122a;

    /* renamed from: b */
    private String f17123b;

    /* renamed from: c */
    private int f17124c;

    /* renamed from: d */
    private String f17125d;

    /* renamed from: e */
    private String f17126e;

    /* renamed from: f */
    private long f17127f;

    /* renamed from: g */
    private long f17128g;

    /* renamed from: h */
    private List<String> f17129h;

    /* renamed from: i */
    private int f17130i;

    /* renamed from: j */
    private String f17131j;

    /* renamed from: k */
    private String f17132k;

    /* renamed from: l */
    private String f17133l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzep(zzga zzgaVar, long j) {
        super(zzgaVar);
        this.f17128g = j;
    }

    /* renamed from: l */
    private final String m1875l() {
        zzey zzj;
        String str;
        if (!zzmu.zzb() || !zzt().zza(zzap.zzcf)) {
            try {
                Class<?> loadClass = zzn().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                if (loadClass == null) {
                    return null;
                }
                try {
                    Object invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, zzn());
                    if (invoke == null) {
                        return null;
                    }
                    try {
                        return (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", new Class[0]).invoke(invoke, new Object[0]);
                    } catch (Exception e) {
                        zzj = zzr().zzk();
                        str = "Failed to retrieve Firebase Instance Id";
                    }
                } catch (Exception e2) {
                    zzj = zzr().zzj();
                    str = "Failed to obtain Firebase Analytics instance";
                }
            } catch (ClassNotFoundException e3) {
                return null;
            }
        } else {
            zzj = zzr().zzx();
            str = "Disabled IID for tests.";
        }
        zzj.zza(str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zzm m1884a(String str) {
        Boolean a;
        zzd();
        zzb();
        String e = m1882e();
        String f = m1881f();
        m2146b();
        String str2 = this.f17123b;
        long i = m1878i();
        m2146b();
        String str3 = this.f17125d;
        long zze = zzt().zze();
        m2146b();
        zzd();
        if (this.f17127f == 0) {
            this.f17127f = this.f16804x.zzi().m1642a(zzn(), zzn().getPackageName());
        }
        long j = this.f17127f;
        boolean zzab = this.f16804x.zzab();
        boolean z = !zzs().f16695s;
        zzd();
        zzb();
        String l = !this.f16804x.zzab() ? null : m1875l();
        long c = this.f16804x.m1806c();
        int j2 = m1877j();
        boolean booleanValue = zzt().zzi().booleanValue();
        zzx zzt = zzt();
        zzt.zzb();
        Boolean a2 = zzt.m1599a("google_analytics_ssaid_collection_enabled");
        boolean z2 = a2 == null || a2.booleanValue();
        C2734do zzs = zzs();
        zzs.zzd();
        return new zzm(e, f, str2, i, str3, zze, j, str, zzab, z, l, 0L, c, j2, booleanValue, z2, zzs.m2136c().getBoolean("deferred_analytics_collection", false), m1880g(), (!zzt().zza(zzap.zzba) || (a = zzt().m1599a("google_analytics_default_allow_ad_personalization_signals")) == null) ? null : Boolean.valueOf(!a.booleanValue()), this.f17128g, zzt().zza(zzap.zzbk) ? this.f17129h : null, (!zzle.zzb() || !zzt().zza(zzap.zzcc)) ? null : m1879h());
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2713cu
    /* renamed from: c */
    protected final boolean mo1734c() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(29:2|(1:4)(9:139|6|7|10|(1:12)(2:13|(1:15))|135|16|17|(31:19|(1:21)(1:22)|133|23|24|25|26|32|(1:37)(1:36)|38|(1:43)(1:42)|44|(2:46|(1:48)(1:49))|50|(15:52|(2:54|(2:56|57))(3:58|(2:65|(1:70)(1:69))(2:62|(1:64))|57)|72|(1:76)|137|77|(2:79|80)(1:81)|82|(8:99|(3:101|97|98)|102|(1:104)|107|(4:109|(3:111|(1:113)(3:115|(2:116|(1:118)(1:141))|142)|114)(0)|120|(1:122))|123|(2:125|(2:127|128)(2:129|130))(2:131|132))(10:86|(2:88|89)(1:90)|91|(4:95|96|97|98)|102|(0)|107|(0)|123|(0)(0))|105|106|107|(0)|123|(0)(0))|71|72|(2:74|76)|137|77|(0)(0)|82|(1:84)|99|(0)|102|(0)|107|(0)|123|(0)(0)))|5|32|(1:34)|37|38|(1:40)|43|44|(0)|50|(0)|71|72|(0)|137|77|(0)(0)|82|(0)|99|(0)|102|(0)|107|(0)|123|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0318 A[Catch: IllegalStateException -> 0x0350, TRY_LEAVE, TryCatch #2 {IllegalStateException -> 0x0350, blocks: (B:77:0x028b, B:82:0x02a3, B:84:0x02b3, B:86:0x02c0, B:91:0x02e8, B:93:0x02f6, B:96:0x02ff, B:98:0x0308, B:99:0x0310, B:101:0x0318, B:104:0x0338), top: B:137:0x028b }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0338 A[Catch: IllegalStateException -> 0x0350, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IllegalStateException -> 0x0350, blocks: (B:77:0x028b, B:82:0x02a3, B:84:0x02b3, B:86:0x02c0, B:91:0x02e8, B:93:0x02f6, B:96:0x02ff, B:98:0x0308, B:99:0x0310, B:101:0x0318, B:104:0x0338), top: B:137:0x028b }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x040a  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b3 A[Catch: IllegalStateException -> 0x0350, TRY_ENTER, TryCatch #2 {IllegalStateException -> 0x0350, blocks: (B:77:0x028b, B:82:0x02a3, B:84:0x02b3, B:86:0x02c0, B:91:0x02e8, B:93:0x02f6, B:96:0x02ff, B:98:0x0308, B:99:0x0310, B:101:0x0318, B:104:0x0338), top: B:137:0x028b }] */
    @Override // com.google.android.gms.measurement.internal.AbstractC2713cu
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void mo1883d() {
        /*
            Method dump skipped, instructions count: 1040
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzep.mo1883d():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final String m1882e() {
        m2146b();
        return this.f17122a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final String m1881f() {
        m2146b();
        return this.f17131j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final String m1880g() {
        m2146b();
        return this.f17132k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final String m1879h() {
        m2146b();
        return this.f17133l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final int m1878i() {
        m2146b();
        return this.f17124c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final int m1877j() {
        m2146b();
        return this.f17130i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final List<String> m1876k() {
        return this.f17129h;
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
