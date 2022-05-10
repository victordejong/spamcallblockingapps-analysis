package p131c.p161d.p170b.p188c.p210w0.p217x;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ParserException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2881f0;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3029a;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
import p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3155h0;
/* renamed from: c.d.b.c.w0.x.g0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/g0.class */
public final class C3151g0 implements AbstractC3042g {

    /* renamed from: a */
    public final int f11490a;

    /* renamed from: b */
    public final List<C2881f0> f11491b;

    /* renamed from: c */
    public final C2904v f11492c;

    /* renamed from: d */
    public final SparseIntArray f11493d;

    /* renamed from: e */
    public final AbstractC3155h0.AbstractC3158c f11494e;

    /* renamed from: f */
    public final SparseArray<AbstractC3155h0> f11495f;

    /* renamed from: g */
    public final SparseBooleanArray f11496g;

    /* renamed from: h */
    public final SparseBooleanArray f11497h;

    /* renamed from: i */
    public final C3149f0 f11498i;

    /* renamed from: j */
    public C3146e0 f11499j;

    /* renamed from: k */
    public AbstractC3044i f11500k;

    /* renamed from: l */
    public int f11501l;

    /* renamed from: m */
    public boolean f11502m;

    /* renamed from: n */
    public boolean f11503n;

    /* renamed from: o */
    public boolean f11504o;

    /* renamed from: p */
    public AbstractC3155h0 f11505p;

    /* renamed from: q */
    public int f11506q;

    /* renamed from: r */
    public int f11507r;

    /* renamed from: c.d.b.c.w0.x.g0$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/g0$a.class */
    public class C3152a implements AbstractC3138a0 {

        /* renamed from: a */
        public final C2903u f11508a = new C2903u(new byte[4]);

