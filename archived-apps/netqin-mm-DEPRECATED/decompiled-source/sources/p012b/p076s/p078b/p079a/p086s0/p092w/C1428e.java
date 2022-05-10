package p012b.p076s.p078b.p079a.p086s0.p092w;

import java.io.IOException;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
/* renamed from: b.s.b.a.s0.w.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/e.class */
public final class C1428e {

    /* renamed from: a */
    public final C1429f f5758a = new C1429f();

    /* renamed from: b */
    public final C1184p f5759b = new C1184p(new byte[65025], 0);

    /* renamed from: c */
    public int f5760c = -1;

    /* renamed from: d */
    public int f5761d;

    /* renamed from: e */
    public boolean f5762e;

    /* renamed from: a */
    public final int m33339a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f5761d = 0;
        do {
            int i5 = this.f5761d;
            C1429f fVar = this.f5758a;
            i2 = i4;
            if (i + i5 >= fVar.f5766d) {
                break;
            }
            int[] iArr = fVar.f5769g;
            this.f5761d = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: a */
    public C1429f m33340a() {
        return this.f5758a;
    }

    /* renamed from: a */
    public boolean m33338a(AbstractC1351h hVar) throws IOException, InterruptedException {
        int i;
        C1160a.m34518b(hVar != null);
        if (this.f5762e) {
            this.f5762e = false;
            this.f5759b.m34336z();
        }
        while (!this.f5762e) {
            if (this.f5760c < 0) {
                if (!this.f5758a.m33333a(hVar, true)) {
                    return false;
                }
                C1429f fVar = this.f5758a;
                int i2 = fVar.f5767e;
                if ((fVar.f5764b & 1) == 1 && this.f5759b.m34361d() == 0) {
                    i2 += m33339a(0);
                    i = this.f5761d + 0;
                } else {
                    i = 0;
                }
                hVar.mo33613c(i2);
                this.f5760c = i;
            }
            int a = m33339a(this.f5760c);
            int i3 = this.f5760c + this.f5761d;
            if (a > 0) {
                if (this.f5759b.m34365b() < this.f5759b.m34361d() + a) {
                    C1184p pVar = this.f5759b;
                    pVar.f4738a = Arrays.copyOf(pVar.f4738a, pVar.m34361d() + a);
                }
                C1184p pVar2 = this.f5759b;
                hVar.readFully(pVar2.f4738a, pVar2.m34361d(), a);
                C1184p pVar3 = this.f5759b;
                pVar3.m34360d(pVar3.m34361d() + a);
                this.f5762e = this.f5758a.f5769g[i3 - 1] != 255;
            }
            int i4 = i3;
            if (i3 == this.f5758a.f5766d) {
                i4 = -1;
            }
            this.f5760c = i4;
        }
        return true;
    }

    /* renamed from: b */
    public C1184p m33337b() {
        return this.f5759b;
    }

    /* renamed from: c */
    public void m33336c() {
        this.f5758a.m33334a();
        this.f5759b.m34336z();
        this.f5760c = -1;
        this.f5762e = false;
    }

    /* renamed from: d */
    public void m33335d() {
        C1184p pVar = this.f5759b;
        byte[] bArr = pVar.f4738a;
        if (bArr.length != 65025) {
            pVar.f4738a = Arrays.copyOf(bArr, Math.max(65025, pVar.m34361d()));
        }
    }
}
