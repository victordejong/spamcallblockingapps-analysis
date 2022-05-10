package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p170b.p224d.p252g.p253a.qe0;
import p131c.p161d.p170b.p224d.p252g.p253a.re0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznh.class */
public final class zznh implements zzkg {

    /* renamed from: a */
    public final zzok f28664a;

    /* renamed from: b */
    public final int f28665b;

    /* renamed from: c */
    public final qe0 f28666c = new qe0();

    /* renamed from: d */
    public final zzni f28667d = new zzni();

    /* renamed from: e */
    public final zzpk f28668e = new zzpk(32);

    /* renamed from: f */
    public final AtomicInteger f28669f = new AtomicInteger();

    /* renamed from: g */
    public re0 f28670g;

    /* renamed from: h */
    public re0 f28671h;

    /* renamed from: i */
    public zzho f28672i;

    /* renamed from: j */
    public zzho f28673j;

    /* renamed from: k */
    public long f28674k;

    /* renamed from: l */
    public int f28675l;

    /* renamed from: m */
    public zznj f28676m;

    public zznh(zzok zzokVar) {
        this.f28664a = zzokVar;
        this.f28665b = zzokVar.mo11723a();
        int i = this.f28665b;
        this.f28675l = i;
        re0 re0Var = new re0(0L, i);
        this.f28670g = re0Var;
        this.f28671h = re0Var;
    }