        public C3152a() {
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3138a0
        /* renamed from: a */
        public void mo27688a(C2881f0 f0Var, AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3138a0
        /* renamed from: a */
        public void mo27687a(C2904v vVar) {
            if (vVar.m28524r() == 0) {
                vVar.m28536f(7);
                int a = vVar.m28552a() / 4;
                for (int i = 0; i < a; i++) {
                    vVar.m28549a(this.f11508a, 4);
                    int a2 = this.f11508a.m28565a(16);
                    this.f11508a.m28556c(3);
                    if (a2 == 0) {
                        this.f11508a.m28556c(13);
                    } else {
                        int a3 = this.f11508a.m28565a(13);
                        C3151g0.this.f11495f.put(a3, new C3140b0(new C3153b(a3)));
                        C3151g0.m27696d(C3151g0.this);
                    }
                }
                if (C3151g0.this.f11490a != 2) {
                    C3151g0.this.f11495f.remove(0);
                }
            }
        }
    }

    /* renamed from: c.d.b.c.w0.x.g0$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/x/g0$b.class */
    public class C3153b implements AbstractC3138a0 {

        /* renamed from: a */
        public final C2903u f11510a = new C2903u(new byte[5]);

        /* renamed from: b */
        public final SparseArray<AbstractC3155h0> f11511b = new SparseArray<>();

        /* renamed from: c */
        public final SparseIntArray f11512c = new SparseIntArray();

        /* renamed from: d */
        public final int f11513d;

        public C3153b(int i) {
            this.f11513d = i;
        }

        /* renamed from: a */
        public final AbstractC3155h0.C3157b m27686a(C2904v vVar, int i) {
            int c = vVar.m28543c();
            int i2 = i + c;
            String str = null;
            ArrayList arrayList = null;
            int i3 = -1;
            while (vVar.m28543c() < i2) {
                int r = vVar.m28524r();
                int c2 = vVar.m28543c() + vVar.m28524r();
                if (r == 5) {
                    long t = vVar.m28522t();
                    if (t != 1094921523) {
                        if (t != 1161904947) {
                            if (t != 1094921524) {
                                str = str;
                                arrayList = arrayList;
                                if (t == 1212503619) {
                                    i3 = 36;
                                    str = str;
                                    arrayList = arrayList;
                                }
                                vVar.m28536f(c2 - vVar.m28543c());
                            }
                            i3 = 172;
                            str = str;
                            arrayList = arrayList;
                            vVar.m28536f(c2 - vVar.m28543c());
                        }
                        i3 = 135;
                        str = str;
                        arrayList = arrayList;
                        vVar.m28536f(c2 - vVar.m28543c());
                    }
                    i3 = 129;
                    str = str;
                    arrayList = arrayList;
                    vVar.m28536f(c2 - vVar.m28543c());
                } else {
                    if (r != 106) {
                        if (r != 122) {
                            if (r == 127) {
                                str = str;
                                arrayList = arrayList;
                                if (vVar.m28524r() != 21) {
                                }
                                i3 = 172;
                                str = str;
                                arrayList = arrayList;
                            } else if (r == 123) {
                                i3 = 138;
                                str = str;
                                arrayList = arrayList;
                            } else if (r == 10) {
                                str = vVar.m28544b(3).trim();
                                arrayList = arrayList;
                            } else {
                                str = str;
                                arrayList = arrayList;
                                if (r == 89) {
                                    arrayList = new ArrayList();
                                    while (vVar.m28543c() < c2) {
                                        String trim = vVar.m28544b(3).trim();
                                        int r2 = vVar.m28524r();
                                        byte[] bArr = new byte[4];
                                        vVar.m28546a(bArr, 0, 4);
                                        arrayList.add(new AbstractC3155h0.C3156a(trim, r2, bArr));
                                    }
                                    i3 = 89;
                                    str = str;
                                }
                            }
                            vVar.m28536f(c2 - vVar.m28543c());
                        }
                        i3 = 135;
                        str = str;
                        arrayList = arrayList;
                        vVar.m28536f(c2 - vVar.m28543c());
                    }
                    i3 = 129;
                    str = str;
                    arrayList = arrayList;
                    vVar.m28536f(c2 - vVar.m28543c());
                }
            }
            vVar.m28538e(i2);
            return new AbstractC3155h0.C3157b(i3, str, arrayList, Arrays.copyOfRange(vVar.f10530a, c, i2));
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3138a0
        /* renamed from: a */
        public void mo27688a(C2881f0 f0Var, AbstractC3044i iVar, AbstractC3155h0.C3159d dVar) {
        }

        @Override // p131c.p161d.p170b.p188c.p210w0.p217x.AbstractC3138a0
        /* renamed from: a */
        public void mo27687a(C2904v vVar) {
            C2881f0 f0Var;
            if (vVar.m28524r() == 2) {
                int i = 0;
                if (C3151g0.this.f11490a == 1 || C3151g0.this.f11490a == 2 || C3151g0.this.f11501l == 1) {
                    f0Var = (C2881f0) C3151g0.this.f11491b.get(0);
                } else {
                    f0Var = new C2881f0(((C2881f0) C3151g0.this.f11491b.get(0)).m28714a());
                    C3151g0.this.f11491b.add(f0Var);
                }
                vVar.m28536f(2);
                int x = vVar.m28518x();
                vVar.m28536f(3);
                vVar.m28549a(this.f11510a, 2);
                this.f11510a.m28556c(3);
                C3151g0.this.f11507r = this.f11510a.m28565a(13);
                vVar.m28549a(this.f11510a, 2);
                this.f11510a.m28556c(4);
                vVar.m28536f(this.f11510a.m28565a(12));
                if (C3151g0.this.f11490a == 2 && C3151g0.this.f11505p == null) {
                    AbstractC3155h0.C3157b bVar = new AbstractC3155h0.C3157b(21, null, null, C2885h0.f10482f);
                    C3151g0 g0Var = C3151g0.this;
                    g0Var.f11505p = g0Var.f11494e.mo27647a(21, bVar);
                    C3151g0.this.f11505p.mo27584a(f0Var, C3151g0.this.f11500k, new AbstractC3155h0.C3159d(x, 21, 8192));
                }
                this.f11511b.clear();
                this.f11512c.clear();
                int a = vVar.m28552a();
                while (a > 0) {
                    vVar.m28549a(this.f11510a, 5);
                    int a2 = this.f11510a.m28565a(8);
                    this.f11510a.m28556c(3);
                    int a3 = this.f11510a.m28565a(13);
                    this.f11510a.m28556c(4);
                    int a4 = this.f11510a.m28565a(12);
                    AbstractC3155h0.C3157b a5 = m27686a(vVar, a4);
                    int i2 = a2;
                    if (a2 == 6) {
                        i2 = a5.f11520a;
                    }
                    a -= a4 + 5;
                    int i3 = C3151g0.this.f11490a == 2 ? i2 : a3;
                    if (!C3151g0.this.f11496g.get(i3)) {
                        AbstractC3155h0 a6 = (C3151g0.this.f11490a == 2 && i2 == 21) ? C3151g0.this.f11505p : C3151g0.this.f11494e.mo27647a(i2, a5);
                        if (C3151g0.this.f11490a != 2 || a3 < this.f11512c.get(i3, 8192)) {
                            this.f11512c.put(i3, a3);
                            this.f11511b.put(i3, a6);
                        }
                    }
                }
                int size = this.f11512c.size();
                for (int i4 = 0; i4 < size; i4++) {
                    int keyAt = this.f11512c.keyAt(i4);
                    int valueAt = this.f11512c.valueAt(i4);
                    C3151g0.this.f11496g.put(keyAt, true);
                    C3151g0.this.f11497h.put(valueAt, true);
                    AbstractC3155h0 valueAt2 = this.f11511b.valueAt(i4);
                    if (valueAt2 != null) {
                        if (valueAt2 != C3151g0.this.f11505p) {
                            valueAt2.mo27584a(f0Var, C3151g0.this.f11500k, new AbstractC3155h0.C3159d(x, keyAt, 8192));
                        }
                        C3151g0.this.f11495f.put(valueAt, valueAt2);
                    }
                }
                if (C3151g0.this.f11490a != 2) {
                    C3151g0.this.f11495f.remove(this.f11513d);
                    C3151g0 g0Var2 = C3151g0.this;
                    if (g0Var2.f11490a != 1) {
                        i = C3151g0.this.f11501l - 1;
                    }
                    g0Var2.f11501l = i;
                    if (C3151g0.this.f11501l == 0) {
                        C3151g0.this.f11500k.mo28046e();
                        C3151g0.this.f11502m = true;
                    }
                } else if (!C3151g0.this.f11502m) {
                    C3151g0.this.f11500k.mo28046e();
                    C3151g0.this.f11501l = 0;
                    C3151g0.this.f11502m = true;
                }
            }
        }
    }

    static {
        C3145e eVar = C3145e.f11463a;
    }

    public C3151g0() {
        this(0);
    }

    public C3151g0(int i) {
        this(1, i);
    }

    public C3151g0(int i, int i2) {
        this(i, new C2881f0(0L), new C3165l(i2));
    }

    public C3151g0(int i, C2881f0 f0Var, AbstractC3155h0.AbstractC3158c cVar) {
        C2877e.m28737a(cVar);
        this.f11494e = cVar;
        this.f11490a = i;
        if (i == 1 || i == 2) {
            this.f11491b = Collections.singletonList(f0Var);
        } else {
            ArrayList arrayList = new ArrayList();
            this.f11491b = arrayList;
            arrayList.add(f0Var);
        }
        this.f11492c = new C2904v(new byte[9400], 0);
        this.f11496g = new SparseBooleanArray();
        this.f11497h = new SparseBooleanArray();
        this.f11495f = new SparseArray<>();
        this.f11493d = new SparseIntArray();
        this.f11498i = new C3149f0();
        this.f11507r = -1;
        m27699c();
    }

    /* renamed from: d */
    public static /* synthetic */ int m27696d(C3151g0 g0Var) {
        int i = g0Var.f11501l;
        g0Var.f11501l = i + 1;
        return i;
    }

    /* renamed from: d */
    public static /* synthetic */ AbstractC3042g[] m27697d() {
        return new AbstractC3042g[]{new C3151g0()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        long a = hVar.mo28058a();
        AbstractC3155h0 h0Var = null;
        if (this.f11502m) {
            if (((a == -1 || this.f11490a == 2) ? false : true) && !this.f11498i.m27714c()) {
                return this.f11498i.m27718a(hVar, nVar, this.f11507r);
            }
            m27708a(a);
            if (this.f11504o) {
                this.f11504o = false;
                mo27553a(0L, 0L);
                if (hVar.getPosition() != 0) {
                    nVar.f10989a = 0L;
                    return 1;
                }
            }
            C3146e0 e0Var = this.f11499j;
            if (e0Var != null && e0Var.m28101b()) {
                return this.f11499j.m28103a(hVar, nVar, (AbstractC3029a.C3032c) null);
            }
        }
        if (!m27702b(hVar)) {
            return -1;
        }
        int b = m27703b();
        int d = this.f11492c.m28541d();
        if (b > d) {
            return 0;
        }
        int g = this.f11492c.m28535g();
        if ((8388608 & g) != 0) {
            this.f11492c.m28538e(b);
            return 0;
        }
        int i = ((4194304 & g) != 0 ? 1 : 0) | 0;
        int i2 = (2096896 & g) >> 8;
        boolean z = (g & 32) != 0;
        if ((g & 16) != 0) {
            h0Var = this.f11495f.get(i2);
        }
        if (h0Var == null) {
            this.f11492c.m28538e(b);
            return 0;
        }
        if (this.f11490a != 2) {
            int i3 = g & 15;
            int i4 = this.f11493d.get(i2, i3 - 1);
            this.f11493d.put(i2, i3);
            if (i4 == i3) {
                this.f11492c.m28538e(b);
                return 0;
            } else if (i3 != ((i4 + 1) & 15)) {
                h0Var.mo27586a();
            }
        }
        int i5 = i;
        if (z) {
            int r = this.f11492c.m28524r();
            i5 = i | ((this.f11492c.m28524r() & 64) != 0 ? 2 : 0);
            this.f11492c.m28536f(r - 1);
        }
        boolean z2 = this.f11502m;
        if (m27709a(i2)) {
            this.f11492c.m28540d(b);
            h0Var.mo27583a(this.f11492c, i5);
            this.f11492c.m28540d(d);
        }
        if (this.f11490a != 2 && !z2 && this.f11502m && a != -1) {
            this.f11504o = true;
        }
        this.f11492c.m28538e(b);
        return 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    /* renamed from: a */
    public final void m27708a(long j) {
        if (!this.f11503n) {
            this.f11503n = true;
            if (this.f11498i.m27721a() != -9223372036854775807L) {
                C3146e0 e0Var = new C3146e0(this.f11498i.m27717b(), this.f11498i.m27721a(), j, this.f11507r);
                this.f11499j = e0Var;
                this.f11500k.mo28047a(e0Var.m28107a());
                return;
            }
            this.f11500k.mo28047a(new AbstractC3050o.C3052b(this.f11498i.m27721a()));
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        C3146e0 e0Var;
        C2877e.m28731b(this.f11490a != 2);
        int size = this.f11491b.size();
        for (int i = 0; i < size; i++) {
            C2881f0 f0Var = this.f11491b.get(i);
            if ((f0Var.m28710c() == -9223372036854775807L) || !(f0Var.m28710c() == 0 || f0Var.m28714a() == j2)) {
                f0Var.m28708d();
                f0Var.m28709c(j2);
            }
        }
        if (!(j2 == 0 || (e0Var = this.f11499j) == null)) {
            e0Var.m28100b(j2);
        }
        this.f11492c.m28516z();
        this.f11493d.clear();
        for (int i2 = 0; i2 < this.f11495f.size(); i2++) {
            this.f11495f.valueAt(i2).mo27586a();
        }
        this.f11506q = 0;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11500k = iVar;
    }

    /* renamed from: a */
    public final boolean m27709a(int i) {
        boolean z = false;
        if (this.f11490a == 2 || this.f11502m || !this.f11497h.get(i, false)) {
            z = true;
        }
        return z;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public boolean mo27552a(AbstractC3043h hVar) throws IOException, InterruptedException {
        boolean z;
        byte[] bArr = this.f11492c.f10530a;
        hVar.mo28055a(bArr, 0, 940);
        for (int i = 0; i < 188; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= 5) {
                    z = true;
                    break;
                } else if (bArr[(i2 * 188) + i] != 71) {
                    z = false;
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                hVar.mo28049c(i);
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final int m27703b() throws ParserException {
        int c = this.f11492c.m28543c();
        int d = this.f11492c.m28541d();
        int a = C3161i0.m27675a(this.f11492c.f10530a, c, d);
        this.f11492c.m28538e(a);
        int i = a + 188;
        if (i > d) {
            int i2 = this.f11506q + (a - c);
            this.f11506q = i2;
            if (this.f11490a == 2 && i2 > 376) {
                throw new ParserException("Cannot find sync byte. Most likely not a Transport Stream.");
            }
        } else {
            this.f11506q = 0;
        }
        return i;
    }

    /* renamed from: b */
    public final boolean m27702b(AbstractC3043h hVar) throws IOException, InterruptedException {
        C2904v vVar = this.f11492c;
        byte[] bArr = vVar.f10530a;
        if (9400 - vVar.m28543c() < 188) {
            int a = this.f11492c.m28552a();
            if (a > 0) {
                System.arraycopy(bArr, this.f11492c.m28543c(), bArr, 0, a);
            }
            this.f11492c.m28547a(bArr, a);
        }
        while (this.f11492c.m28552a() < 188) {
            int d = this.f11492c.m28541d();
            int read = hVar.read(bArr, d, 9400 - d);
            if (read == -1) {
                return false;
            }
            this.f11492c.m28540d(d + read);
        }
        return true;
    }

    /* renamed from: c */
    public final void m27699c() {
        this.f11496g.clear();
        this.f11495f.clear();
        SparseArray<AbstractC3155h0> a = this.f11494e.mo27649a();
        int size = a.size();
        for (int i = 0; i < size; i++) {
            this.f11495f.put(a.keyAt(i), a.valueAt(i));
        }
        this.f11495f.put(0, new C3140b0(new C3152a()));
        this.f11505p = null;
    }
}
