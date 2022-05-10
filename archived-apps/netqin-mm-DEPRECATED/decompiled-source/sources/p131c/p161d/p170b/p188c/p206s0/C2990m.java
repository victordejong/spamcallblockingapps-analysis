package p131c.p161d.p170b.p188c.p206s0;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import p131c.p161d.p170b.p188c.C2964r;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.s0.m */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/m.class */
public final class C2990m {

    /* renamed from: a */
    public final AbstractC2991a f10752a;

    /* renamed from: b */
    public final long[] f10753b;

    /* renamed from: c */
    public AudioTrack f10754c;

    /* renamed from: d */
    public int f10755d;

    /* renamed from: e */
    public int f10756e;

    /* renamed from: f */
    public C2988l f10757f;

    /* renamed from: g */
    public int f10758g;

    /* renamed from: h */
    public boolean f10759h;

    /* renamed from: i */
    public long f10760i;

    /* renamed from: j */
    public long f10761j;

    /* renamed from: k */
    public long f10762k;

    /* renamed from: l */
    public Method f10763l;

    /* renamed from: m */
    public long f10764m;

    /* renamed from: n */
    public boolean f10765n;

    /* renamed from: o */
    public boolean f10766o;

    /* renamed from: p */
    public long f10767p;

    /* renamed from: q */
    public long f10768q;

    /* renamed from: r */
    public long f10769r;

    /* renamed from: s */
    public long f10770s;

    /* renamed from: t */
    public int f10771t;

    /* renamed from: u */
    public int f10772u;

    /* renamed from: v */
    public long f10773v;

    /* renamed from: w */
    public long f10774w;

    /* renamed from: x */
    public long f10775x;

    /* renamed from: y */
    public long f10776y;

    /* renamed from: c.d.b.c.s0.m$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/s0/m$a.class */
    public interface AbstractC2991a {
        /* renamed from: a */
        void mo18623a(int i, long j);

        /* renamed from: a */
        void mo18622a(long j);

        /* renamed from: a */
        void mo18621a(long j, long j2, long j3, long j4);

        /* renamed from: b */
        void mo18620b(long j, long j2, long j3, long j4);
    }

