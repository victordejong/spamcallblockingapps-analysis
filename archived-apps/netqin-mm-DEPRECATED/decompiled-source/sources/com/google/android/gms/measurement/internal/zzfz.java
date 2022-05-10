package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.internal.measurement.zznw;
import com.google.android.gms.measurement.internal.zzfz;
import com.google.android.gms.measurement.internal.zzn;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import p131c.p161d.p170b.p224d.p260i.p261a.C4822t7;
import p131c.p161d.p170b.p224d.p260i.p261a.CallableC4642a4;
import p131c.p161d.p170b.p224d.p260i.p261a.CallableC4662c4;
import p131c.p161d.p170b.p224d.p260i.p261a.CallableC4692f4;
import p131c.p161d.p170b.p224d.p260i.p261a.CallableC4711h4;
import p131c.p161d.p170b.p224d.p260i.p261a.CallableC4854x3;
import p131c.p161d.p170b.p224d.p260i.p261a.CallableC4872z3;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4652b4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4672d4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4682e4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4702g4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4720i4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4729j4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4738k4;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4836v3;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4845w3;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4863y3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfz.class */
public final class zzfz extends zzel {

    /* renamed from: a */
    public final zzkl f30034a;

    /* renamed from: b */
    public Boolean f30035b;

    /* renamed from: c */
    public String f30036c;

    public zzfz(zzkl zzklVar) {
        this(zzklVar, null);
    }

