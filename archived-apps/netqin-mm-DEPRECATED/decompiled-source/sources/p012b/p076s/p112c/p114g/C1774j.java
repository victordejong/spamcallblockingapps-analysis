package p012b.p076s.p112c.p114g;

import android.os.Handler;
import android.os.Looper;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import java.util.Arrays;
import java.util.SortedMap;
import java.util.TreeMap;
import p012b.p076s.p078b.p079a.AbstractC1197b;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p107x0.C1646a;
/* renamed from: b.s.c.g.j */
/* loaded from: classes-dex2jar.jar:b/s/c/g/j.class */
public class C1774j extends AbstractC1197b {

    /* renamed from: j */
    public final AbstractC1777c f7143j;

    /* renamed from: t */
    public boolean f7153t;

    /* renamed from: u */
    public boolean f7154u;

    /* renamed from: v */
    public boolean[] f7155v;

    /* renamed from: k */
    public final Handler f7144k = new Handler(Looper.myLooper());

    /* renamed from: l */
    public final C1184p f7145l = new C1184p();

    /* renamed from: m */
    public final SortedMap<Long, byte[]> f7146m = new TreeMap();

    /* renamed from: n */
    public final C1531w f7147n = new C1531w();

    /* renamed from: o */
    public final C1646a f7148o = new C1646a();

    /* renamed from: p */
    public final C1776b f7149p = new C1776b();

    /* renamed from: q */
    public final C1776b f7150q = new C1776b();

    /* renamed from: r */
    public final int[] f7151r = new int[2];

    /* renamed from: s */
    public final C1184p f7152s = new C1184p();

    /* renamed from: w */
    public int f7156w = -1;

    /* renamed from: x */
    public int f7157x = -1;

    /* renamed from: b.s.c.g.j$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/j$a.class */
    public class RunnableC1775a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f7158a;

        /* renamed from: b */
        public final /* synthetic */ int f7159b;

