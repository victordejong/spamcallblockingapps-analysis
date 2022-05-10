package p131c.p161d.p170b.p188c.p210w0.p217x;

import java.io.IOException;
import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
/* renamed from: c.d.b.c.w0.x.f0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/f0.class */
public final class C3149f0 {

    /* renamed from: c */
    public boolean f11472c;

    /* renamed from: d */
    public boolean f11473d;

    /* renamed from: e */
    public boolean f11474e;

    /* renamed from: a */
    public final C2881f0 f11470a = new C2881f0(0);

    /* renamed from: f */
    public long f11475f = -9223372036854775807L;

    /* renamed from: g */
    public long f11476g = -9223372036854775807L;

    /* renamed from: h */
    public long f11477h = -9223372036854775807L;

    /* renamed from: b */
    public final C2904v f11471b = new C2904v();

    /* renamed from: a */
    public final int m27719a(AbstractC3043h hVar) {
        this.f11471b.m28548a(C2885h0.f10482f);
        this.f11472c = true;
        hVar.mo28050c();
        return 0;
    }

    /* renamed from: a */
    public int m27718a(AbstractC3043h hVar, C3049n nVar, int i) throws IOException, InterruptedException {
        if (i <= 0) {
            return m27719a(hVar);
        }
        if (!this.f11474e) {
            return m27713c(hVar, nVar, i);
        }
        if (this.f11476g == -9223372036854775807L) {
            return m27719a(hVar);
        }
        if (!this.f11473d) {
            return m27715b(hVar, nVar, i);
        }
        long j = this.f11475f;
        if (j == -9223372036854775807L) {
            return m27719a(hVar);
        }
        this.f11477h = this.f11470a.m28711b(this.f11476g) - this.f11470a.m28711b(j);
        return m27719a(hVar);
    }

    /* renamed from: a */
    public long m27721a() {
        return this.f11477h;
    }

    /* renamed from: a */
    public final long m27720a(C2904v vVar, int i) {
        int d = vVar.m28541d();
        for (int c = vVar.m28543c(); c < d; c++) {
            if (vVar.f10530a[c] == 71) {
                long a = C3161i0.m27677a(vVar, c, i);
                if (a != -9223372036854775807L) {
                    return a;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public final int m27715b(AbstractC3043h hVar, C3049n nVar, int i) throws IOException, InterruptedException {
        int min = (int) Math.min(112800L, hVar.mo28058a());
        long j = 0;
        if (hVar.getPosition() != j) {
            nVar.f10989a = j;
            return 1;
        }
        this.f11471b.m28542c(min);
        hVar.mo28050c();
        hVar.mo28055a(this.f11471b.f10530a, 0, min);
        this.f11475f = m27720a(this.f11471b, i);
        this.f11473d = true;
        return 0;
    }

    /* renamed from: b */
    public final long m27716b(C2904v vVar, int i) {
        int c = vVar.m28543c();
        for (int d = vVar.m28541d() - 1; d >= c; d--) {
            if (vVar.f10530a[d] == 71) {
                long a = C3161i0.m27677a(vVar, d, i);
                if (a != -9223372036854775807L) {
                    return a;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public C2881f0 m27717b() {
        return this.f11470a;
    }

    /* renamed from: c */
    public final int m27713c(AbstractC3043h hVar, C3049n nVar, int i) throws IOException, InterruptedException {
        long a = hVar.mo28058a();
        int min = (int) Math.min(112800L, a);
        long j = a - min;
        if (hVar.getPosition() != j) {
            nVar.f10989a = j;
            return 1;
        }
        this.f11471b.m28542c(min);
        hVar.mo28050c();
        hVar.mo28055a(this.f11471b.f10530a, 0, min);
        this.f11476g = m27716b(this.f11471b, i);
        this.f11474e = true;
        return 0;
    }

    /* renamed from: c */
    public boolean m27714c() {
        return this.f11472c;
    }
}
