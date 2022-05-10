package p131c.p161d.p170b.p188c.p210w0.p217x;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.util.Collections;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2899s;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p203g1.C2905w;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.r */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/r.class */
public final class C3175r implements AbstractC3168o {

    /* renamed from: a */
    public final C3142c0 f11668a;

    /* renamed from: b */
    public String f11669b;

    /* renamed from: c */
    public AbstractC3054q f11670c;

    /* renamed from: d */
    public C3176a f11671d;

    /* renamed from: e */
    public boolean f11672e;

    /* renamed from: l */
    public long f11679l;

    /* renamed from: m */
    public long f11680m;

    /* renamed from: f */
    public final boolean[] f11673f = new boolean[3];

    /* renamed from: g */
    public final C3180v f11674g = new C3180v(32, 128);

    /* renamed from: h */
    public final C3180v f11675h = new C3180v(33, 128);

    /* renamed from: i */
    public final C3180v f11676i = new C3180v(34, 128);

    /* renamed from: j */
    public final C3180v f11677j = new C3180v(39, 128);

    /* renamed from: k */
    public final C3180v f11678k = new C3180v(40, 128);

    /* renamed from: n */
    public final C2904v f11681n = new C2904v();

    /* renamed from: c.d.b.c.w0.x.r$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/r$a.class */
    public static final class C3176a {

        /* renamed from: a */
        public final AbstractC3054q f11682a;

        /* renamed from: b */
        public long f11683b;

        /* renamed from: c */
        public boolean f11684c;

        /* renamed from: d */
        public int f11685d;

        /* renamed from: e */
        public long f11686e;

        /* renamed from: f */
        public boolean f11687f;

        /* renamed from: g */
        public boolean f11688g;

        /* renamed from: h */
        public boolean f11689h;

        /* renamed from: i */
        public boolean f11690i;

        /* renamed from: j */
        public boolean f11691j;

        /* renamed from: k */
        public long f11692k;

        /* renamed from: l */
        public long f11693l;

        /* renamed from: m */
        public boolean f11694m;

        public C3176a(AbstractC3054q qVar) {
            this.f11682a = qVar;
        }

        /* renamed from: a */
        public void m27612a() {
            this.f11687f = false;
            this.f11688g = false;
            this.f11689h = false;
            this.f11690i = false;
            this.f11691j = false;
        }

        /* renamed from: a */
        public final void m27611a(int i) {
            boolean z = this.f11694m;
            this.f11682a.mo28037a(this.f11693l, z ? 1 : 0, (int) (this.f11683b - this.f11692k), i, null);
        }

        /* renamed from: a */
        public void m27610a(long j, int i) {
            if (this.f11691j && this.f11688g) {
                this.f11694m = this.f11684c;
                this.f11691j = false;
            } else if (this.f11689h || this.f11688g) {
                if (this.f11690i) {
                    m27611a(i + ((int) (j - this.f11683b)));
                }
                this.f11692k = this.f11683b;
                this.f11693l = this.f11686e;
                this.f11690i = true;
                this.f11694m = this.f11684c;
            }
        }

        /* renamed from: a */
        public void m27609a(long j, int i, int i2, long j2) {
            boolean z = false;
            this.f11688g = false;
            this.f11689h = false;
            this.f11686e = j2;
            this.f11685d = 0;
            this.f11683b = j;
            if (i2 >= 32) {
                if (!this.f11691j && this.f11690i) {
                    m27611a(i);
                    this.f11690i = false;
                }
                if (i2 <= 34) {
                    this.f11689h = !this.f11691j;
                    this.f11691j = true;
                }
            }
            boolean z2 = i2 >= 16 && i2 <= 21;
            this.f11684c = z2;
            if (z2 || i2 <= 9) {
                z = true;
            }
            this.f11687f = z;
        }

        /* renamed from: a */
        public void m27608a(byte[] bArr, int i, int i2) {
            if (this.f11687f) {
                int i3 = this.f11685d;
                int i4 = (i + 2) - i3;
                if (i4 < i2) {
                    this.f11688g = (bArr[i4] & 128) != 0;
                    this.f11687f = false;
                    return;
                }
                this.f11685d = i3 + (i2 - i);
            }
        }
    }

    public C3175r(C3142c0 c0Var) {
        this.f11668a = c0Var;
    }

