package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aol.class */
public final class aol implements zzjf, zzlz, zzml, zznv<aor> {

    /* renamed from: A */
    private boolean[] f7993A;

    /* renamed from: B */
    private boolean f7994B;

    /* renamed from: D */
    private long f7996D;

    /* renamed from: F */
    private int f7998F;

    /* renamed from: G */
    private boolean f7999G;

    /* renamed from: H */
    private boolean f8000H;

    /* renamed from: a */
    private final Uri f8001a;

    /* renamed from: b */
    private final zznl f8002b;

    /* renamed from: c */
    private final int f8003c;

    /* renamed from: d */
    private final zzddu f8004d;

    /* renamed from: e */
    private final zzma f8005e;

    /* renamed from: f */
    private final zzme f8006f;

    /* renamed from: g */
    private final zznj f8007g;

    /* renamed from: i */
    private final long f8009i;

    /* renamed from: k */
    private final aoq f8011k;

    /* renamed from: q */
    private zzmc f8017q;

    /* renamed from: r */
    private zzjm f8018r;

    /* renamed from: s */
    private boolean f8019s;

    /* renamed from: t */
    private boolean f8020t;

    /* renamed from: u */
    private boolean f8021u;

    /* renamed from: v */
    private boolean f8022v;

    /* renamed from: w */
    private int f8023w;

    /* renamed from: x */
    private zzmr f8024x;

    /* renamed from: y */
    private long f8025y;

    /* renamed from: z */
    private boolean[] f8026z;

    /* renamed from: h */
    private final String f8008h = null;

    /* renamed from: j */
    private final zznw f8010j = new zznw("Loader:ExtractorMediaPeriod");

    /* renamed from: l */
    private final zzoe f8012l = new zzoe();

    /* renamed from: m */
    private final Runnable f8013m = new aon(this);

    /* renamed from: n */
    private final Runnable f8014n = new aom(this);

    /* renamed from: o */
    private final zzddu f8015o = new zzddu();

    /* renamed from: E */
    private long f7997E = -9223372036854775807L;

    /* renamed from: p */
    private final SparseArray<zzmj> f8016p = new SparseArray<>();

    /* renamed from: C */
    private long f7995C = -1;

