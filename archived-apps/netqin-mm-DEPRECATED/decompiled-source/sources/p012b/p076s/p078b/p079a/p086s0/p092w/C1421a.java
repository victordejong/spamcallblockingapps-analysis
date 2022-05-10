package p012b.p076s.p078b.p079a.p086s0.p092w;

import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1361p;
/* renamed from: b.s.b.a.s0.w.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/a.class */
public final class C1421a implements AbstractC1430g {

    /* renamed from: a */
    public final C1429f f5734a = new C1429f();

    /* renamed from: b */
    public final long f5735b;

    /* renamed from: c */
    public final long f5736c;

    /* renamed from: d */
    public final AbstractC1432i f5737d;

    /* renamed from: e */
    public int f5738e;

    /* renamed from: f */
    public long f5739f;

    /* renamed from: g */
    public long f5740g;

    /* renamed from: h */
    public long f5741h;

    /* renamed from: i */
    public long f5742i;

    /* renamed from: j */
    public long f5743j;

    /* renamed from: k */
    public long f5744k;

    /* renamed from: l */
    public long f5745l;

    /* renamed from: b.s.b.a.s0.w.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/a$b.class */
    public class C1423b implements AbstractC1358o {
        public C1423b() {
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: b */
        public AbstractC1358o.C1359a mo33118b(long j) {
            if (j == 0) {
                return new AbstractC1358o.C1359a(new C1361p(0L, C1421a.this.f5735b));
            }
            long b = C1421a.this.f5737d.m33324b(j);
            C1421a aVar = C1421a.this;
            return new AbstractC1358o.C1359a(new C1361p(j, aVar.m33360a(aVar.f5735b, b, 30000L)));
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: b */
        public boolean mo33119b() {
            return true;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: c */
        public long mo33117c() {
            return C1421a.this.f5737d.m33329a(C1421a.this.f5739f);
        }
    }

    public C1421a(long j, long j2, AbstractC1432i iVar, long j3, long j4, boolean z) {
        C1160a.m34520a(j >= 0 && j2 > j);
        this.f5737d = iVar;
        this.f5735b = j;
        this.f5736c = j2;
        if (j3 == j2 - j || z) {
            this.f5739f = j4;
            this.f5738e = 3;
            return;
        }
        this.f5738e = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m33360a(long r10, long r12, long r14) {
        /*
            r9 = this;
            r0 = r9
            long r0 = r0.f5736c
            r16 = r0
            r0 = r9
            long r0 = r0.f5735b
            r18 = r0
            r0 = r10
            r1 = r12
            r2 = r16
            r3 = r18
            long r2 = r2 - r3
            long r1 = r1 * r2
            r2 = r9
            long r2 = r2.f5739f
            long r1 = r1 / r2
            r2 = r14
            long r1 = r1 - r2
            long r0 = r0 + r1
            r10 = r0
            r0 = r10
            r1 = r18
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x002b
            r0 = r18
            r10 = r0
            goto L_0x002b
        L_0x002b:
            r0 = r9
            long r0 = r0.f5736c
            r14 = r0
            r0 = r10
            r12 = r0
            r0 = r10
            r1 = r14
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x003f
            r0 = r14
            r1 = 1
            long r0 = r0 - r1
            r12 = r0
        L_0x003f:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p092w.C1421a.m33360a(long, long, long):long");
    }

    /* renamed from: a */
    public long m33359a(long j, AbstractC1351h hVar) throws IOException, InterruptedException {
        long j2 = 2;
        if (this.f5742i == this.f5743j) {
            return -(this.f5744k + 2);
        }
        long position = hVar.getPosition();
        if (!m33358a(hVar, this.f5743j)) {
            long j3 = this.f5742i;
            if (j3 != position) {
                return j3;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f5734a.m33333a(hVar, false);
        hVar.mo33614c();
        C1429f fVar = this.f5734a;
        long j4 = j - fVar.f5765c;
        int i = fVar.f5767e + fVar.f5768f;
        if (j4 < 0 || j4 > 72000) {
            if (j4 < 0) {
                this.f5743j = position;
                this.f5745l = this.f5734a.f5765c;
            } else {
                long j5 = i;
                long position2 = hVar.getPosition() + j5;
                this.f5742i = position2;
                this.f5744k = this.f5734a.f5765c;
                if ((this.f5743j - position2) + j5 < 100000) {
                    hVar.mo33613c(i);
                    return -(this.f5744k + 2);
                }
            }
            long j6 = this.f5743j;
            long j7 = this.f5742i;
            if (j6 - j7 < 100000) {
                this.f5743j = j7;
                return j7;
            }
            long j8 = i;
            if (j4 > 0) {
                j2 = 1;
            }
            long position3 = hVar.getPosition();
            long j9 = this.f5743j;
            long j10 = this.f5742i;
            return Math.min(Math.max((position3 - (j8 * j2)) + ((j4 * (j9 - j10)) / (this.f5745l - this.f5744k)), j10), this.f5743j - 1);
        }
        hVar.mo33613c(i);
        return -(this.f5734a.f5765c + 2);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
    /* renamed from: a */
    public long mo33321a(AbstractC1351h hVar) throws IOException, InterruptedException {
        int i = this.f5738e;
        if (i == 0) {
            long position = hVar.getPosition();
            this.f5740g = position;
            this.f5738e = 1;
            long j = this.f5736c - 65307;
            if (j > position) {
                return j;
            }
        } else if (i != 1) {
            if (i == 2) {
                long j2 = this.f5741h;
                long j3 = 0;
                if (j2 != 0) {
                    long a = m33359a(j2, hVar);
                    if (a >= 0) {
                        return a;
                    }
                    j3 = m33357a(hVar, this.f5741h, -(a + 2));
                }
                this.f5738e = 3;
                return -(j3 + 2);
            } else if (i == 3) {
                return -1L;
            } else {
                throw new IllegalStateException();
            }
        }
        this.f5739f = m33353b(hVar);
        this.f5738e = 3;
        return this.f5740g;
    }

    /* renamed from: a */
    public long m33357a(AbstractC1351h hVar, long j, long j2) throws IOException, InterruptedException {
        this.f5734a.m33333a(hVar, false);
        while (true) {
            C1429f fVar = this.f5734a;
            if (fVar.f5765c < j) {
                hVar.mo33613c(fVar.f5767e + fVar.f5768f);
                C1429f fVar2 = this.f5734a;
                j2 = fVar2.f5765c;
                fVar2.m33333a(hVar, false);
            } else {
                hVar.mo33614c();
                return j2;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
    /* renamed from: a */
    public C1423b mo33322a() {
        C1423b bVar = null;
        if (this.f5739f != 0) {
            bVar = new C1423b();
        }
        return bVar;
    }

    /* renamed from: a */
    public boolean m33358a(AbstractC1351h hVar, long j) throws IOException, InterruptedException {
        int i;
        long min = Math.min(j + 3, this.f5736c);
        int i2 = RecyclerView.AbstractC0495b0.FLAG_MOVED;
        byte[] bArr = new byte[RecyclerView.AbstractC0495b0.FLAG_MOVED];
        while (true) {
            int i3 = 0;
            if (hVar.getPosition() + i2 > min) {
                int position = (int) (min - hVar.getPosition());
                i2 = position;
                if (position < 4) {
                    return false;
                }
            }
            hVar.mo33615b(bArr, 0, i2, false);
            while (true) {
                i = i2 - 3;
                if (i3 < i) {
                    if (bArr[i3] == 79 && bArr[i3 + 1] == 103 && bArr[i3 + 2] == 103 && bArr[i3 + 3] == 83) {
                        hVar.mo33613c(i3);
                        return true;
                    }
                    i3++;
                }
            }
            hVar.mo33613c(i);
        }
    }

    /* renamed from: b */
    public long m33353b(AbstractC1351h hVar) throws IOException, InterruptedException {
        m33351c(hVar);
        this.f5734a.m33334a();
        while ((this.f5734a.f5764b & 4) != 4 && hVar.getPosition() < this.f5736c) {
            this.f5734a.m33333a(hVar, false);
            C1429f fVar = this.f5734a;
            hVar.mo33613c(fVar.f5767e + fVar.f5768f);
        }
        return this.f5734a.f5765c;
    }

    /* renamed from: b */
    public void m33354b() {
        this.f5742i = this.f5735b;
        this.f5743j = this.f5736c;
        this.f5744k = 0L;
        this.f5745l = this.f5739f;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1430g
    /* renamed from: c */
    public long mo33320c(long j) {
        int i = this.f5738e;
        C1160a.m34520a(i == 3 || i == 2);
        long j2 = 0;
        if (j != 0) {
            j2 = this.f5737d.m33324b(j);
        }
        this.f5741h = j2;
        this.f5738e = 2;
        m33354b();
        return this.f5741h;
    }

    /* renamed from: c */
    public void m33351c(AbstractC1351h hVar) throws IOException, InterruptedException {
        if (!m33358a(hVar, this.f5736c)) {
            throw new EOFException();
        }
    }
}
