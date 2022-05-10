package p131c.p161d.p170b.p188c.p210w0.p216w;

import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2891l;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3053p;
import p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i;
/* renamed from: c.d.b.c.w0.w.c */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/c.class */
public final class C3118c extends AbstractC3125i {

    /* renamed from: n */
    public C2891l f11388n;

    /* renamed from: o */
    public C3119a f11389o;

    /* renamed from: c.d.b.c.w0.w.c$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/c$a.class */
    public class C3119a implements AbstractC3123g, AbstractC3050o {

        /* renamed from: a */
        public long[] f11390a;

        /* renamed from: b */
        public long[] f11391b;

        /* renamed from: c */
        public long f11392c = -1;

        /* renamed from: d */
        public long f11393d = -1;

        public C3119a() {
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
        /* renamed from: a */
        public long mo27752a(AbstractC3043h hVar) throws IOException, InterruptedException {
            long j = this.f11393d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.f11393d = -1L;
            return j2;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
        /* renamed from: a */
        public AbstractC3050o mo27753a() {
            return this;
        }

        /* renamed from: a */
        public void m27776a(C2904v vVar) {
            vVar.m28536f(1);
            int u = vVar.m28521u() / 18;
            this.f11390a = new long[u];
            this.f11391b = new long[u];
            for (int i = 0; i < u; i++) {
                this.f11390a[i] = vVar.m28528n();
                this.f11391b[i] = vVar.m28528n();
                vVar.m28536f(2);
            }
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: b */
        public AbstractC3050o.C3051a mo27544b(long j) {
            int b = C2885h0.m28643b(this.f11390a, C3118c.this.m27755b(j), true, true);
            long a = C3118c.this.m27760a(this.f11390a[b]);
            C3053p pVar = new C3053p(a, this.f11392c + this.f11391b[b]);
            if (a < j) {
                long[] jArr = this.f11390a;
                if (b != jArr.length - 1) {
                    int i = b + 1;
                    return new AbstractC3050o.C3051a(pVar, new C3053p(C3118c.this.m27760a(jArr[i]), this.f11392c + this.f11391b[i]));
                }
            }
            return new AbstractC3050o.C3051a(pVar);
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: b */
        public boolean mo27545b() {
            return true;
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
        /* renamed from: c */
        public long mo27543c() {
            return C3118c.this.f11388n.m28616b();
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3123g
        /* renamed from: c */
        public void mo27751c(long j) {
            this.f11393d = this.f11390a[C2885h0.m28643b(this.f11390a, j, true, true)];
        }

        /* renamed from: d */
        public void m27775d(long j) {
            this.f11392c = j;
        }
    }

    /* renamed from: a */
    public static boolean m27779a(byte[] bArr) {
        boolean z = false;
        if (bArr[0] == -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m27777c(C2904v vVar) {
        return vVar.m28552a() >= 5 && vVar.m28524r() == 127 && vVar.m28522t() == 1179402563;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public long mo27743a(C2904v vVar) {
        if (!m27779a(vVar.f10530a)) {
            return -1L;
        }
        return m27778b(vVar);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public void mo27740a(boolean z) {
        super.mo27740a(z);
        if (z) {
            this.f11388n = null;
            this.f11389o = null;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public boolean mo27741a(C2904v vVar, long j, AbstractC3125i.C3127b bVar) {
        byte[] bArr = vVar.f10530a;
        if (this.f11388n == null) {
            C2891l lVar = new C2891l(bArr, 17);
            this.f11388n = lVar;
            int i = lVar.f10493a;
            if (i == 0) {
                i = -1;
            }
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 9, vVar.m28541d());
            copyOfRange[4] = (byte) (-128);
            List singletonList = Collections.singletonList(copyOfRange);
            int a = this.f11388n.m28617a();
            C2891l lVar2 = this.f11388n;
            bVar.f11426a = Format.m18698a(null, "audio/flac", null, a, i, lVar2.f10495c, lVar2.f10494b, singletonList, null, 0, null);
            return true;
        } else if ((bArr[0] & Byte.MAX_VALUE) == 3) {
            C3119a aVar = new C3119a();
            this.f11389o = aVar;
            aVar.m27776a(vVar);
            return true;
        } else if (!m27779a(bArr)) {
            return true;
        } else {
            C3119a aVar2 = this.f11389o;
            if (aVar2 == null) {
                return false;
            }
            aVar2.m27775d(j);
            bVar.f11427b = this.f11389o;
            return false;
        }
    }

    /* renamed from: b */
    public final int m27778b(C2904v vVar) {
        int i;
        int i2;
        int i3 = (vVar.f10530a[2] & 255) >> 4;
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
                vVar.m28536f(4);
                vVar.m28517y();
                int r = i3 == 6 ? vVar.m28524r() : vVar.m28518x();
                vVar.m28538e(0);
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