        public RunnableC1775a(int i, int i2) {
            this.f7158a = i;
            this.f7159b = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1774j.this.f7143j.mo32116a(this.f7158a, this.f7159b);
        }
    }

    /* renamed from: b.s.c.g.j$b */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/j$b.class */
    public static final class C1776b {

        /* renamed from: a */
        public byte[] f7161a = new byte[3];

        /* renamed from: b */
        public int f7162b;

        /* renamed from: a */
        public void m32120a() {
            this.f7162b = 0;
        }

        /* renamed from: a */
        public void m32119a(byte b, byte b2) {
            int i = this.f7162b;
            byte[] bArr = this.f7161a;
            if (i + 2 > bArr.length) {
                this.f7161a = Arrays.copyOf(bArr, bArr.length * 2);
            }
            byte[] bArr2 = this.f7161a;
            int i2 = this.f7162b;
            int i3 = i2 + 1;
            this.f7162b = i3;
            bArr2[i2] = b;
            this.f7162b = i3 + 1;
            bArr2[i3] = b2;
        }

        /* renamed from: a */
        public void m32118a(byte b, byte b2, byte b3) {
            int i = this.f7162b;
            byte[] bArr = this.f7161a;
            if (i + 3 > bArr.length) {
                this.f7161a = Arrays.copyOf(bArr, bArr.length * 2);
            }
            byte[] bArr2 = this.f7161a;
            int i2 = this.f7162b;
            int i3 = i2 + 1;
            this.f7162b = i3;
            bArr2[i2] = b;
            int i4 = i3 + 1;
            this.f7162b = i4;
            bArr2[i3] = b2;
            this.f7162b = i4 + 1;
            bArr2[i4] = b3;
        }

        /* renamed from: b */
        public boolean m32117b() {
            return this.f7162b > 0;
        }
    }

    /* renamed from: b.s.c.g.j$c */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/j$c.class */
    public interface AbstractC1777c {
        /* renamed from: a */
        void mo32116a(int i, int i2);

        /* renamed from: a */
        void mo32115a(byte[] bArr, long j);
    }

    public C1774j(AbstractC1777c cVar) {
        super(3);
        this.f7143j = cVar;
    }

    /* renamed from: A */
    public final void m32133A() {
        this.f7146m.clear();
        this.f7149p.m32120a();
        this.f7150q.m32120a();
        this.f7154u = false;
        this.f7153t = false;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1238i0
    /* renamed from: a */
    public int mo32129a(Format format) {
        String str = format.f1562i;
        return ("application/cea-608".equals(str) || "application/cea-708".equals(str) || "text/vtt".equals(str)) ? 4 : 0;
    }

    /* renamed from: a */
    public final void m32132a(int i, int i2) {
        int i3 = (i << 6) + i2;
        boolean[] zArr = this.f7155v;
        if (!zArr[i3]) {
            zArr[i3] = true;
            this.f7144k.post(new RunnableC1775a(i, i2));
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public void mo32131a(long j, long j2) {
        synchronized (this) {
            if (mo34150d() == 2) {
                m32122c(j);
                if (!this.f7153t) {
                    this.f7148o.mo33734a();
                    int a = m34284a(this.f7147n, (C1311d) this.f7148o, false);
                    if (a != -3 && a != -5) {
                        if (this.f7148o.m33742c()) {
                            this.f7154u = true;
                            return;
                        } else {
                            this.f7153t = true;
                            this.f7148o.m33732e();
                        }
                    } else {
                        return;
                    }
                }
                if (this.f7148o.f5246d - j <= 110000) {
                    this.f7153t = false;
                    this.f7145l.m34367a(this.f7148o.f5245c.array(), this.f7148o.f5245c.limit());
                    this.f7149p.m32120a();
                    while (this.f7145l.m34372a() >= 3) {
                        byte r = (byte) this.f7145l.m34344r();
                        byte r2 = (byte) this.f7145l.m34344r();
                        byte r3 = (byte) this.f7145l.m34344r();
                        boolean z = (r & 4) != 0;
                        int i = r & 3;
                        if (z) {
                            if (i == 3) {
                                if (this.f7150q.m32117b()) {
                                    m32128a(this.f7150q, this.f7148o.f5246d);
                                }
                                this.f7150q.m32119a(r2, r3);
                            } else if (this.f7150q.f7162b > 0 && i == 2) {
                                this.f7150q.m32119a(r2, r3);
                            } else if (i == 0 || i == 1) {
                                byte b = (byte) (r2 & Byte.MAX_VALUE);
                                byte b2 = (byte) (r3 & Byte.MAX_VALUE);
                                if (b >= 16 || b2 >= 16) {
                                    if (b >= 16 && b <= 31) {
                                        int i2 = (b >= 24 ? 1 : 0) + (r != 0 ? 2 : 0);
                                        this.f7151r[i] = i2;
                                        m32132a(0, i2);
                                    }
                                    if (this.f7156w == 0 && this.f7157x == this.f7151r[i]) {
                                        this.f7149p.m32118a((byte) i, b, b2);
                                    }
                                }
                            }
                        } else if (i == 3 || i == 2) {
                            if (this.f7150q.m32117b()) {
                                m32128a(this.f7150q, this.f7148o.f5246d);
                            }
                        }
                    }
                    if (this.f7156w == 0 && this.f7149p.m32117b()) {
                        m32124b(this.f7149p, this.f7148o.f5246d);
                    }
                }
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32130a(long j, boolean z) {
        synchronized (this) {
            m32133A();
        }
    }

    /* renamed from: a */
    public final void m32128a(C1776b bVar, long j) {
        this.f7152s.m34367a(bVar.f7161a, bVar.f7162b);
        bVar.m32120a();
        int r = this.f7152s.m34344r() & 31;
        int i = r;
        if (r == 0) {
            i = 64;
        }
        if (this.f7152s.m34361d() == i * 2) {
            while (this.f7152s.m34372a() >= 2) {
                int r2 = this.f7152s.m34344r();
                int i2 = (r2 & 224) >> 5;
                int i3 = r2 & 31;
                int i4 = i2;
                if (i2 == 7) {
                    int r3 = this.f7152s.m34344r() & 63;
                    i4 = r3;
                    if (r3 < 7) {
                        return;
                    }
                }
                if (this.f7152s.m34372a() >= i3) {
                    if (i3 > 0) {
                        m32132a(1, i4);
                        if (this.f7156w == 1 && this.f7157x == i4) {
                            byte[] bArr = new byte[i3];
                            this.f7152s.m34366a(bArr, 0, i3);
                            this.f7146m.put(Long.valueOf(j), bArr);
                        } else {
                            this.f7152s.m34356f(i3);
                        }
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32127a(Format[] formatArr, long j) throws ExoPlaybackException {
        super.mo32127a(formatArr, j);
        this.f7155v = new boolean[128];
    }

    /* renamed from: b */
    public void m32125b(int i, int i2) {
        synchronized (this) {
            this.f7156w = i;
            this.f7157x = i2;
            m32133A();
        }
    }

    /* renamed from: b */
    public final void m32124b(C1776b bVar, long j) {
        this.f7146m.put(Long.valueOf(j), Arrays.copyOf(bVar.f7161a, bVar.f7162b));
        bVar.m32120a();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: b */
    public boolean mo32126b() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32122c(long r7) {
        /*
            r6 = this;
            r0 = r6
            int r0 = r0.f7156w
            r1 = -1
            if (r0 == r1) goto L_0x00a8
            r0 = r6
            int r0 = r0.f7157x
            r1 = -1
            if (r0 != r1) goto L_0x0013
            goto L_0x00a8
        L_0x0013:
            r0 = 0
            byte[] r0 = new byte[r0]
            r9 = r0
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r10 = r0
        L_0x001c:
            r0 = r6
            java.util.SortedMap<java.lang.Long, byte[]> r0 = r0.f7146m
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0097
            r0 = r6
            java.util.SortedMap<java.lang.Long, byte[]> r0 = r0.f7146m
            java.lang.Object r0 = r0.firstKey()
            java.lang.Long r0 = (java.lang.Long) r0
            long r0 = r0.longValue()
            r12 = r0
            r0 = r7
            r1 = r12
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0043
            goto L_0x0097
        L_0x0043:
            r0 = r6
            java.util.SortedMap<java.lang.Long, byte[]> r0 = r0.f7146m
            r1 = r12
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            java.lang.Object r0 = r0.get(r1)
            r14 = r0
            r0 = r14
            java.lang.Object r0 = p012b.p042i.p053o.C0948h.m35442a(r0)
            r0 = r14
            byte[] r0 = (byte[]) r0
            r14 = r0
            r0 = r9
            int r0 = r0.length
            r15 = r0
            r0 = r9
            r1 = r14
            int r1 = r1.length
            r2 = r15
            int r1 = r1 + r2
            byte[] r0 = java.util.Arrays.copyOf(r0, r1)
            r9 = r0
            r0 = r14
            r1 = 0
            r2 = r9
            r3 = r15
            r4 = r14
            int r4 = r4.length
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            r0 = r6
            java.util.SortedMap<java.lang.Long, byte[]> r0 = r0.f7146m
            r14 = r0
            r0 = r14
            r1 = r14
            java.lang.Object r1 = r1.firstKey()
            java.lang.Object r0 = r0.remove(r1)
            r0 = r12
            r10 = r0
            goto L_0x001c
        L_0x0097:
            r0 = r9
            int r0 = r0.length
            if (r0 <= 0) goto L_0x00a8
            r0 = r6
            b.s.c.g.j$c r0 = r0.f7143j
            r1 = r9
            r2 = r10
            r0.mo32115a(r1, r2)
        L_0x00a8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p112c.p114g.C1774j.m32122c(long):void");
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: c */
    public boolean mo32123c() {
        return this.f7154u && this.f7146m.isEmpty();
    }

    /* renamed from: z */
    public void m32121z() {
        synchronized (this) {
            m32125b(-1, -1);
        }
    }
}