    /* renamed from: a */
    public static Format m27616a(String str, C3180v vVar, C3180v vVar2, C3180v vVar3) {
        float f;
        int i = vVar.f11737e;
        byte[] bArr = new byte[vVar2.f11737e + i + vVar3.f11737e];
        System.arraycopy(vVar.f11736d, 0, bArr, 0, i);
        System.arraycopy(vVar2.f11736d, 0, bArr, vVar.f11737e, vVar2.f11737e);
        System.arraycopy(vVar3.f11736d, 0, bArr, vVar.f11737e + vVar2.f11737e, vVar3.f11737e);
        C2905w wVar = new C2905w(vVar2.f11736d, 0, vVar2.f11737e);
        wVar.m28507d(44);
        int b = wVar.m28511b(3);
        wVar.m28504g();
        wVar.m28507d(88);
        wVar.m28507d(8);
        int i2 = 0;
        for (int i3 = 0; i3 < b; i3++) {
            int i4 = i2;
            if (wVar.m28510c()) {
                i4 = i2 + 89;
            }
            i2 = i4;
            if (wVar.m28510c()) {
                i2 = i4 + 8;
            }
        }
        wVar.m28507d(i2);
        if (b > 0) {
            wVar.m28507d((8 - b) * 2);
        }
        wVar.m28505f();
        int f2 = wVar.m28505f();
        if (f2 == 3) {
            wVar.m28504g();
        }
        int f3 = wVar.m28505f();
        int f4 = wVar.m28505f();
        int i5 = f3;
        int i6 = f4;
        if (wVar.m28510c()) {
            int f5 = wVar.m28505f();
            int f6 = wVar.m28505f();
            int f7 = wVar.m28505f();
            int f8 = wVar.m28505f();
            i5 = f3 - (((f2 == 1 || f2 == 2) ? 2 : 1) * (f5 + f6));
            i6 = f4 - ((f2 == 1 ? 2 : 1) * (f7 + f8));
        }
        wVar.m28505f();
        wVar.m28505f();
        int f9 = wVar.m28505f();
        for (int i7 = wVar.m28510c() ? 0 : b; i7 <= b; i7++) {
            wVar.m28505f();
            wVar.m28505f();
            wVar.m28505f();
        }
        wVar.m28505f();
        wVar.m28505f();
        wVar.m28505f();
        wVar.m28505f();
        wVar.m28505f();
        wVar.m28505f();
        if (wVar.m28510c() && wVar.m28510c()) {
            m27617a(wVar);
        }
        wVar.m28507d(2);
        if (wVar.m28510c()) {
            wVar.m28507d(8);
            wVar.m28505f();
            wVar.m28505f();
            wVar.m28504g();
        }
        m27613b(wVar);
        if (wVar.m28510c()) {
            for (int i8 = 0; i8 < wVar.m28505f(); i8++) {
                wVar.m28507d(f9 + 4 + 1);
            }
        }
        wVar.m28507d(2);
        if (wVar.m28510c() && wVar.m28510c()) {
            int b2 = wVar.m28511b(8);
            if (b2 == 255) {
                int b3 = wVar.m28511b(16);
                int b4 = wVar.m28511b(16);
                f = 1.0f;
                if (b3 != 0) {
                    f = 1.0f;
                    if (b4 != 0) {
                        f = b3 / b4;
                    }
                }
            } else {
                float[] fArr = C2899s.f10507b;
                if (b2 < fArr.length) {
                    f = fArr[b2];
                } else {
                    C2894o.m28594d("H265Reader", "Unexpected aspect_ratio_idc value: " + b2);
                }
            }
            return Format.m18702a(str, "video/hevc", (String) null, -1, -1, i5, i6, -1.0f, Collections.singletonList(bArr), -1, f, (DrmInitData) null);
        }
        f = 1.0f;
        return Format.m18702a(str, "video/hevc", (String) null, -1, -1, i5, i6, -1.0f, Collections.singletonList(bArr), -1, f, (DrmInitData) null);
    }

