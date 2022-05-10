package p012b.p076s.p078b.p079a.p086s0.p092w;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1172g;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1361p;
import p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i;
/* renamed from: b.s.b.a.s0.w.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/b.class */
public final class C1424b extends AbstractC1432i {

    /* renamed from: n */
    public C1172g f5747n;

    /* renamed from: o */
    public C1425a f5748o;

    /* renamed from: b.s.b.a.s0.w.b$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/b$a.class */
    public class C1425a implements AbstractC1430g, AbstractC1358o {

        /* renamed from: a */
        public long[] f5749a;

        /* renamed from: b */
        public long[] f5750b;

        /* renamed from: c */
        public long f5751c = -1;

        /* renamed from: d */
        public long f5752d = -1;

        public C1425a() {
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
        /* renamed from: a */
        public long mo33321a(AbstractC1351h hVar) throws IOException, InterruptedException {
            long j = this.f5752d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.f5752d = -1L;
            return j2;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
        /* renamed from: a */
        public AbstractC1358o mo33322a() {
            return this;
        }

        /* renamed from: a */
        public void m33345a(C1184p pVar) {
            pVar.m34356f(1);
            int u = pVar.m34341u() / 18;
            this.f5749a = new long[u];
            this.f5750b = new long[u];
            for (int i = 0; i < u; i++) {
                this.f5749a[i] = pVar.m34348n();
                this.f5750b[i] = pVar.m34348n();
                pVar.m34356f(2);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: b */
        public AbstractC1358o.C1359a mo33118b(long j) {
            int b = C1167d0.m34449b(this.f5749a, C1424b.this.m33324b(j), true, true);
            long a = C1424b.this.m33329a(this.f5749a[b]);
            C1361p pVar = new C1361p(a, this.f5751c + this.f5750b[b]);
            if (a < j) {
                long[] jArr = this.f5749a;
                if (b != jArr.length - 1) {
                    int i = b + 1;
                    return new AbstractC1358o.C1359a(pVar, new C1361p(C1424b.this.m33329a(jArr[i]), this.f5751c + this.f5750b[i]));
                }
            }
            return new AbstractC1358o.C1359a(pVar);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: b */
        public boolean mo33119b() {
            return true;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: c */
        public long mo33117c() {
            return C1424b.this.f5747n.m34422b();
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
        /* renamed from: c */
        public long mo33320c(long j) {
            long b = C1424b.this.m33324b(j);
            this.f5752d = this.f5749a[C1167d0.m34449b(this.f5749a, b, true, true)];
            return b;
        }

        /* renamed from: d */
        public void m33344d(long j) {
            this.f5751c = j;
        }
    }

    /* renamed from: a */
    public static boolean m33348a(byte[] bArr) {
        boolean z = false;
        if (bArr[0] == -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m33346c(C1184p pVar) {
        return pVar.m34372a() >= 5 && pVar.m34344r() == 127 && pVar.m34342t() == 1179402563;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public long mo33312a(C1184p pVar) {
        if (!m33348a(pVar.f4738a)) {
            return -1L;
        }
        return m33347b(pVar);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public void mo33309a(boolean z) {
        super.mo33309a(z);
        if (z) {
            this.f5747n = null;
            this.f5748o = null;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public boolean mo33310a(C1184p pVar, long j, AbstractC1432i.C1434b bVar) throws IOException, InterruptedException {
        byte[] bArr = pVar.f4738a;
        if (this.f5747n == null) {
            this.f5747n = new C1172g(bArr, 17);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, pVar.m34361d());
            copyOfRange[4] = (byte) (-128);
            List singletonList = Collections.singletonList(copyOfRange);
            int a = this.f5747n.m34423a();
            C1172g gVar = this.f5747n;
            bVar.f5786a = Format.m38180a((String) null, "audio/flac", (String) null, -1, a, gVar.f4703b, gVar.f4702a, singletonList, (DrmInitData) null, 0, (String) null);
            return true;
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            C1425a aVar = new C1425a();
            this.f5748o = aVar;
            aVar.m33345a(pVar);
            return true;
        } else if (!m33348a(bArr)) {
            return true;
        } else {
            C1425a aVar2 = this.f5748o;
            if (aVar2 == null) {
                return false;
            }
            aVar2.m33344d(j);
            bVar.f5787b = this.f5748o;
            return false;
        }
    }

    /* renamed from: b */
    public final int m33347b(C1184p pVar) {
        int i;
        int i2;
        int i3 = (pVar.f4738a[2] & 255) >> 4;
        switch (i3) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                i = 576;
                i2 = i3 - 2;
                break;
            case 6:
            case 7:
                pVar.m34356f(4);
                pVar.m34337y();
                int r = i3 == 6 ? pVar.m34344r() : pVar.m34338x();
                pVar.m34358e(0);
                return r + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                i = 256;
                i2 = i3 - 8;
                break;
            default:
                return -1;
        }
        return i << i2;
    }
}
