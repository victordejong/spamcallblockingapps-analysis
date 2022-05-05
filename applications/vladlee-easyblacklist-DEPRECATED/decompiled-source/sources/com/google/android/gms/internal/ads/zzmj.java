package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmj.class */
public final class zzmj implements zzjo {

    /* renamed from: a */
    private final zznj f15135a;

    /* renamed from: b */
    private final int f15136b;

    /* renamed from: c */
    private final aov f15137c = new aov();

    /* renamed from: d */
    private final zzmk f15138d = new zzmk();

    /* renamed from: e */
    private final zzoj f15139e = new zzoj(32);

    /* renamed from: f */
    private final AtomicInteger f15140f = new AtomicInteger();

    /* renamed from: g */
    private aow f15141g;

    /* renamed from: h */
    private aow f15142h;

    /* renamed from: i */
    private zzgw f15143i;

    /* renamed from: j */
    private boolean f15144j;

    /* renamed from: k */
    private zzgw f15145k;

    /* renamed from: l */
    private long f15146l;

    /* renamed from: m */
    private int f15147m;

    /* renamed from: n */
    private zzml f15148n;

    public zzmj(zznj zznjVar) {
        this.f15135a = zznjVar;
        this.f15136b = zznjVar.zzig();
        int i = this.f15136b;
        this.f15147m = i;
        this.f15141g = new aow(0L, i);
        this.f15142h = this.f15141g;
    }

    /* renamed from: a */
    private final int m3184a(int i) {
        if (this.f15147m == this.f15136b) {
            this.f15147m = 0;
            if (this.f15142h.f8076c) {
                this.f15142h = this.f15142h.f8078e;
            }
            aow aowVar = this.f15142h;
            zznk zzif = this.f15135a.zzif();
            aow aowVar2 = new aow(this.f15142h.f8075b, this.f15136b);
            aowVar.f8077d = zzif;
            aowVar.f8078e = aowVar2;
            aowVar.f8076c = true;
        }
        return Math.min(i, this.f15136b - this.f15147m);
    }