    public C2990m(AbstractC2991a aVar) {
        C2877e.m28737a(aVar);
        this.f10752a = aVar;
        if (C2885h0.f10477a >= 18) {
            try {
                this.f10763l = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f10753b = new long[10];
    }

    /* renamed from: a */
    public static boolean m28265a(int i) {
        return C2885h0.f10477a < 23 && (i == 5 || i == 6);
    }

    /* renamed from: a */
    public final long m28264a(long j) {
        return (j * 1000000) / this.f10758g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m28261a(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            android.media.AudioTrack r0 = r0.f10754c
            r9 = r0
            r0 = r9
            java.lang.Object r0 = p131c.p161d.p170b.p188c.p203g1.C2877e.m28737a(r0)
            r0 = r9
            android.media.AudioTrack r0 = (android.media.AudioTrack) r0
            int r0 = r0.getPlayState()
            r1 = 3
            if (r0 != r1) goto L_0x0019
            r0 = r7
            r0.m28254e()
        L_0x0019:
            long r0 = java.lang.System.nanoTime()
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r10 = r0
            r0 = r7
            c.d.b.c.s0.l r0 = r0.f10757f
            r9 = r0
            r0 = r9
            java.lang.Object r0 = p131c.p161d.p170b.p188c.p203g1.C2877e.m28737a(r0)
            r0 = r9
            c.d.b.c.s0.l r0 = (p131c.p161d.p170b.p188c.p206s0.C2988l) r0
            r9 = r0
            r0 = r9
            boolean r0 = r0.m28273d()
            if (r0 == 0) goto L_0x0055
            r0 = r7
            r1 = r9
            long r1 = r1.m28275b()
            long r0 = r0.m28264a(r1)
            r12 = r0
            r0 = r9
            boolean r0 = r0.m28272e()
            if (r0 != 0) goto L_0x004b
            r0 = r12
            return r0
        L_0x004b:
            r0 = r12
            r1 = r10
            r2 = r9
            long r2 = r2.m28274c()
            long r1 = r1 - r2
            long r0 = r0 + r1
            return r0
        L_0x0055:
            r0 = r7
            int r0 = r0.f10772u
            if (r0 != 0) goto L_0x0065
            r0 = r7
            long r0 = r0.m28258c()
            r12 = r0
            goto L_0x006d
        L_0x0065:
            r0 = r10
            r1 = r7
            long r1 = r1.f10761j
            long r0 = r0 + r1
            r12 = r0
        L_0x006d:
            r0 = r12
            r10 = r0
            r0 = r8
            if (r0 != 0) goto L_0x007c
            r0 = r12
            r1 = r7
            long r1 = r1.f10764m
            long r0 = r0 - r1
            r10 = r0
        L_0x007c:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p206s0.C2990m.m28261a(boolean):long");
    }

    /* renamed from: a */
    public final void m28263a(long j, long j2) {
        C2988l lVar = this.f10757f;
        C2877e.m28737a(lVar);
        C2988l lVar2 = lVar;
        if (lVar2.m28276a(j)) {
            long c = lVar2.m28274c();
            long b = lVar2.m28275b();
            if (Math.abs(c - j) > 5000000) {
                this.f10752a.mo18620b(b, c, j, j2);
                lVar2.m28271f();
            } else if (Math.abs(m28264a(b) - j2) > 5000000) {
                this.f10752a.mo18621a(b, c, j, j2);
                lVar2.m28271f();
            } else {
                lVar2.m28278a();
            }
        }
    }

    /* renamed from: a */
    public void m28262a(AudioTrack audioTrack, int i, int i2, int i3) {
        this.f10754c = audioTrack;
        this.f10755d = i2;
        this.f10756e = i3;
        this.f10757f = new C2988l(audioTrack);
        this.f10758g = audioTrack.getSampleRate();
        this.f10759h = m28265a(i);
        boolean f = C2885h0.m28630f(i);
        this.f10766o = f;
        this.f10760i = f ? m28264a(i3 / i2) : -9223372036854775807L;
        this.f10768q = 0L;
        this.f10769r = 0L;
        this.f10770s = 0L;
        this.f10765n = false;
        this.f10773v = -9223372036854775807L;
        this.f10774w = -9223372036854775807L;
        this.f10764m = 0L;
    }

    /* renamed from: a */
    public final boolean m28266a() {
        boolean z;
        if (this.f10759h) {
            AudioTrack audioTrack = this.f10754c;
            C2877e.m28737a(audioTrack);
            if (audioTrack.getPlayState() == 2 && m28260b() == 0) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    /* renamed from: b */
    public int m28259b(long j) {
        return this.f10756e - ((int) (j - (m28260b() * this.f10755d)));
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
    public final long m28260b() {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p206s0.C2990m.m28260b():long");
    }

    /* renamed from: c */
    public final long m28258c() {
        return m28264a(m28260b());
    }

    /* renamed from: c */
    public void m28257c(long j) {
        this.f10775x = m28260b();
        this.f10773v = SystemClock.elapsedRealtime() * 1000;
        this.f10776y = j;
    }

    /* renamed from: d */
    public boolean m28256d() {
        AudioTrack audioTrack = this.f10754c;
        C2877e.m28737a(audioTrack);
        return audioTrack.getPlayState() == 3;
    }

    /* renamed from: d */
    public boolean m28255d(long j) {
        return j > m28260b() || m28266a();
    }

    /* renamed from: e */
    public final void m28254e() {
        long c = m28258c();
        if (c != 0) {
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - this.f10762k >= 30000) {
                long[] jArr = this.f10753b;
                int i = this.f10771t;
                jArr[i] = c - nanoTime;
                this.f10771t = (i + 1) % 10;
                int i2 = this.f10772u;
                if (i2 < 10) {
                    this.f10772u = i2 + 1;
                }
                this.f10762k = nanoTime;
                this.f10761j = 0L;
                int i3 = 0;
                while (true) {
                    int i4 = this.f10772u;
                    if (i3 >= i4) {
                        break;
                    }
                    this.f10761j += this.f10753b[i3] / i4;
                    i3++;
                }
            }
            if (!this.f10759h) {
                m28263a(nanoTime, c);
                m28249g(nanoTime);
            }
        }
    }

    /* renamed from: e */
    public boolean m28253e(long j) {
        return this.f10774w != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.f10774w >= 200;
    }

    /* renamed from: f */
    public boolean m28252f() {
        m28248h();
        if (this.f10773v != -9223372036854775807L) {
            return false;
        }
        C2988l lVar = this.f10757f;
        C2877e.m28737a(lVar);
        lVar.m28270g();
        return true;
    }

    /* renamed from: f */
    public boolean m28251f(long j) {
        AbstractC2991a aVar;
        AudioTrack audioTrack = this.f10754c;
        C2877e.m28737a(audioTrack);
        int playState = audioTrack.getPlayState();
        if (this.f10759h) {
            if (playState == 2) {
                this.f10765n = false;
                return false;
            } else if (playState == 1 && m28260b() == 0) {
                return false;
            }
        }
        boolean z = this.f10765n;
        boolean d = m28255d(j);
        this.f10765n = d;
        if (!z || d || playState == 1 || (aVar = this.f10752a) == null) {
            return true;
        }
        aVar.mo18623a(this.f10756e, C2964r.m28356b(this.f10760i));
        return true;
    }

    /* renamed from: g */
    public void m28250g() {
        m28248h();
        this.f10754c = null;
        this.f10757f = null;
    }

    /* renamed from: g */
    public final void m28249g(long j) {
        Method method;
        if (this.f10766o && (method = this.f10763l) != null && j - this.f10767p >= 500000) {
            try {
                AudioTrack audioTrack = this.f10754c;
                C2877e.m28737a(audioTrack);
                Integer num = (Integer) method.invoke(audioTrack, new Object[0]);
                C2885h0.m28670a(num);
                long intValue = (num.intValue() * 1000) - this.f10760i;
                this.f10764m = intValue;
                long max = Math.max(intValue, 0L);
                this.f10764m = max;
                if (max > 5000000) {
                    this.f10752a.mo18622a(max);
                    this.f10764m = 0L;
                }
            } catch (Exception e) {
                this.f10763l = null;
            }
            this.f10767p = j;
        }
    }

    /* renamed from: h */
    public final void m28248h() {
        this.f10761j = 0L;
        this.f10772u = 0;
        this.f10771t = 0;
        this.f10762k = 0L;
    }

    /* renamed from: i */
    public void m28247i() {
        C2988l lVar = this.f10757f;
        C2877e.m28737a(lVar);
        lVar.m28270g();
    }
}
