package p012b.p076s.p078b.p079a.p083p0;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* renamed from: b.s.b.a.p0.o */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/o.class */
public final class C1290o {

    /* renamed from: a */
    public final AbstractC1291a f5113a;

    /* renamed from: b */
    public final long[] f5114b;

    /* renamed from: c */
    public AudioTrack f5115c;

    /* renamed from: d */
    public int f5116d;

    /* renamed from: e */
    public int f5117e;

    /* renamed from: f */
    public C1288n f5118f;

    /* renamed from: g */
    public int f5119g;

    /* renamed from: h */
    public boolean f5120h;

    /* renamed from: i */
    public long f5121i;

    /* renamed from: j */
    public long f5122j;

    /* renamed from: k */
    public long f5123k;

    /* renamed from: l */
    public Method f5124l;

    /* renamed from: m */
    public long f5125m;

    /* renamed from: n */
    public boolean f5126n;

    /* renamed from: o */
    public boolean f5127o;

    /* renamed from: p */
    public long f5128p;

    /* renamed from: q */
    public long f5129q;

    /* renamed from: r */
    public long f5130r;

    /* renamed from: s */
    public long f5131s;

    /* renamed from: t */
    public int f5132t;

    /* renamed from: u */
    public int f5133u;

    /* renamed from: v */
    public long f5134v;

    /* renamed from: w */
    public long f5135w;

    /* renamed from: x */
    public long f5136x;

    /* renamed from: y */
    public long f5137y;

    /* renamed from: b.s.b.a.p0.o$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/o$a.class */
    public interface AbstractC1291a {
        /* renamed from: a */
        void mo33851a(int i, long j);

        /* renamed from: a */
        void mo33850a(long j);

        /* renamed from: a */
        void mo33849a(long j, long j2, long j3, long j4);

        /* renamed from: b */
        void mo33848b(long j, long j2, long j3, long j4);
    }