    public zzfz(zzkl zzklVar, String str) {
        Preconditions.m17288a(zzklVar);
        this.f30034a = zzklVar;
        this.f30036c = null;
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzku> mo9028a(zzn zznVar, boolean z) {
        m9017b(zznVar, false);
        try {
            List<C4822t7> list = (List) this.f30034a.mo8795j().m9092a(new CallableC4711h4(this, zznVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C4822t7 t7Var : list) {
                if (z || !zzkv.m8680h(t7Var.f17403c)) {
                    arrayList.add(new zzku(t7Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f30034a.mo8789p().m9152q().m9141a("Failed to get user properties. appId", zzeq.m9157a(zznVar.f30154a), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzz> mo9024a(String str, String str2, zzn zznVar) {
        m9017b(zznVar, false);
        try {
            return (List) this.f30034a.mo8795j().m9092a(new CallableC4872z3(this, zznVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f30034a.mo8789p().m9152q().m9142a("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzz> mo9023a(String str, String str2, String str3) {
        m9020a(str, true);
        try {
            return (List) this.f30034a.mo8795j().m9092a(new CallableC4662c4(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f30034a.mo8789p().m9152q().m9142a("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzku> mo9022a(String str, String str2, String str3, boolean z) {
        m9020a(str, true);
        try {
            List<C4822t7> list = (List) this.f30034a.mo8795j().m9092a(new CallableC4642a4(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C4822t7 t7Var : list) {
                if (z || !zzkv.m8680h(t7Var.f17403c)) {
                    arrayList.add(new zzku(t7Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f30034a.mo8789p().m9152q().m9141a("Failed to get user properties as. appId", zzeq.m9157a(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final List<zzku> mo9021a(String str, String str2, boolean z, zzn zznVar) {
        m9017b(zznVar, false);
        try {
            List<C4822t7> list = (List) this.f30034a.mo8795j().m9092a(new CallableC4854x3(this, zznVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C4822t7 t7Var : list) {
                if (z || !zzkv.m8680h(t7Var.f17403c)) {
                    arrayList.add(new zzku(t7Var));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f30034a.mo8789p().m9152q().m9141a("Failed to query user properties. appId", zzeq.m9157a(zznVar.f30154a), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9037a(long j, String str, String str2, String str3) {
        m9025a(new RunnableC4729j4(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9036a(final Bundle bundle, final zzn zznVar) {
        if (zznw.m9489a() && this.f30034a.m8798g().m9354a(zzas.f29817A0)) {
            m9017b(zznVar, false);
            m9025a(new Runnable(this, zznVar, bundle) { // from class: c.d.b.d.i.a.t3

                /* renamed from: a */
                public final zzfz f17389a;

                /* renamed from: b */
                public final zzn f17390b;

                /* renamed from: c */
                public final Bundle f17391c;

                {
                    this.f17389a = this;
                    this.f17390b = zznVar;
                    this.f17391c = bundle;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f17389a.m9029a(this.f17390b, this.f17391c);
                }
            });
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9035a(zzaq zzaqVar, zzn zznVar) {
        Preconditions.m17288a(zzaqVar);
        m9017b(zznVar, false);
        m9025a(new RunnableC4672d4(this, zzaqVar, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9033a(zzaq zzaqVar, String str, String str2) {
        Preconditions.m17288a(zzaqVar);
        Preconditions.m17281b(str);
        m9020a(str, true);
        m9025a(new RunnableC4702g4(this, zzaqVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9031a(zzku zzkuVar, zzn zznVar) {
        Preconditions.m17288a(zzkuVar);
        m9017b(zznVar, false);
        m9025a(new RunnableC4720i4(this, zzkuVar, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9030a(zzn zznVar) {
        if (zzml.m9520a() && this.f30034a.m8798g().m9354a(zzas.f29835J0)) {
            Preconditions.m17281b(zznVar.f30154a);
            Preconditions.m17288a(zznVar.f30176w);
            RunnableC4682e4 e4Var = new RunnableC4682e4(this, zznVar);
            Preconditions.m17288a(e4Var);
            if (this.f30034a.mo8795j().m9080q()) {
                e4Var.run();
            } else {
                this.f30034a.mo8795j().m9087b(e4Var);
            }
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m9029a(zzn zznVar, Bundle bundle) {
        this.f30034a.m8794k().m25074a(zznVar.f30154a, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9027a(zzz zzzVar) {
        Preconditions.m17288a(zzzVar);
        Preconditions.m17288a(zzzVar.f30180c);
        m9020a(zzzVar.f30178a, true);
        m9025a(new RunnableC4863y3(this, new zzz(zzzVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final void mo9026a(zzz zzzVar, zzn zznVar) {
        Preconditions.m17288a(zzzVar);
        Preconditions.m17288a(zzzVar.f30180c);
        m9017b(zznVar, false);
        zzz zzzVar2 = new zzz(zzzVar);
        zzzVar2.f30178a = zznVar.f30154a;
        m9025a(new RunnableC4836v3(this, zzzVar2, zznVar));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m9025a(Runnable runnable) {
        Preconditions.m17288a(runnable);
        if (this.f30034a.mo8795j().m9080q()) {
            runnable.run();
        } else {
            this.f30034a.mo8795j().m9093a(runnable);
        }
    }

    /* renamed from: a */
    public final void m9020a(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f30035b == null) {
                        if (!"com.google.android.gms".equals(this.f30036c) && !UidVerifier.m17048a(this.f30034a.mo8846B(), Binder.getCallingUid()) && !GoogleSignatureVerifier.m17796a(this.f30034a.mo8846B()).m17797a(Binder.getCallingUid())) {
                            z2 = false;
                            this.f30035b = Boolean.valueOf(z2);
                        }
                        z2 = true;
                        this.f30035b = Boolean.valueOf(z2);
                    }
                    if (this.f30035b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.f30034a.mo8789p().m9152q().m9142a("Measurement Service called with invalid calling package. appId", zzeq.m9157a(str));
                    throw e;
                }
            }
            if (this.f30036c == null && GooglePlayServicesUtilLight.uidHasPackageName(this.f30034a.mo8846B(), Binder.getCallingUid(), str)) {
                this.f30036c = str;
            }
            if (!str.equals(this.f30036c)) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
            return;
        }
        this.f30034a.mo8789p().m9152q().m9143a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: a */
    public final byte[] mo9034a(zzaq zzaqVar, String str) {
        Preconditions.m17281b(str);
        Preconditions.m17288a(zzaqVar);
        m9020a(str, true);
        this.f30034a.mo8789p().m9145x().m9142a("Log and bundle. event", this.f30034a.m8790o().m9171a(zzaqVar.f29812a));
        long c = this.f30034a.mo8779z().mo17090c() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f30034a.mo8795j().m9086b(new CallableC4692f4(this, zzaqVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.f30034a.mo8789p().m9152q().m9142a("Log and bundle returned null. appId", zzeq.m9157a(str));
                bArr2 = new byte[0];
            }
            this.f30034a.mo8789p().m9145x().m9140a("Log and bundle processed. event, size, time_ms", this.f30034a.m8790o().m9171a(zzaqVar.f29812a), Integer.valueOf(bArr2.length), Long.valueOf((this.f30034a.mo8779z().mo17090c() / 1000000) - c));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.f30034a.mo8789p().m9152q().m9140a("Failed to log and bundle. appId, event, error", zzeq.m9157a(str), this.f30034a.m8790o().m9171a(zzaqVar.f29812a), e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0051, code lost:
        if ("referrer API".equals(r0) != false) goto L_0x0054;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaq m9019b(com.google.android.gms.measurement.internal.zzaq r9, com.google.android.gms.measurement.internal.zzn r10) {
        /*
            r8 = this;
            java.lang.String r0 = "_cmp"
            r1 = r9
            java.lang.String r1 = r1.f29812a
            boolean r0 = r0.equals(r1)
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0057
            r0 = r9
            com.google.android.gms.measurement.internal.zzap r0 = r0.f29813b
            r10 = r0
            r0 = r12
            r13 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0057
            r0 = r10
            int r0 = r0.zza()
            if (r0 != 0) goto L_0x0031
            r0 = r12
            r13 = r0
            goto L_0x0057
        L_0x0031:
            r0 = r9
            com.google.android.gms.measurement.internal.zzap r0 = r0.f29813b
            java.lang.String r1 = "_cis"
            java.lang.String r0 = r0.m9290d(r1)
            r10 = r0
            java.lang.String r0 = "referrer broadcast"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L_0x0054
            r0 = r12
            r13 = r0
            java.lang.String r0 = "referrer API"
            r1 = r10
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0057
        L_0x0054:
            r0 = 1
            r13 = r0
        L_0x0057:
            r0 = r13
            if (r0 == 0) goto L_0x0087
            r0 = r8
            com.google.android.gms.measurement.internal.zzkl r0 = r0.f30034a
            com.google.android.gms.measurement.internal.zzeq r0 = r0.mo8789p()
            com.google.android.gms.measurement.internal.zzes r0 = r0.m9146w()
            java.lang.String r1 = "Event has been filtered "
            r2 = r9
            java.lang.String r2 = r2.toString()
            r0.m9142a(r1, r2)
            com.google.android.gms.measurement.internal.zzaq r0 = new com.google.android.gms.measurement.internal.zzaq
            r1 = r0
            java.lang.String r2 = "_cmpx"
            r3 = r9
            com.google.android.gms.measurement.internal.zzap r3 = r3.f29813b
            r4 = r9
            java.lang.String r4 = r4.f29814c
            r5 = r9
            long r5 = r5.f29815d
            r1.<init>(r2, r3, r4, r5)
            return r0
        L_0x0087:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfz.m9019b(com.google.android.gms.measurement.internal.zzaq, com.google.android.gms.measurement.internal.zzn):com.google.android.gms.measurement.internal.zzaq");
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: b */
    public final String mo9018b(zzn zznVar) {
        m9017b(zznVar, false);
        return this.f30034a.m8802d(zznVar);
    }

    /* renamed from: b */
    public final void m9017b(zzn zznVar, boolean z) {
        Preconditions.m17288a(zznVar);
        m9020a(zznVar.f30154a, false);
        this.f30034a.m8788q().m8707a(zznVar.f30155b, zznVar.f30171r, zznVar.f30175v);
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: c */
    public final void mo9016c(zzn zznVar) {
        m9020a(zznVar.f30154a, false);
        m9025a(new RunnableC4652b4(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: d */
    public final void mo9015d(zzn zznVar) {
        m9017b(zznVar, false);
        m9025a(new RunnableC4738k4(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzei
    /* renamed from: e */
    public final void mo9014e(zzn zznVar) {
        m9017b(zznVar, false);
        m9025a(new RunnableC4845w3(this, zznVar));
    }
}
