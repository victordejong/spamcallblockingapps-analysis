package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgb.class */
public final class zzgb extends zzen {

    /* renamed from: a */
    private final zzke f17231a;

    /* renamed from: b */
    private Boolean f17232b;

    /* renamed from: c */
    private String f17233c;

    public zzgb(zzke zzkeVar) {
        this(zzkeVar, (byte) 0);
    }

    private zzgb(zzke zzkeVar, byte b) {
        Preconditions.checkNotNull(zzkeVar);
        this.f17231a = zzkeVar;
        this.f17233c = null;
    }

    /* renamed from: a */
    private final void m1796a(zzm zzmVar) {
        Preconditions.checkNotNull(zzmVar);
        m1794a(zzmVar.zza, false);
        this.f17231a.zzj().m1623a(zzmVar.zzb, zzmVar.zzr, zzmVar.zzv);
    }

    /* renamed from: a */
    private final void m1795a(Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        if (this.f17231a.zzq().zzg()) {
            runnable.run();
        } else {
            this.f17231a.zzq().zza(runnable);
        }
    }

    /* renamed from: a */
    private final void m1794a(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f17232b == null) {
                        if (!"com.google.android.gms".equals(this.f17233c) && !UidVerifier.isGooglePlayServicesUid(this.f17231a.zzn(), Binder.getCallingUid()) && !GoogleSignatureVerifier.getInstance(this.f17231a.zzn()).isUidGoogleSigned(Binder.getCallingUid())) {
                            z2 = false;
                            this.f17232b = Boolean.valueOf(z2);
                        }
                        z2 = true;
                        this.f17232b = Boolean.valueOf(z2);
                    }
                    if (this.f17232b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.f17231a.zzr().zzf().zza("Measurement Service called with invalid calling package. appId", zzew.m1855a(str));
                    throw e;
                }
            }
            if (this.f17233c == null && GooglePlayServicesUtilLight.uidHasPackageName(this.f17231a.zzn(), Binder.getCallingUid(), str)) {
                this.f17233c = str;
            }
            if (!str.equals(this.f17233c)) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
            return;
        }
        this.f17231a.zzr().zzf().zza("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x005d, code lost:
        if ("referrer API".equals(r0) != false) goto L_0x0060;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzan m1798a(com.google.android.gms.measurement.internal.zzan r9, com.google.android.gms.measurement.internal.zzm r10) {
        /*
            r8 = this;
            java.lang.String r0 = "_cmp"
            r1 = r9
            java.lang.String r1 = r1.zza
            boolean r0 = r0.equals(r1)
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L_0x007b
            r0 = r12
            r13 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.zzam r0 = r0.zzb
            if (r0 == 0) goto L_0x007b
            r0 = r9
            com.google.android.gms.measurement.internal.zzam r0 = r0.zzb
            int r0 = r0.zza()
            if (r0 != 0) goto L_0x0031
            r0 = r12
            r13 = r0
            goto L_0x007b
        L_0x0031:
            r0 = r9
            com.google.android.gms.measurement.internal.zzam r0 = r0.zzb
            java.lang.String r1 = "_cis"
            java.lang.String r0 = r0.m1990d(r1)
            r14 = r0
            r0 = r12
            r13 = r0
            r0 = r14
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x007b
            java.lang.String r0 = "referrer broadcast"
            r1 = r14
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0060
            r0 = r12
            r13 = r0
            java.lang.String r0 = "referrer API"
            r1 = r14
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x007b
        L_0x0060:
            r0 = r12
            r13 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.zzke r0 = r0.f17231a
            com.google.android.gms.measurement.internal.zzx r0 = r0.zzb()
            r1 = r10
            java.lang.String r1 = r1.zza
            com.google.android.gms.measurement.internal.zzel<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.zzap.zzao
            boolean r0 = r0.zze(r1, r2)
            if (r0 == 0) goto L_0x007b
            r0 = 1
            r13 = r0
        L_0x007b:
            r0 = r13
            if (r0 == 0) goto L_0x00a9
            r0 = r8
            com.google.android.gms.measurement.internal.zzke r0 = r0.f17231a
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzv()
            java.lang.String r1 = "Event has been filtered "
            r2 = r9
            java.lang.String r2 = r2.toString()
            r0.zza(r1, r2)
            com.google.android.gms.measurement.internal.zzan r0 = new com.google.android.gms.measurement.internal.zzan
            r1 = r0
            java.lang.String r2 = "_cmpx"
            r3 = r9
            com.google.android.gms.measurement.internal.zzam r3 = r3.zzb
            r4 = r9
            java.lang.String r4 = r4.zzc
            r5 = r9
            long r5 = r5.zzd
            r1.<init>(r2, r3, r4, r5)
            return r0
        L_0x00a9:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgb.m1798a(com.google.android.gms.measurement.internal.zzan, com.google.android.gms.measurement.internal.zzm):com.google.android.gms.measurement.internal.zzan");
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(zzm zzmVar, boolean z) {
        m1796a(zzmVar);
        try {
            List<C2843hp> list = (List) this.f17231a.zzq().zza(new CallableC2757ek(this, zzmVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C2843hp hpVar : list) {
                if (z || !zzkm.m1605e(hpVar.f17036c)) {
                    arrayList.add(new zzkl(hpVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f17231a.zzr().zzf().zza("Failed to get user attributes. appId", zzew.m1855a(zzmVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, zzm zzmVar) {
        m1796a(zzmVar);
        try {
            return (List) this.f17231a.zzq().zza(new CallableC2752ef(this, zzmVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f17231a.zzr().zzf().zza("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzv> zza(String str, String str2, String str3) {
        m1794a(str, true);
        try {
            return (List) this.f17231a.zzq().zza(new CallableC2751ee(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f17231a.zzr().zzf().zza("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, String str3, boolean z) {
        m1794a(str, true);
        try {
            List<C2843hp> list = (List) this.f17231a.zzq().zza(new CallableC2749ec(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C2843hp hpVar : list) {
                if (z || !zzkm.m1605e(hpVar.f17036c)) {
                    arrayList.add(new zzkl(hpVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f17231a.zzr().zzf().zza("Failed to get user attributes. appId", zzew.m1855a(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final List<zzkl> zza(String str, String str2, boolean z, zzm zzmVar) {
        m1796a(zzmVar);
        try {
            List<C2843hp> list = (List) this.f17231a.zzq().zza(new CallableC2750ed(this, zzmVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C2843hp hpVar : list) {
                if (z || !zzkm.m1605e(hpVar.f17036c)) {
                    arrayList.add(new zzkl(hpVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f17231a.zzr().zzf().zza("Failed to get user attributes. appId", zzew.m1855a(zzmVar.zza), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(long j, String str, String str2, String str3) {
        m1795a(new RunnableC2759em(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzanVar);
        m1796a(zzmVar);
        m1795a(new RunnableC2753eg(this, zzanVar, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzan zzanVar, String str, String str2) {
        Preconditions.checkNotNull(zzanVar);
        Preconditions.checkNotEmpty(str);
        m1794a(str, true);
        m1795a(new RunnableC2756ej(this, zzanVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzkl zzklVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzklVar);
        m1796a(zzmVar);
        m1795a(new RunnableC2758el(this, zzklVar, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzm zzmVar) {
        m1796a(zzmVar);
        m1795a(new RunnableC2760en(this, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotNull(zzvVar.zzc);
        m1794a(zzvVar.zza, true);
        m1795a(new RunnableC2747ea(this, new zzv(zzvVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zza(zzv zzvVar, zzm zzmVar) {
        Preconditions.checkNotNull(zzvVar);
        Preconditions.checkNotNull(zzvVar.zzc);
        m1796a(zzmVar);
        zzv zzvVar2 = new zzv(zzvVar);
        zzvVar2.zza = zzmVar.zza;
        m1795a(new RunnableC2762ep(this, zzvVar2, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final byte[] zza(zzan zzanVar, String str) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzanVar);
        m1794a(str, true);
        this.f17231a.zzr().zzw().zza("Log and bundle. event", this.f17231a.zzi().m1866a(zzanVar.zza));
        long nanoTime = this.f17231a.zzm().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f17231a.zzq().zzb(new CallableC2755ei(this, zzanVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.f17231a.zzr().zzf().zza("Log and bundle returned null. appId", zzew.m1855a(str));
                bArr2 = new byte[0];
            }
            this.f17231a.zzr().zzw().zza("Log and bundle processed. event, size, time_ms", this.f17231a.zzi().m1866a(zzanVar.zza), Integer.valueOf(bArr2.length), Long.valueOf((this.f17231a.zzm().nanoTime() / 1000000) - nanoTime));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.f17231a.zzr().zzf().zza("Failed to log and bundle. appId, event, error", zzew.m1855a(str), this.f17231a.zzi().m1866a(zzanVar.zza), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzb(zzm zzmVar) {
        m1796a(zzmVar);
        m1795a(new RunnableC2748eb(this, zzmVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final String zzc(zzm zzmVar) {
        m1796a(zzmVar);
        return this.f17231a.m1693d(zzmVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzeo
    public final void zzd(zzm zzmVar) {
        m1794a(zzmVar.zza, false);
        m1795a(new RunnableC2754eh(this, zzmVar));
    }
}
