package com.google.android.gms.internal.ads;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amg.class */
public final class amg {

    /* renamed from: a */
    public final zzlz f7624a;

    /* renamed from: b */
    public final Object f7625b;

    /* renamed from: c */
    public final int f7626c;

    /* renamed from: d */
    public final zzmo[] f7627d;

    /* renamed from: e */
    public final long f7628e;

    /* renamed from: f */
    public int f7629f;

    /* renamed from: g */
    public long f7630g;

    /* renamed from: h */
    public boolean f7631h;

    /* renamed from: i */
    public boolean f7632i;

    /* renamed from: j */
    public boolean f7633j;

    /* renamed from: k */
    public amg f7634k;

    /* renamed from: l */
    public zznh f7635l;

    /* renamed from: m */
    private final boolean[] f7636m;

    /* renamed from: n */
    private final zzhf[] f7637n;

    /* renamed from: o */
    private final zzhe[] f7638o;

    /* renamed from: p */
    private final zznf f7639p;

    /* renamed from: q */
    private final zzha f7640q;

    /* renamed from: r */
    private final zzmb f7641r;

    /* renamed from: s */
    private zznh f7642s;

    public amg(zzhf[] zzhfVarArr, zzhe[] zzheVarArr, long j, zznf zznfVar, zzha zzhaVar, zzmb zzmbVar, Object obj, int i, int i2, boolean z, long j2) {
        this.f7637n = zzhfVarArr;
        this.f7638o = zzheVarArr;
        this.f7628e = j;
        this.f7639p = zznfVar;
        this.f7640q = zzhaVar;
        this.f7641r = zzmbVar;
        this.f7625b = zzoc.checkNotNull(obj);
        this.f7626c = i;
        this.f7629f = i2;
        this.f7631h = z;
        this.f7630g = j2;
        this.f7627d = new zzmo[zzhfVarArr.length];
        this.f7636m = new boolean[zzhfVarArr.length];
        this.f7624a = zzmbVar.zza(i2, zzhaVar.zzet());
    }

    /* renamed from: a */
    public final long m4937a() {
        return this.f7628e - this.f7630g;
    }

    /* renamed from: a */
    public final long m4935a(long j) {
        return m4934a(j, false, new boolean[this.f7637n.length]);
    }

    /* renamed from: a */
    public final long m4934a(long j, boolean z, boolean[] zArr) {
        zzng zzngVar = this.f7635l.zzbeg;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= zzngVar.length) {
                break;
            }
            boolean[] zArr2 = this.f7636m;
            if (z || !this.f7635l.zza(this.f7642s, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        long zza = this.f7624a.zza(zzngVar.zzie(), this.f7636m, this.f7627d, zArr, j);
        this.f7642s = this.f7635l;
        this.f7633j = false;
        int i2 = 0;
        while (true) {
            zzmo[] zzmoVarArr = this.f7627d;
            if (i2 < zzmoVarArr.length) {
                if (zzmoVarArr[i2] != null) {
                    zzoc.checkState(zzngVar.zzay(i2) != null);
                    this.f7633j = true;
                } else {
                    zzoc.checkState(zzngVar.zzay(i2) == null);
                }
                i2++;
            } else {
                this.f7640q.zza(this.f7637n, this.f7635l.zzbef, zzngVar);
                return zza;
            }
        }
    }

    /* renamed from: a */
    public final void m4936a(int i, boolean z) {
        this.f7629f = i;
        this.f7631h = z;
    }

    /* renamed from: b */
    public final boolean m4933b() {
        if (this.f7632i) {
            return !this.f7633j || this.f7624a.zzhj() == Long.MIN_VALUE;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4932c() {
        /*
            r4 = this;
            r0 = r4
            com.google.android.gms.internal.ads.zznf r0 = r0.f7639p
            r1 = r4
            com.google.android.gms.internal.ads.zzhe[] r1 = r1.f7638o
            r2 = r4
            com.google.android.gms.internal.ads.zzlz r2 = r2.f7624a
            com.google.android.gms.internal.ads.zzmr r2 = r2.zzhg()
            com.google.android.gms.internal.ads.zznh r0 = r0.zza(r1, r2)
            r5 = r0
            r0 = r4
            com.google.android.gms.internal.ads.zznh r0 = r0.f7642s
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0023
        L_0x001e:
            r0 = 0
            r7 = r0
            goto L_0x0044
        L_0x0023:
            r0 = 0
            r7 = r0
        L_0x0025:
            r0 = r7
            r1 = r5
            com.google.android.gms.internal.ads.zzng r1 = r1.zzbeg
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0042
            r0 = r5
            r1 = r6
            r2 = r7
            boolean r0 = r0.zza(r1, r2)
            if (r0 != 0) goto L_0x003c
            goto L_0x001e
        L_0x003c:
            int r7 = r7 + 1
            goto L_0x0025
        L_0x0042:
            r0 = 1
            r7 = r0
        L_0x0044:
            r0 = r7
            if (r0 == 0) goto L_0x004a
            r0 = 0
            return r0
        L_0x004a:
            r0 = r4
            r1 = r5
            r0.f7635l = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.amg.m4932c():boolean");
    }

    /* renamed from: d */
    public final void m4931d() {
        try {
            this.f7641r.zzb(this.f7624a);
        } catch (RuntimeException e) {
            Log.e("ExoPlayerImplInternal", "Period release failed.", e);
        }
    }
}