    /* renamed from: a */
    private final void m3183a(long j) {
        while (j >= this.f15141g.f8075b) {
            this.f15135a.zza(this.f15141g.f8077d);
            this.f15141g = this.f15141g.m4779a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m3182a(long r7, byte[] r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.m3183a(r1)
            r0 = 0
            r11 = r0
        L_0x0008:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x008b
            r0 = r7
            r1 = r6
            com.google.android.gms.internal.ads.aow r1 = r1.f15141g
            long r1 = r1.f8074a
            long r0 = r0 - r1
            int r0 = (int) r0
            r12 = r0
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r1 = r6
            int r1 = r1.f15136b
            r2 = r12
            int r1 = r1 - r2
            int r0 = java.lang.Math.min(r0, r1)
            r13 = r0
            r0 = r6
            com.google.android.gms.internal.ads.aow r0 = r0.f15141g
            com.google.android.gms.internal.ads.zznk r0 = r0.f8077d
            r14 = r0
            r0 = r14
            byte[] r0 = r0.data
            r1 = r14
            r2 = r12
            int r1 = r1.zzaz(r2)
            r2 = r9
            r3 = r11
            r4 = r13
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r7
            r1 = r13
            long r1 = (long) r1
            long r0 = r0 + r1
            r15 = r0
            r0 = r11
            r1 = r13
            int r0 = r0 + r1
            r12 = r0
            r0 = r12
            r11 = r0
            r0 = r15
            r7 = r0
            r0 = r15
            r1 = r6
            com.google.android.gms.internal.ads.aow r1 = r1.f15141g
            long r1 = r1.f8075b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0008
            r0 = r6
            com.google.android.gms.internal.ads.zznj r0 = r0.f15135a
            r1 = r14
            r0.zza(r1)
            r0 = r6
            r1 = r6
            com.google.android.gms.internal.ads.aow r1 = r1.f15141g
            com.google.android.gms.internal.ads.aow r1 = r1.m4779a()
            r0.f15141g = r1
            r0 = r12
            r11 = r0
            r0 = r15
            r7 = r0
            goto L_0x0008
        L_0x008b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmj.m3182a(long, byte[], int):void");
    }

    /* renamed from: a */
    private final boolean m3185a() {
        return this.f15140f.compareAndSet(0, 1);
    }

    /* renamed from: b */
    private final void m3181b() {
        if (!this.f15140f.compareAndSet(1, 0)) {
            m3180c();
        }
    }

    /* renamed from: c */
    private final void m3180c() {
        this.f15137c.m4791a();
        aow aowVar = this.f15141g;
        if (aowVar.f8076c) {
            zznk[] zznkVarArr = new zznk[(this.f15142h.f8076c ? 1 : 0) + (((int) (this.f15142h.f8074a - aowVar.f8074a)) / this.f15136b)];
            for (int i = 0; i < zznkVarArr.length; i++) {
                zznkVarArr[i] = aowVar.f8077d;
                aowVar = aowVar.m4779a();
            }
            this.f15135a.zza(zznkVarArr);
        }
        this.f15141g = new aow(0L, this.f15136b);
        this.f15142h = this.f15141g;
        this.f15146l = 0L;
        this.f15147m = this.f15136b;
        this.f15135a.zzm();
    }

    public final void disable() {
        if (this.f15140f.getAndSet(2) == 0) {
            m3180c();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x011d, code lost:
        if (r0.length < r17) goto L_0x0120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x013c, code lost:
        if (r0.length < r17) goto L_0x013f;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v77, types: [long] */
    /* JADX WARN: Type inference failed for: r13v10, types: [long] */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r13v9, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.gms.internal.ads.zzmj] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzgy r9, com.google.android.gms.internal.ads.zzis r10, boolean r11, boolean r12, long r13) {
        /*
            Method dump skipped, instructions count: 708
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmj.zza(com.google.android.gms.internal.ads.zzgy, com.google.android.gms.internal.ads.zzis, boolean, boolean, long):int");
    }

    @Override // com.google.android.gms.internal.ads.zzjo
    public final int zza(zzjg zzjgVar, int i, boolean z) {
        if (!m3185a()) {
            int zzab = zzjgVar.zzab(i);
            if (zzab != -1) {
                return zzab;
            }
            throw new EOFException();
        }
        try {
            int a = m3184a(i);
            zznk zznkVar = this.f15142h.f8077d;
            int read = zzjgVar.read(zznkVar.data, zznkVar.zzaz(this.f15147m), a);
            if (read != -1) {
                this.f15147m += read;
                this.f15146l += read;
                return read;
            }
            throw new EOFException();
        } finally {
            m3181b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjo
    public final void zza(long j, int i, int i2, int i3, zzjn zzjnVar) {
        if (!m3185a()) {
            this.f15137c.m4790a(j);
            return;
        }
        try {
            this.f15137c.m4789a(j, i, this.f15146l - i2, i2, zzjnVar);
        } finally {
            m3181b();
        }
    }

    public final void zza(zzml zzmlVar) {
        this.f15148n = zzmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjo
    public final void zza(zzoj zzojVar, int i) {
        int i2 = i;
        if (!m3185a()) {
            zzojVar.zzbf(i);
            return;
        }
        while (i2 > 0) {
            int a = m3184a(i2);
            zznk zznkVar = this.f15142h.f8077d;
            zzojVar.zze(zznkVar.data, zznkVar.zzaz(this.f15147m), a);
            this.f15147m += a;
            this.f15146l += a;
            i2 -= a;
        }
        m3181b();
    }

    @Override // com.google.android.gms.internal.ads.zzjo
    public final void zze(zzgw zzgwVar) {
        zzgw zzgwVar2 = zzgwVar == null ? null : zzgwVar;
        boolean a = this.f15137c.m4787a(zzgwVar2);
        this.f15145k = zzgwVar;
        this.f15144j = false;
        zzml zzmlVar = this.f15148n;
        if (zzmlVar != null && a) {
            zzmlVar.zzf(zzgwVar2);
        }
    }

    public final boolean zze(long j, boolean z) {
        long a = this.f15137c.m4788a(j, z);
        if (a == -1) {
            return false;
        }
        m3183a(a);
        return true;
    }

    public final long zzhn() {
        return this.f15137c.m4781f();
    }

    public final int zzhv() {
        return this.f15137c.m4784c();
    }

    public final boolean zzhw() {
        return this.f15137c.m4783d();
    }

    public final zzgw zzhx() {
        return this.f15137c.m4782e();
    }

    public final void zzhz() {
        long g = this.f15137c.m4780g();
        if (g != -1) {
            m3183a(g);
        }
    }

    public final void zzk(boolean z) {
        int andSet = this.f15140f.getAndSet(z ? 0 : 2);
        m3180c();
        this.f15137c.m4785b();
        if (andSet == 2) {
            this.f15143i = null;
        }
    }
}