    public aol(Uri uri, zznl zznlVar, zzjd[] zzjdVarArr, int i, zzddu zzdduVar, zzma zzmaVar, zzme zzmeVar, zznj zznjVar, int i2) {
        this.f8001a = uri;
        this.f8002b = zznlVar;
        this.f8003c = i;
        this.f8004d = zzdduVar;
        this.f8005e = zzmaVar;
        this.f8006f = zzmeVar;
        this.f8007g = zznjVar;
        this.f8009i = i2;
        this.f8011k = new aoq(zzjdVarArr, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m4811a(aol aolVar) {
        if (!(aolVar.f8000H || aolVar.f8020t || aolVar.f8018r == null || !aolVar.f8019s)) {
            int size = aolVar.f8016p.size();
            for (int i = 0; i < size; i++) {
                if (aolVar.f8016p.valueAt(i).zzhx() == null) {
                    return;
                }
            }
            aolVar.f8012l.zzim();
            zzms[] zzmsVarArr = new zzms[size];
            aolVar.f7993A = new boolean[size];
            aolVar.f8026z = new boolean[size];
            aolVar.f8025y = aolVar.f8018r.getDurationUs();
            for (int i2 = 0; i2 < size; i2++) {
                zzgw zzhx = aolVar.f8016p.valueAt(i2).zzhx();
                zzmsVarArr[i2] = new zzms(zzhx);
                String str = zzhx.zzafe;
                boolean z = true;
                if (!zzof.zzbi(str)) {
                    z = zzof.zzbh(str);
                }
                aolVar.f7993A[i2] = z;
                aolVar.f7994B = z | aolVar.f7994B;
            }
            aolVar.f8024x = new zzmr(zzmsVarArr);
            aolVar.f8020t = true;
            aolVar.f8006f.zzb(new zzmp(aolVar.f8025y, aolVar.f8018r.zzgh()), null);
            aolVar.f8017q.zza((zzlz) aolVar);
        }
    }

    /* renamed from: a */
    private final void m4810a(aor aorVar) {
        long j;
        if (this.f7995C == -1) {
            j = aorVar.f8044i;
            this.f7995C = j;
        }
    }

    /* renamed from: c */
    private final void m4807c() {
        zzjm zzjmVar;
        aor aorVar = new aor(this, this.f8001a, this.f8002b, this.f8011k, this.f8012l);
        if (this.f8020t) {
            zzoc.checkState(m4801f());
            long j = this.f8025y;
            if (j == -9223372036854775807L || this.f7997E < j) {
                aorVar.m4794a(this.f8018r.zzdz(this.f7997E), this.f7997E);
                this.f7997E = -9223372036854775807L;
            } else {
                this.f7999G = true;
                this.f7997E = -9223372036854775807L;
                return;
            }
        }
        this.f7998F = m4805d();
        int i = this.f8003c;
        int i2 = i;
        if (i == -1) {
            i2 = (this.f8020t && this.f7995C == -1 && ((zzjmVar = this.f8018r) == null || zzjmVar.getDurationUs() == -9223372036854775807L)) ? 6 : 3;
        }
        this.f8010j.zza(aorVar, this, i2);
    }

    /* renamed from: d */
    private final int m4805d() {
        int size = this.f8016p.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.f8016p.valueAt(i2).zzhv();
        }
        return i;
    }

    /* renamed from: e */
    private final long m4803e() {
        int size = this.f8016p.size();
        long j = Long.MIN_VALUE;
        for (int i = 0; i < size; i++) {
            j = Math.max(j, this.f8016p.valueAt(i).zzhn());
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static /* synthetic */ String m4800f(aol aolVar) {
        return aolVar.f8008h;
    }

    /* renamed from: f */
    private final boolean m4801f() {
        return this.f7997E != -9223372036854775807L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static /* synthetic */ long m4799g(aol aolVar) {
        return aolVar.f8009i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static /* synthetic */ Runnable m4798h(aol aolVar) {
        return aolVar.f8014n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ zzddu m4797i(aol aolVar) {
        return aolVar.f8015o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final int m4812a(int i, zzgy zzgyVar, zzis zzisVar, boolean z) {
        if (this.f8022v || m4801f()) {
            return -3;
        }
        return this.f8016p.valueAt(i).zza(zzgyVar, zzisVar, z, this.f7999G, this.f7996D);
    }

    /* renamed from: a */
    public final void m4815a() {
        this.f8010j.zza(new aop(this, this.f8011k));
        this.f8015o.removeCallbacksAndMessages(null);
        this.f8000H = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4813a(int i, long j) {
        zzmj valueAt = this.f8016p.valueAt(i);
        if (!this.f7999G || j <= valueAt.zzhn()) {
            valueAt.zze(j, true);
        } else {
            valueAt.zzhz();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m4814a(int i) {
        if (!this.f7999G) {
            return !m4801f() && this.f8016p.valueAt(i).zzhw();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m4809b() {
        this.f8010j.zzbc(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final /* synthetic */ int zza(aor aorVar, long j, long j2, IOException iOException) {
        zzjm zzjmVar;
        aor aorVar2 = aorVar;
        m4810a(aorVar2);
        zzddu zzdduVar = this.f8004d;
        if (!(zzdduVar == null || this.f8005e == null)) {
            zzdduVar.post(new aoo(this, iOException));
        }
        if (iOException instanceof zzmu) {
            return 3;
        }
        boolean z = m4805d() > this.f7998F;
        if (this.f7995C == -1 && ((zzjmVar = this.f8018r) == null || zzjmVar.getDurationUs() == -9223372036854775807L)) {
            this.f7996D = 0L;
            this.f8022v = this.f8020t;
            int size = this.f8016p.size();
            for (int i = 0; i < size; i++) {
                this.f8016p.valueAt(i).zzk(!this.f8020t || this.f8026z[i]);
            }
            aorVar2.m4794a(0L, 0L);
        }
        this.f7998F = m4805d();
        return z ? 1 : 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0180, code lost:
        if (r0 != false) goto L_0x0191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x018e, code lost:
        if (r12 != 0) goto L_0x0191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0191, code lost:
        r19 = zzeg(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01a5, code lost:
        if (r15 >= r10.length) goto L_0x01bb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01ac, code lost:
        if (r10[r15] == null) goto L_0x01b5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01af, code lost:
        r11[r15] = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b5, code lost:
        r15 = r15 + 1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v1, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    @Override // com.google.android.gms.internal.ads.zzlz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.ads.zzne[] r8, boolean[] r9, com.google.android.gms.internal.ads.zzmo[] r10, boolean[] r11, long r12) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aol.zza(com.google.android.gms.internal.ads.zzne[], boolean[], com.google.android.gms.internal.ads.zzmo[], boolean[], long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final void zza(zzjm zzjmVar) {
        this.f8018r = zzjmVar;
        this.f8015o.post(this.f8013m);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zza(zzmc zzmcVar, long j) {
        this.f8017q = zzmcVar;
        this.f8012l.open();
        m4807c();
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final /* synthetic */ void zza(aor aorVar, long j, long j2) {
        m4810a(aorVar);
        this.f7999G = true;
        if (this.f8025y == -9223372036854775807L) {
            long e = m4803e();
            this.f8025y = e == Long.MIN_VALUE ? 0L : e + 10000;
            this.f8006f.zzb(new zzmp(this.f8025y, this.f8018r.zzgh()), null);
        }
        this.f8017q.zza((zzmc) this);
    }

    @Override // com.google.android.gms.internal.ads.zznv
    public final /* synthetic */ void zza(aor aorVar, long j, long j2, boolean z) {
        m4810a(aorVar);
        if (!z && this.f8023w > 0) {
            int size = this.f8016p.size();
            for (int i = 0; i < size; i++) {
                this.f8016p.valueAt(i).zzk(this.f8026z[i]);
            }
            this.f8017q.zza((zzmc) this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final zzjo zzc(int i, int i2) {
        zzmj zzmjVar = this.f8016p.get(i);
        zzmj zzmjVar2 = zzmjVar;
        if (zzmjVar == null) {
            zzmjVar2 = new zzmj(this.f8007g);
            zzmjVar2.zza(this);
            this.f8016p.put(i, zzmjVar2);
        }
        return zzmjVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzee(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzlz, com.google.android.gms.internal.ads.zzmn
    public final boolean zzef(long j) {
        if (this.f7999G) {
            return false;
        }
        if (this.f8020t && this.f8023w == 0) {
            return false;
        }
        boolean open = this.f8012l.open();
        if (!this.f8010j.isLoading()) {
            m4807c();
            open = true;
        }
        return open;
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final long zzeg(long j) {
        if (!this.f8018r.zzgh()) {
            j = 0;
        }
        this.f7996D = j;
        int size = this.f8016p.size();
        boolean z = !m4801f();
        for (int i = 0; z && i < size; i++) {
            if (this.f8026z[i]) {
                z = this.f8016p.valueAt(i).zze(j, false);
            }
        }
        if (!z) {
            this.f7997E = j;
            this.f7999G = false;
            if (this.f8010j.isLoading()) {
                this.f8010j.zzil();
            } else {
                for (int i2 = 0; i2 < size; i2++) {
                    this.f8016p.valueAt(i2).zzk(this.f8026z[i2]);
                }
            }
        }
        this.f8022v = false;
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzml
    public final void zzf(zzgw zzgwVar) {
        this.f8015o.post(this.f8013m);
    }

    @Override // com.google.android.gms.internal.ads.zzjf
    public final void zzgj() {
        this.f8019s = true;
        this.f8015o.post(this.f8013m);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final void zzhf() {
        this.f8010j.zzbc(Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final zzmr zzhg() {
        return this.f8024x;
    }

    @Override // com.google.android.gms.internal.ads.zzlz, com.google.android.gms.internal.ads.zzmn
    public final long zzhh() {
        if (this.f8023w == 0) {
            return Long.MIN_VALUE;
        }
        return zzhj();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final long zzhi() {
        if (!this.f8022v) {
            return -9223372036854775807L;
        }
        this.f8022v = false;
        return this.f7996D;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // com.google.android.gms.internal.ads.zzlz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzhj() {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.f7999G
            if (r0 == 0) goto L_0x000b
            r0 = -9223372036854775808
            return r0
        L_0x000b:
            r0 = r5
            boolean r0 = r0.m4801f()
            if (r0 == 0) goto L_0x0017
            r0 = r5
            long r0 = r0.f7997E
            return r0
        L_0x0017:
            r0 = r5
            boolean r0 = r0.f7994B
            if (r0 == 0) goto L_0x0061
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r6 = r0
            r0 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zzmj> r0 = r0.f8016p
            int r0 = r0.size()
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x002d:
            r0 = r6
            r10 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L_0x0067
            r0 = r6
            r10 = r0
            r0 = r5
            boolean[] r0 = r0.f7993A
            r1 = r9
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0058
            r0 = r6
            r1 = r5
            android.util.SparseArray<com.google.android.gms.internal.ads.zzmj> r1 = r1.f8016p
            r2 = r9
            java.lang.Object r1 = r1.valueAt(r2)
            com.google.android.gms.internal.ads.zzmj r1 = (com.google.android.gms.internal.ads.zzmj) r1
            long r1 = r1.zzhn()
            long r0 = java.lang.Math.min(r0, r1)
            r10 = r0
        L_0x0058:
            int r9 = r9 + 1
            r0 = r10
            r6 = r0
            goto L_0x002d
        L_0x0061:
            r0 = r5
            long r0 = r0.m4803e()
            r10 = r0
        L_0x0067:
            r0 = r10
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0075
            r0 = r5
            long r0 = r0.f7996D
            return r0
        L_0x0075:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aol.zzhj():long");
    }
}
