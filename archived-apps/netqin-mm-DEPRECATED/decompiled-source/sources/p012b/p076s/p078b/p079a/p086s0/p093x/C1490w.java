package p012b.p076s.p078b.p079a.p086s0.p093x;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
/* renamed from: b.s.b.a.s0.x.w */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/w.class */
public final class C1490w {

    /* renamed from: c */
    public boolean f6116c;

    /* renamed from: d */
    public boolean f6117d;

    /* renamed from: e */
    public boolean f6118e;

    /* renamed from: a */
    public final C1196z f6114a = new C1196z(0);

    /* renamed from: f */
    public long f6119f = -9223372036854775807L;

    /* renamed from: g */
    public long f6120g = -9223372036854775807L;

    /* renamed from: h */
    public long f6121h = -9223372036854775807L;

    /* renamed from: b */
    public final C1184p f6115b = new C1184p();

    /* renamed from: a */
    public static boolean m33140a(byte[] bArr) {
        boolean z = false;
        if ((bArr[0] & 196) != 68 || (bArr[2] & 4) != 4 || (bArr[4] & 4) != 4 || (bArr[5] & 1) != 1) {
            return false;
        }
        if ((bArr[8] & 3) == 3) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static long m33135b(byte[] bArr) {
        return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
    }

    /* renamed from: c */
    public static long m33133c(C1184p pVar) {
        int c = pVar.m34363c();
        if (pVar.m34372a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        pVar.m34366a(bArr, 0, 9);
        pVar.m34358e(c);
        if (!m33140a(bArr)) {
            return -9223372036854775807L;
        }
        return m33135b(bArr);
    }

    /* renamed from: a */
    public final int m33142a(AbstractC1351h hVar) {
        this.f6115b.m34368a(C1167d0.f4693f);
        this.f6116c = true;
        hVar.mo33614c();
        return 0;
    }

    /* renamed from: a */
    public int m33141a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        if (!this.f6118e) {
            return m33132c(hVar, nVar);
        }
        if (this.f6120g == -9223372036854775807L) {
            return m33142a(hVar);
        }
        if (!this.f6117d) {
            return m33136b(hVar, nVar);
        }
        long j = this.f6119f;
        if (j == -9223372036854775807L) {
            return m33142a(hVar);
        }
        this.f6121h = this.f6114a.m34292b(this.f6120g) - this.f6114a.m34292b(j);
        return m33142a(hVar);
    }

    /* renamed from: a */
    public final int m33139a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: a */
    public long m33144a() {
        return this.f6121h;
    }

    /* renamed from: a */
    public final long m33143a(C1184p pVar) {
        int d = pVar.m34361d();
        for (int c = pVar.m34363c(); c < d - 3; c++) {
            if (m33139a(pVar.f4738a, c) == 442) {
                pVar.m34358e(c + 4);
                long c2 = m33133c(pVar);
                if (c2 != -9223372036854775807L) {
                    return c2;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public final int m33136b(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        int min = (int) Math.min(20000L, hVar.mo33622a());
        long j = 0;
        if (hVar.getPosition() != j) {
            nVar.f5355a = j;
            return 1;
        }
        this.f6115b.m34362c(min);
        hVar.mo33614c();
        hVar.mo33619a(this.f6115b.f4738a, 0, min);
        this.f6119f = m33143a(this.f6115b);
        this.f6117d = true;
        return 0;
    }

    /* renamed from: b */
    public final long m33137b(C1184p pVar) {
        int c = pVar.m34363c();
        for (int d = pVar.m34361d() - 4; d >= c; d--) {
            if (m33139a(pVar.f4738a, d) == 442) {
                pVar.m34358e(d + 4);
                long c2 = m33133c(pVar);
                if (c2 != -9223372036854775807L) {
                    return c2;
                }
            }
        }
        return -9223372036854775807L;
    }

    /* renamed from: b */
    public C1196z m33138b() {
        return this.f6114a;
    }

    /* renamed from: c */
    public final int m33132c(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        long a = hVar.mo33622a();
        int min = (int) Math.min(20000L, a);
        long j = a - min;
        if (hVar.getPosition() != j) {
            nVar.f5355a = j;
            return 1;
        }
        this.f6115b.m34362c(min);
        hVar.mo33614c();
        hVar.mo33619a(this.f6115b.f4738a, 0, min);
        this.f6120g = m33137b(this.f6115b);
        this.f6118e = true;
        return 0;
    }

    /* renamed from: c */
    public boolean m33134c() {
        return this.f6116c;
    }
}