    /* renamed from: a */
    public static void m27617a(C2905w wVar) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (!wVar.m28510c()) {
                    wVar.m28505f();
                } else {
                    int min = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        wVar.m28506e();
                    }
                    for (int i4 = 0; i4 < min; i4++) {
                        wVar.m28506e();
                    }
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    /* renamed from: b */
    public static void m27613b(C2905w wVar) {
        int f = wVar.m28505f();
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < f; i2++) {
            if (i2 != 0) {
                z = wVar.m28510c();
            }
            if (z) {
                wVar.m28504g();
                wVar.m28505f();
                int i3 = 0;
                while (true) {
                    i = i;
                    if (i3 <= i) {
                        if (wVar.m28510c()) {
                            wVar.m28504g();
                        }
                        i3++;
                    }
                }
            } else {
                int f2 = wVar.m28505f();
                int f3 = wVar.m28505f();
                for (int i4 = 0; i4 < f2; i4++) {
                    wVar.m28505f();
                    wVar.m28504g();
                }
                for (int i5 = 0; i5 < f3; i5++) {
                    wVar.m28505f();
                    wVar.m28504g();
                }
                i = f2 + f3;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27599a() {
        C2899s.m28572a(this.f11673f);
        this.f11674g.m27588b();
        this.f11675h.m27588b();
        this.f11676i.m27588b();
        this.f11677j.m27588b();
        this.f11678k.m27588b();
        this.f11671d.m27612a();
        this.f11679l = 0L;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27598a(long j, int i) {
        this.f11680m = j;
    }

    /* renamed from: a */
    public final void m27618a(long j, int i, int i2, long j2) {
        if (this.f11672e) {
            this.f11671d.m27610a(j, i);
        } else {
            this.f11674g.m27590a(i2);
            this.f11675h.m27590a(i2);
            this.f11676i.m27590a(i2);
            if (this.f11674g.m27591a() && this.f11675h.m27591a() && this.f11676i.m27591a()) {
                this.f11670c.mo28034a(m27616a(this.f11669b, this.f11674g, this.f11675h, this.f11676i));
                this.f11672e = true;
            }
        }
        if (this.f11677j.m27590a(i2)) {
            C3180v vVar = this.f11677j;
            this.f11681n.m28547a(this.f11677j.f11736d, C2899s.m28569c(vVar.f11736d, vVar.f11737e));
            this.f11681n.m28536f(5);
            this.f11668a.m27725a(j2, this.f11681n);
        }
        if (this.f11678k.m27590a(i2)) {
            C3180v vVar2 = this.f11678k;
            this.f11681n.m28547a(this.f11678k.f11736d, C2899s.m28569c(vVar2.f11736d, vVar2.f11737e));
            this.f11681n.m28536f(5);
            this.f11668a.m27725a(j2, this.f11681n);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27597a(C2904v vVar) {
        while (vVar.m28552a() > 0) {
            int c = vVar.m28543c();
            int d = vVar.m28541d();
            byte[] bArr = vVar.f10530a;
            this.f11679l += vVar.m28552a();
            this.f11670c.mo28036a(vVar, vVar.m28552a());
            while (c < d) {
                int a = C2899s.m28573a(bArr, c, d, this.f11673f);
                if (a == d) {
                    m27615a(bArr, c, d);
                    return;
                }
                int a2 = C2899s.m28575a(bArr, a);
                int i = a - c;
                if (i > 0) {
                    m27615a(bArr, c, a);
                }
                int i2 = d - a;
                long j = this.f11679l - i2;
                m27618a(j, i2, i < 0 ? -i : 0, this.f11680m);
                m27614b(j, i2, a2, this.f11680m);
                c = a + 3;
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: a */
    public void mo27596a(AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        dVar.m27684a();
        this.f11669b = dVar.m27683b();
        AbstractC3054q a = iVar.mo28048a(dVar.m27682c(), 2);
        this.f11670c = a;
        this.f11671d = new C3176a(a);
        this.f11668a.m27724a(iVar, dVar);
    }

    /* renamed from: a */
    public final void m27615a(byte[] bArr, int i, int i2) {
        if (this.f11672e) {
            this.f11671d.m27608a(bArr, i, i2);
        } else {
            this.f11674g.m27589a(bArr, i, i2);
            this.f11675h.m27589a(bArr, i, i2);
            this.f11676i.m27589a(bArr, i, i2);
        }
        this.f11677j.m27589a(bArr, i, i2);
        this.f11678k.m27589a(bArr, i, i2);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3168o
    /* renamed from: b */
    public void mo27595b() {
    }

    /* renamed from: b */
    public final void m27614b(long j, int i, int i2, long j2) {
        if (this.f11672e) {
            this.f11671d.m27609a(j, i, i2, j2);
        } else {
            this.f11674g.m27587b(i2);
            this.f11675h.m27587b(i2);
            this.f11676i.m27587b(i2);
        }
        this.f11677j.m27587b(i2);
        this.f11678k.m27587b(i2);
    }
}