    /* renamed from: a */
    public final int m11786a(int i) {
        if (this.f28675l == this.f28665b) {
            this.f28675l = 0;
            re0 re0Var = this.f28671h;
            if (re0Var.f15004c) {
                this.f28671h = re0Var.f15006e;
            }
            re0 re0Var2 = this.f28671h;
            zzoh b = this.f28664a.mo11719b();
            re0 re0Var3 = new re0(this.f28671h.f15003b, this.f28665b);
            re0Var2.f15005d = b;
            re0Var2.f15006e = re0Var3;
            re0Var2.f15004c = true;
        }
        return Math.min(i, this.f28665b - this.f28675l);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0119, code lost:
        if (r0.length < r18) goto L_0x011c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0138, code lost:
        if (r0.length < r18) goto L_0x013b;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.gms.internal.ads.zznh] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m11780a(com.google.android.gms.internal.ads.zzhq r9, com.google.android.gms.internal.ads.zzjk r10, boolean r11, boolean r12, long r13) {
        /*
            Method dump skipped, instructions count: 709
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznh.m11780a(com.google.android.gms.internal.ads.zzhq, com.google.android.gms.internal.ads.zzjk, boolean, boolean, long):int");
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    /* renamed from: a */
    public final int mo11779a(zzjy zzjyVar, int i, boolean z) throws IOException, InterruptedException {
        if (!m11769h()) {
            int b = zzjyVar.mo11883b(i);
            if (b != -1) {
                return b;
            }
            throw new EOFException();
        }
        try {
            int a = m11786a(i);
            zzoh zzohVar = this.f28671h.f15005d;
            int read = zzjyVar.read(zzohVar.f28713a, zzohVar.m11733a(this.f28675l), a);
            if (read != -1) {
                this.f28675l += read;
                this.f28674k += read;
                return read;
            }
            throw new EOFException();
        } finally {
            m11768i();
        }
    }

    /* renamed from: a */
    public final void m11787a() {
        if (this.f28669f.getAndSet(2) == 0) {
            m11774c();
        }
    }

    /* renamed from: a */
    public final void m11785a(long j) {
        while (true) {
            re0 re0Var = this.f28670g;
            if (j >= re0Var.f15003b) {
                this.f28664a.mo11721a(re0Var.f15005d);
                this.f28670g = this.f28670g.m26408a();
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    /* renamed from: a */
    public final void mo11784a(long j, int i, int i2, int i3, zzkf zzkfVar) {
        if (!m11769h()) {
            this.f28666c.m26474a(j);
            return;
        }
        try {
            this.f28666c.m26473a(j, i, (this.f28674k - i2) - i3, i2, zzkfVar);
        } finally {
            m11768i();
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
    public final void m11782a(long r7, byte[] r9, int r10) {
        /*
            r6 = this;
            r0 = r6
            r1 = r7
            r0.m11785a(r1)
            r0 = 0
            r11 = r0
        L_0x0008:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L_0x008b
            r0 = r7
            r1 = r6
            c.d.b.d.g.a.re0 r1 = r1.f28670g
            long r1 = r1.f15002a
            long r0 = r0 - r1
            int r0 = (int) r0
            r12 = r0
            r0 = r10
            r1 = r11
            int r0 = r0 - r1
            r1 = r6
            int r1 = r1.f28665b
            r2 = r12
            int r1 = r1 - r2
            int r0 = java.lang.Math.min(r0, r1)
            r13 = r0
            r0 = r6
            c.d.b.d.g.a.re0 r0 = r0.f28670g
            com.google.android.gms.internal.ads.zzoh r0 = r0.f15005d
            r14 = r0
            r0 = r14
            byte[] r0 = r0.f28713a
            r1 = r14
            r2 = r12
            int r1 = r1.m11733a(r2)
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
            r13 = r0
            r0 = r13
            r11 = r0
            r0 = r15
            r7 = r0
            r0 = r15
            r1 = r6
            c.d.b.d.g.a.re0 r1 = r1.f28670g
            long r1 = r1.f15003b
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0008
            r0 = r6
            com.google.android.gms.internal.ads.zzok r0 = r0.f28664a
            r1 = r14
            r0.mo11721a(r1)
            r0 = r6
            r1 = r6
            c.d.b.d.g.a.re0 r1 = r1.f28670g
            c.d.b.d.g.a.re0 r1 = r1.m26408a()
            r0.f28670g = r1
            r0 = r13
            r11 = r0
            r0 = r15
            r7 = r0
            goto L_0x0008
        L_0x008b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zznh.m11782a(long, byte[], int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    /* renamed from: a */
    public final void mo11781a(zzho zzhoVar) {
        zzho zzhoVar2 = zzhoVar == null ? null : zzhoVar;
        boolean a = this.f28666c.m26471a(zzhoVar2);
        this.f28673j = zzhoVar;
        zznj zznjVar = this.f28676m;
        if (zznjVar != null && a) {
            zznjVar.mo11767a(zzhoVar2);
        }
    }

    /* renamed from: a */
    public final void m11778a(zznj zznjVar) {
        this.f28676m = zznjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzkg
    /* renamed from: a */
    public final void mo11777a(zzpk zzpkVar, int i) {
        int i2 = i;
        if (!m11769h()) {
            zzpkVar.m11654d(i);
            return;
        }
        while (i2 > 0) {
            int a = m11786a(i2);
            zzoh zzohVar = this.f28671h.f15005d;
            zzpkVar.m11660a(zzohVar.f28713a, zzohVar.m11733a(this.f28675l), a);
            this.f28675l += a;
            this.f28674k += a;
            i2 -= a;
        }
        m11768i();
    }

    /* renamed from: a */
    public final void m11776a(boolean z) {
        int andSet = this.f28669f.getAndSet(z ? 0 : 2);
        m11774c();
        this.f28666c.m26468c();
        if (andSet == 2) {
            this.f28672i = null;
        }
    }

    /* renamed from: a */
    public final boolean m11783a(long j, boolean z) {
        long a = this.f28666c.m26472a(j, z);
        if (a == -1) {
            return false;
        }
        m11785a(a);
        return true;
    }

    /* renamed from: b */
    public final long m11775b() {
        return this.f28666c.m26475a();
    }

    /* renamed from: c */
    public final void m11774c() {
        this.f28666c.m26469b();
        re0 re0Var = this.f28670g;
        if (re0Var.f15004c) {
            re0 re0Var2 = this.f28671h;
            int i = (re0Var2.f15004c ? 1 : 0) + (((int) (re0Var2.f15002a - re0Var.f15002a)) / this.f28665b);
            zzoh[] zzohVarArr = new zzoh[i];
            for (int i2 = 0; i2 < i; i2++) {
                zzohVarArr[i2] = re0Var.f15005d;
                re0Var = re0Var.m26408a();
            }
            this.f28664a.mo11720a(zzohVarArr);
        }
        re0 re0Var3 = new re0(0L, this.f28665b);
        this.f28670g = re0Var3;
        this.f28671h = re0Var3;
        this.f28674k = 0L;
        this.f28675l = this.f28665b;
        this.f28664a.mo11716u();
    }

    /* renamed from: d */
    public final int m11773d() {
        return this.f28666c.m26467d();
    }

    /* renamed from: e */
    public final boolean m11772e() {
        return this.f28666c.m26466e();
    }

    /* renamed from: f */
    public final zzho m11771f() {
        return this.f28666c.m26465f();
    }

    /* renamed from: g */
    public final void m11770g() {
        long g = this.f28666c.m26464g();
        if (g != -1) {
            m11785a(g);
        }
    }

    /* renamed from: h */
    public final boolean m11769h() {
        return this.f28669f.compareAndSet(0, 1);
    }

    /* renamed from: i */
    public final void m11768i() {
        if (!this.f28669f.compareAndSet(1, 0)) {
            m11774c();
        }
    }
}
