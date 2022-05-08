package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.internal.measurement.zzny;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfw.class */
public final class zzfw extends zzei {

    /* renamed from: a */
    private final zzki f9302a;

    /* renamed from: b */
    private Boolean f9303b;
    @Nullable

    /* renamed from: c */
    private String f9304c;

    public zzfw(zzki zzkiVar) {
        this(zzkiVar, null);
    }

    private zzfw(zzki zzkiVar, @Nullable String str) {
        Preconditions.m14523k(zzkiVar);
        this.f9302a = zzkiVar;
        this.f9304c = null;
    }

    @BinderThread
    /* renamed from: Q0 */
    private final void m11341Q0(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f9303b == null) {
                        if (!"com.google.android.gms".equals(this.f9304c) && !UidVerifier.m14308a(this.f9302a.mo11075f(), Binder.getCallingUid()) && !GoogleSignatureVerifier.m15040a(this.f9302a.mo11075f()).m15038c(Binder.getCallingUid())) {
                            z2 = false;
                            this.f9303b = Boolean.valueOf(z2);
                        }
                        z2 = true;
                        this.f9303b = Boolean.valueOf(z2);
                    }
                    if (this.f9303b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.f9302a.mo11081c().m11560D().m11539b("Measurement Service called with invalid calling package. appId", zzer.m11546v(str));
                    throw e;
                }
            }
            if (this.f9304c == null && GooglePlayServicesUtilLight.m15042m(this.f9302a.mo11075f(), Binder.getCallingUid(), str)) {
                this.f9304c = str;
            }
            if (!str.equals(this.f9304c)) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", str));
            }
            return;
        }
        this.f9302a.mo11081c().m11560D().m11540a("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    @BinderThread
    /* renamed from: S0 */
    private final void m11338S0(zzn zznVar, boolean z) {
        Preconditions.m14523k(zznVar);
        m11341Q0(zznVar.f9725f, false);
        this.f9302a.m11072g0().m10958h0(zznVar.f9726g, zznVar.f9742w, zznVar.f9723A);
    }

    @VisibleForTesting
    /* renamed from: f */
    private final void m11330f(Runnable runnable) {
        Preconditions.m14523k(runnable);
        if (this.f9302a.mo11083b().m11416G()) {
            runnable.run();
        } else {
            this.f9302a.mo11083b().m11409x(runnable);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: B0 */
    public final void mo11346B0(final Bundle bundle, final zzn zznVar) {
        if (zzny.m11870a() && this.f9302a.m11099M().m10880r(zzat.f8888A0)) {
            m11338S0(zznVar, false);
            m11330f(new Runnable(this, zznVar, bundle) { // from class: com.google.android.gms.measurement.internal.zzfz

                /* renamed from: f */
                private final zzfw f9309f;

                /* renamed from: g */
                private final zzn f9310g;

                /* renamed from: h */
                private final Bundle f9311h;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9309f = this;
                    this.f9310g = zznVar;
                    this.f9311h = bundle;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f9309f.m11333c(this.f9310g, this.f9311h);
                }
            });
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: C */
    public final List<zzkr> mo11345C(String str, String str2, String str3, boolean z) {
        m11341Q0(str, true);
        try {
            List<zzkt> list = (List) this.f9302a.mo11083b().m11412u(new zzgc(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkt zzktVar : list) {
                if (z || !zzkw.m11002A0(zzktVar.f9708c)) {
                    arrayList.add(new zzkr(zzktVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f9302a.mo11081c().m11560D().m11538c("Failed to get user properties as. appId", zzer.m11546v(str), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: D0 */
    public final void mo11344D0(zzkr zzkrVar, zzn zznVar) {
        Preconditions.m14523k(zzkrVar);
        m11338S0(zznVar, false);
        m11330f(new zzgk(this, zzkrVar, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: I */
    public final String mo11343I(zzn zznVar) {
        m11338S0(zznVar, false);
        return this.f9302a.m11086Z(zznVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: K0 */
    public final void mo11342K0(zzar zzarVar, String str, String str2) {
        Preconditions.m14523k(zzarVar);
        Preconditions.m14527g(str);
        m11341Q0(str, true);
        m11330f(new zzgi(this, zzarVar, str));
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: R */
    public final void mo11340R(long j, String str, String str2, String str3) {
        m11330f(new zzgp(this, str2, str3, str, j));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0051, code lost:
        if ("referrer API".equals(r0) != false) goto L_0x0054;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: R0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzar m11339R0(com.google.android.gms.measurement.internal.zzar r9, com.google.android.gms.measurement.internal.zzn r10) {
        /*
            r8 = this;
            java.lang.String r0 = "_cmp"
            r1 = r9
            java.lang.String r1 = r1.f8882f
            boolean r0 = r0.equals(r1)
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r12
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L_0x0057
            r0 = r9
            com.google.android.gms.measurement.internal.zzam r0 = r0.f8883g
            r10 = r0
            r0 = r12
            r13 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0057
            r0 = r10
            int r0 = r0.m11704B()
            if (r0 != 0) goto L_0x0031
            r0 = r12
            r13 = r0
            goto L_0x0057
        L_0x0031:
            r0 = r9
            com.google.android.gms.measurement.internal.zzam r0 = r0.f8883g
            java.lang.String r1 = "_cis"
            java.lang.String r0 = r0.m11698u0(r1)
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
            com.google.android.gms.measurement.internal.zzki r0 = r0.f9302a
            com.google.android.gms.measurement.internal.zzer r0 = r0.mo11081c()
            com.google.android.gms.measurement.internal.zzet r0 = r0.m11554J()
            java.lang.String r1 = "Event has been filtered "
            r2 = r9
            java.lang.String r2 = r2.toString()
            r0.m11539b(r1, r2)
            com.google.android.gms.measurement.internal.zzar r0 = new com.google.android.gms.measurement.internal.zzar
            r1 = r0
            java.lang.String r2 = "_cmpx"
            r3 = r9
            com.google.android.gms.measurement.internal.zzam r3 = r3.f8883g
            r4 = r9
            java.lang.String r4 = r4.f8884h
            r5 = r9
            long r5 = r5.f8885i
            r1.<init>(r2, r3, r4, r5)
            return r0
        L_0x0087:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfw.m11339R0(com.google.android.gms.measurement.internal.zzar, com.google.android.gms.measurement.internal.zzn):com.google.android.gms.measurement.internal.zzar");
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: T */
    public final void mo11337T(zzn zznVar) {
        m11341Q0(zznVar.f9725f, false);
        m11330f(new zzgh(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: U */
    public final List<zzw> mo11336U(String str, String str2, String str3) {
        m11341Q0(str, true);
        try {
            return (List) this.f9302a.mo11083b().m11412u(new zzge(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f9302a.mo11081c().m11560D().m11539b("Failed to get conditional user properties as", e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: V */
    public final List<zzw> mo11335V(String str, String str2, zzn zznVar) {
        m11338S0(zznVar, false);
        try {
            return (List) this.f9302a.mo11083b().m11412u(new zzgf(this, zznVar, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f9302a.mo11081c().m11560D().m11539b("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m11333c(zzn zznVar, Bundle bundle) {
        this.f9302a.m11084a0().m11774W(zznVar.f9725f, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: c0 */
    public final List<zzkr> mo11332c0(String str, String str2, boolean z, zzn zznVar) {
        m11338S0(zznVar, false);
        try {
            List<zzkt> list = (List) this.f9302a.mo11083b().m11412u(new zzgd(this, zznVar, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkt zzktVar : list) {
                if (z || !zzkw.m11002A0(zzktVar.f9708c)) {
                    arrayList.add(new zzkr(zzktVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f9302a.mo11081c().m11560D().m11538c("Failed to query user properties. appId", zzer.m11546v(zznVar.f9725f), e);
            return Collections.emptyList();
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: d0 */
    public final List<zzkr> mo11331d0(zzn zznVar, boolean z) {
        m11338S0(zznVar, false);
        try {
            List<zzkt> list = (List) this.f9302a.mo11083b().m11412u(new zzgn(this, zznVar)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (zzkt zzktVar : list) {
                if (z || !zzkw.m11002A0(zzktVar.f9708c)) {
                    arrayList.add(new zzkr(zzktVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f9302a.mo11081c().m11560D().m11538c("Failed to get user properties. appId", zzer.m11546v(zznVar.f9725f), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: h0 */
    public final void mo11329h0(zzn zznVar) {
        m11338S0(zznVar, false);
        m11330f(new zzgm(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: i */
    public final void mo11328i(zzw zzwVar, zzn zznVar) {
        Preconditions.m14523k(zzwVar);
        Preconditions.m14523k(zzwVar.f9778h);
        m11338S0(zznVar, false);
        zzw zzwVar2 = new zzw(zzwVar);
        zzwVar2.f9776f = zznVar.f9725f;
        m11330f(new zzgb(this, zzwVar2, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: m */
    public final void mo11327m(zzn zznVar) {
        if (zzmj.m11898a() && this.f9302a.m11099M().m10880r(zzat.f8906J0)) {
            Preconditions.m14527g(zznVar.f9725f);
            Preconditions.m14523k(zznVar.f9724B);
            zzgg zzggVar = new zzgg(this, zznVar);
            Preconditions.m14523k(zzggVar);
            if (this.f9302a.mo11083b().m11416G()) {
                zzggVar.run();
            } else {
                this.f9302a.mo11083b().m11422A(zzggVar);
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: m0 */
    public final void mo11326m0(zzw zzwVar) {
        Preconditions.m14523k(zzwVar);
        Preconditions.m14523k(zzwVar.f9778h);
        m11341Q0(zzwVar.f9776f, true);
        m11330f(new zzga(this, new zzw(zzwVar)));
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: q0 */
    public final void mo11325q0(zzn zznVar) {
        m11338S0(zznVar, false);
        m11330f(new zzfy(this, zznVar));
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: s0 */
    public final byte[] mo11324s0(zzar zzarVar, String str) {
        Preconditions.m14527g(str);
        Preconditions.m14523k(zzarVar);
        m11341Q0(str, true);
        this.f9302a.mo11081c().m11553K().m11539b("Log and bundle. event", this.f9302a.m11074f0().m11569u(zzarVar.f8882f));
        long nanoTime = this.f9302a.mo11085a().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f9302a.mo11083b().m11407z(new zzgl(this, zzarVar, str)).get();
            byte[] bArr2 = bArr;
            if (bArr == null) {
                this.f9302a.mo11081c().m11560D().m11539b("Log and bundle returned null. appId", zzer.m11546v(str));
                bArr2 = new byte[0];
            }
            this.f9302a.mo11081c().m11553K().m11537d("Log and bundle processed. event, size, time_ms", this.f9302a.m11074f0().m11569u(zzarVar.f8882f), Integer.valueOf(bArr2.length), Long.valueOf((this.f9302a.mo11085a().nanoTime() / 1000000) - nanoTime));
            return bArr2;
        } catch (InterruptedException | ExecutionException e) {
            this.f9302a.mo11081c().m11560D().m11537d("Failed to log and bundle. appId, event, error", zzer.m11546v(str), this.f9302a.m11074f0().m11569u(zzarVar.f8882f), e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzej
    @BinderThread
    /* renamed from: t0 */
    public final void mo11323t0(zzar zzarVar, zzn zznVar) {
        Preconditions.m14523k(zzarVar);
        m11338S0(zznVar, false);
        m11330f(new zzgj(this, zzarVar, zznVar));
    }
}