    public C1290o(AbstractC1291a aVar) {
        C1160a.m34522a(aVar);
        this.f5113a = aVar;
        if (C1167d0.f4688a >= 18) {
            try {
                this.f5124l = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f5114b = new long[10];
    }

    /* renamed from: a */
    public static boolean m33870a(int i) {
        return C1167d0.f4688a < 23 && (i == 5 || i == 6);
    }

    /* renamed from: a */
    public final long m33869a(long j) {
        return (j * 1000000) / this.f5119g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m33866a(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            android.media.AudioTrack r0 = r0.f5115c
            r9 = r0
            r0 = r9
            java.lang.Object r0 = p012b.p076s.p078b.p079a.p080a1.C1160a.m34522a(r0)
            r0 = r9
            android.media.AudioTrack r0 = (android.media.AudioTrack) r0
            int r0 = r0.getPlayState()
            r1 = 3
            if (r0 != r1) goto L_0x0019
            r0 = r7
            r0.m33859e()
        L_0x0019:
            long r0 = java.lang.System.nanoTime()
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r10 = r0
            r0 = r7
            b.s.b.a.p0.n r0 = r0.f5118f
            r9 = r0
            r0 = r9
            java.lang.Object r0 = p012b.p076s.p078b.p079a.p080a1.C1160a.m34522a(r0)
            r0 = r9
            b.s.b.a.p0.n r0 = (p012b.p076s.p078b.p079a.p083p0.C1288n) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.m33878d()
            if (r0 == 0) goto L_0x0055
            r0 = r7
            r1 = r9
            long r1 = r1.m33880b()
            long r0 = r0.m33869a(r1)
            r12 = r0
            r0 = r9
            boolean r0 = r0.m33877e()
            if (r0 != 0) goto L_0x004b
            r0 = r12
            return r0
        L_0x004b:
            r0 = r12
            r1 = r10
            r2 = r9
            long r2 = r2.m33879c()
            long r1 = r1 - r2
            long r0 = r0 + r1
            return r0
        L_0x0055:
            r0 = r7
            int r0 = r0.f5133u
            if (r0 != 0) goto L_0x0064
            r0 = r7
            long r0 = r0.m33863c()
            r10 = r0
            goto L_0x006b
        L_0x0064:
            r0 = r10
            r1 = r7
            long r1 = r1.f5122j
            long r0 = r0 + r1
            r10 = r0
        L_0x006b:
            r0 = r10
            r12 = r0
            r0 = r8
            if (r0 != 0) goto L_0x007a
            r0 = r10
            r1 = r7
            long r1 = r1.f5125m
            long r0 = r0 - r1
            r12 = r0
        L_0x007a:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p083p0.C1290o.m33866a(boolean):long");
    }

    /* renamed from: a */
    public final void m33868a(long j, long j2) {
        C1288n nVar = this.f5118f;
        C1160a.m34522a(nVar);
        C1288n nVar2 = nVar;
        if (nVar2.m33881a(j)) {
            long c = nVar2.m33879c();
            long b = nVar2.m33880b();
            if (Math.abs(c - j) > 5000000) {
                this.f5113a.mo33848b(b, c, j, j2);
                nVar2.m33876f();
            } else if (Math.abs(m33869a(b) - j2) > 5000000) {
                this.f5113a.mo33849a(b, c, j, j2);
                nVar2.m33876f();
            } else {
                nVar2.m33883a();
            }
        }
    }

    /* renamed from: a */
    public void m33867a(AudioTrack audioTrack, int i, int i2, int i3) {
        this.f5115c = audioTrack;
        this.f5116d = i2;
        this.f5117e = i3;
        this.f5118f = new C1288n(audioTrack);
        this.f5119g = audioTrack.getSampleRate();
        this.f5120h = m33870a(i);
        boolean f = C1167d0.m34438f(i);
        this.f5127o = f;
        this.f5121i = f ? m33869a(i3 / i2) : -9223372036854775807L;
        this.f5129q = 0L;
        this.f5130r = 0L;
        this.f5131s = 0L;
        this.f5126n = false;
        this.f5134v = -9223372036854775807L;
        this.f5135w = -9223372036854775807L;
        this.f5125m = 0L;
    }

    /* renamed from: a */
    public final boolean m33871a() {
        boolean z;
        if (this.f5120h) {
            AudioTrack audioTrack = this.f5115c;
            C1160a.m34522a(audioTrack);
            if (audioTrack.getPlayState() == 2 && m33865b() == 0) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public int m33864b(long j) {
        return this.f5117e - ((int) (j - (m33865b() * this.f5116d)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m33865b() {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p083p0.C1290o.m33865b():long");
    }

    /* renamed from: c */
    public final long m33863c() {
        return m33869a(m33865b());
    }

    /* renamed from: c */
    public void m33862c(long j) {
        this.f5136x = m33865b();
        this.f5134v = SystemClock.elapsedRealtime() * 1000;
        this.f5137y = j;
    }

    /* renamed from: d */
    public boolean m33861d() {
        AudioTrack audioTrack = this.f5115c;
        C1160a.m34522a(audioTrack);
        return audioTrack.getPlayState() == 3;
    }

    /* renamed from: d */
    public boolean m33860d(long j) {
        return j > m33865b() || m33871a();
    }

    /* renamed from: e */
    public final void m33859e() {
        long c = m33863c();
        if (c != 0) {
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - this.f5123k >= 30000) {
                long[] jArr = this.f5114b;
                int i = this.f5132t;
                jArr[i] = c - nanoTime;
                this.f5132t = (i + 1) % 10;
                int i2 = this.f5133u;
                if (i2 < 10) {
                    this.f5133u = i2 + 1;
                }
                this.f5123k = nanoTime;
                this.f5122j = 0L;
                int i3 = 0;
                while (true) {
                    int i4 = this.f5133u;
                    if (i3 >= i4) {
                        break;
                    }
                    this.f5122j += this.f5114b[i3] / i4;
                    i3++;
                }
            }
            if (!this.f5120h) {
                m33868a(nanoTime, c);
                m33854g(nanoTime);
            }
        }
    }

    /* renamed from: e */
    public boolean m33858e(long j) {
        return this.f5135w != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.f5135w >= 200;
    }

    /* renamed from: f */
    public boolean m33857f() {
        m33853h();
        if (this.f5134v != -9223372036854775807L) {
            return false;
        }
        C1288n nVar = this.f5118f;
        C1160a.m34522a(nVar);
        nVar.m33875g();
        return true;
    }

    /* renamed from: f */
    public boolean m33856f(long j) {
        AbstractC1291a aVar;
        AudioTrack audioTrack = this.f5115c;
        C1160a.m34522a(audioTrack);
        int playState = audioTrack.getPlayState();
        if (this.f5120h) {
            if (playState == 2) {
                this.f5126n = false;
                return false;
            } else if (playState == 1 && m33865b() == 0) {
                return false;
            }
        }
        boolean z = this.f5126n;
        boolean d = m33860d(j);
        this.f5126n = d;
        if (!z || d || playState == 1 || (aVar = this.f5113a) == null) {
            return true;
        }
        aVar.mo33851a(this.f5117e, C1220c.m34195b(this.f5121i));
        return true;
    }

    /* renamed from: g */
    public void m33855g() {
        m33853h();
        this.f5115c = null;
        this.f5118f = null;
    }

    /* renamed from: g */
    public final void m33854g(long j) {
        Method method;
        if (this.f5127o && (method = this.f5124l) != null && j - this.f5128p >= 500000) {
            try {
                AudioTrack audioTrack = this.f5115c;
                C1160a.m34522a(audioTrack);
                Integer num = (Integer) method.invoke(audioTrack, new Object[0]);
                C1167d0.m34479a(num);
                long intValue = (num.intValue() * 1000) - this.f5121i;
                this.f5125m = intValue;
                long max = Math.max(intValue, 0L);
                this.f5125m = max;
                if (max > 5000000) {
                    this.f5113a.mo33850a(max);
                    this.f5125m = 0L;
                }
            } catch (Exception e) {
                this.f5124l = null;
            }
            this.f5128p = j;
        }
    }

    /* renamed from: h */
    public final void m33853h() {
        this.f5122j = 0L;
        this.f5133u = 0;
        this.f5132t = 0;
        this.f5123k = 0L;
    }

    /* renamed from: i */
    public void m33852i() {
        C1288n nVar = this.f5118f;
        C1160a.m34522a(nVar);
        nVar.m33875g();
    }
}
