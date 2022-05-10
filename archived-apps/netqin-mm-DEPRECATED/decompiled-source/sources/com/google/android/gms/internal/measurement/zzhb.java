package com.google.android.gms.internal.measurement;

import java.io.IOException;
import p131c.p161d.p170b.p224d.p252g.p258f.C4586s2;
import p131c.p161d.p170b.p224d.p252g.p258f.C4605v2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhb.class */
public abstract class zzhb {

    /* renamed from: a */
    public int f29484a;

    /* renamed from: b */
    public int f29485b;

    /* renamed from: c */
    public C4605v2 f29486c;

    public zzhb() {
        this.f29485b = 100;
    }

    /* renamed from: a */
    public static long m9786a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    /* renamed from: a */
    public static zzhb m9785a(byte[] bArr, int i, int i2, boolean z) {
        C4586s2 s2Var = new C4586s2(bArr, i2);
        try {
            s2Var.mo9781c(i2);
            return s2Var;
        } catch (zzij e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: e */
    public static int m9777e(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    /* renamed from: a */
    public abstract int mo9788a() throws IOException;

    /* renamed from: a */
    public abstract void mo9787a(int i) throws zzij;

    /* renamed from: b */
    public abstract double mo9784b() throws IOException;

    /* renamed from: b */
    public abstract boolean mo9783b(int i) throws IOException;

    /* renamed from: c */
    public abstract float mo9782c() throws IOException;

    /* renamed from: c */
    public abstract int mo9781c(int i) throws zzij;

    /* renamed from: d */
    public abstract long mo9780d() throws IOException;

    /* renamed from: d */
    public abstract void mo9779d(int i);

    /* renamed from: e */
    public abstract long mo9778e() throws IOException;

    /* renamed from: f */
    public abstract int mo9776f() throws IOException;

    /* renamed from: g */
    public abstract long mo9775g() throws IOException;

    /* renamed from: h */
    public abstract int mo9774h() throws IOException;

    /* renamed from: i */
    public abstract boolean mo9773i() throws IOException;

    /* renamed from: j */
    public abstract String mo9772j() throws IOException;

    /* renamed from: k */
    public abstract String mo9771k() throws IOException;

    /* renamed from: l */
    public abstract zzgp mo9770l() throws IOException;

    /* renamed from: m */
    public abstract int mo9769m() throws IOException;

    /* renamed from: n */
    public abstract int mo9768n() throws IOException;

    /* renamed from: o */
    public abstract int mo9767o() throws IOException;

    /* renamed from: p */
    public abstract long mo9766p() throws IOException;

    /* renamed from: q */
    public abstract int mo9765q() throws IOException;

    /* renamed from: r */
    public abstract long mo9764r() throws IOException;

    /* renamed from: s */
    public abstract boolean mo9763s() throws IOException;

    /* renamed from: t */
    public abstract int mo9762t();
}
