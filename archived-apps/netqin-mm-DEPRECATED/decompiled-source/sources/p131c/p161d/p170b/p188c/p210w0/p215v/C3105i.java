package p131c.p161d.p170b.p188c.p210w0.p215v;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.Metadata;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import p131c.p161d.p170b.p188c.p203g1.C2899s;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3046k;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
import p131c.p161d.p170b.p188c.p210w0.p215v.AbstractC3087c;
/* renamed from: c.d.b.c.w0.v.i */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/i.class */
public final class C3105i implements AbstractC3042g, AbstractC3050o {

    /* renamed from: a */
    public final int f11304a;

    /* renamed from: b */
    public final C2904v f11305b;

    /* renamed from: c */
    public final C2904v f11306c;

    /* renamed from: d */
    public final C2904v f11307d;

    /* renamed from: e */
    public final C2904v f11308e;

    /* renamed from: f */
    public final ArrayDeque<AbstractC3087c.C3088a> f11309f;

    /* renamed from: g */
    public int f11310g;

    /* renamed from: h */
    public int f11311h;

    /* renamed from: i */
    public long f11312i;

    /* renamed from: j */
    public int f11313j;

    /* renamed from: k */
    public C2904v f11314k;

    /* renamed from: l */
    public int f11315l;

    /* renamed from: m */
    public int f11316m;

    /* renamed from: n */
    public int f11317n;

    /* renamed from: o */
    public boolean f11318o;

    /* renamed from: p */
    public AbstractC3044i f11319p;

    /* renamed from: q */
    public C3106a[] f11320q;

    /* renamed from: r */
    public long[][] f11321r;

    /* renamed from: s */
    public int f11322s;

    /* renamed from: t */
    public long f11323t;

    /* renamed from: u */
    public boolean f11324u;

    /* renamed from: c.d.b.c.w0.v.i$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/i$a.class */
    public static final class C3106a {

        /* renamed from: a */
        public final C3110l f11325a;

        /* renamed from: b */
        public final C3113o f11326b;

        /* renamed from: c */
        public final AbstractC3054q f11327c;

        /* renamed from: d */
        public int f11328d;

        public C3106a(C3110l lVar, C3113o oVar, AbstractC3054q qVar) {
            this.f11325a = lVar;
            this.f11326b = oVar;
            this.f11327c = qVar;
        }
    }

    static {
        C3086b bVar = C3086b.f11212a;
    }

    public C3105i() {
        this(0);
    }

    public C3105i(int i) {
        this.f11304a = i;
        this.f11308e = new C2904v(16);
        this.f11309f = new ArrayDeque<>();
        this.f11305b = new C2904v(C2899s.f10506a);
        this.f11306c = new C2904v(4);
        this.f11307d = new C2904v();
        this.f11315l = -1;
    }

    /* renamed from: a */
    public static int m27820a(C3113o oVar, long j) {
        int a = oVar.m27791a(j);
        int i = a;
        if (a == -1) {
            i = oVar.m27790b(j);
        }
        return i;
    }

    /* renamed from: a */
    public static long m27819a(C3113o oVar, long j, long j2) {
        int a = m27820a(oVar, j);
        return a == -1 ? j2 : Math.min(oVar.f11368c[a], j2);
    }

    /* renamed from: a */
    public static boolean m27824a(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    /* renamed from: a */
    public static boolean m27823a(C2904v vVar) {
        vVar.m28538e(8);
        if (vVar.m28535g() == 1903435808) {
            return true;
        }
        vVar.m28536f(4);
        while (vVar.m28552a() > 0) {
            if (vVar.m28535g() == 1903435808) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long[]] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[][] m27818a(p131c.p161d.p170b.p188c.p210w0.p215v.C3105i.C3106a[] r5) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p215v.C3105i.m27818a(c.d.b.c.w0.v.i$a[]):long[][]");
    }

    /* renamed from: b */
    public static boolean m27817b(int i) {
        return i == 1835296868 || i == 1836476516 || i == 1751411826 || i == 1937011556 || i == 1937011827 || i == 1937011571 || i == 1668576371 || i == 1701606260 || i == 1937011555 || i == 1937011578 || i == 1937013298 || i == 1937007471 || i == 1668232756 || i == 1953196132 || i == 1718909296 || i == 1969517665 || i == 1801812339 || i == 1768715124;
    }

    /* renamed from: f */
    public static /* synthetic */ AbstractC3042g[] m27808f() {
        return new AbstractC3042g[]{new C3105i()};
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public int mo27551a(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        while (true) {
            int i = this.f11310g;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        return m27812c(hVar, nVar);
                    }
                    throw new IllegalStateException();
                } else if (m27815b(hVar, nVar)) {
                    return 1;
                }
            } else if (!m27813c(hVar)) {
                return -1;
            }
        }
    }

    /* renamed from: a */
    public final ArrayList<C3113o> m27821a(AbstractC3087c.C3088a aVar, C3046k kVar, boolean z) throws ParserException {
        C3110l a;
        ArrayList<C3113o> arrayList = new ArrayList<>();
        for (int i = 0; i < aVar.f11216d.size(); i++) {
            AbstractC3087c.C3088a aVar2 = aVar.f11216d.get(i);
            if (aVar2.f11213a == 1953653099 && (a = C3090d.m27904a(aVar2, aVar.m27915e(1836476516), -9223372036854775807L, (DrmInitData) null, z, this.f11324u)) != null) {
                C3113o a2 = C3090d.m27902a(a, aVar2.m27916d(1835297121).m27916d(1835626086).m27916d(1937007212), kVar);
                if (a2.f11367b != 0) {
                    arrayList.add(a2);
                }
            }
        }
        return arrayList;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27554a() {
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27553a(long j, long j2) {
        this.f11309f.clear();
        this.f11313j = 0;
        this.f11315l = -1;
        this.f11316m = 0;
        this.f11317n = 0;
        this.f11318o = false;
        if (j == 0) {
            m27810e();
        } else if (this.f11320q != null) {
            m27809e(j2);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public void mo27550a(AbstractC3044i iVar) {
        this.f11319p = iVar;
    }

    /* renamed from: a */
    public final void m27822a(AbstractC3087c.C3088a aVar) throws ParserException {
        Metadata metadata;
        Format format;
        ArrayList arrayList = new ArrayList();
        C3046k kVar = new C3046k();
        AbstractC3087c.C3089b e = aVar.m27915e(1969517665);
        Metadata metadata2 = null;
        if (e != null) {
            Metadata a = C3090d.m27903a(e, this.f11324u);
            metadata = a;
            if (a != null) {
                kVar.m28043a(a);
                metadata = a;
            }
        } else {
            metadata = null;
        }
        AbstractC3087c.C3088a d = aVar.m27916d(1835365473);
        if (d != null) {
            metadata2 = C3090d.m27897b(d);
        }
        ArrayList<C3113o> a2 = m27821a(aVar, kVar, (this.f11304a & 1) != 0);
        int size = a2.size();
        long j = -9223372036854775807L;
        int i = -1;
        for (int i2 = 0; i2 < size; i2++) {
            C3113o oVar = a2.get(i2);
            C3110l lVar = oVar.f11366a;
            long j2 = lVar.f11335e;
            if (j2 == -9223372036854775807L) {
                j2 = oVar.f11373h;
            }
            j = Math.max(j, j2);
            C3106a aVar2 = new C3106a(lVar, oVar, this.f11319p.mo28048a(i2, lVar.f11332b));
            Format b = lVar.f11336f.m18694b(oVar.f11370e + 30);
            if (lVar.f11332b != 2 || j2 <= 0) {
                format = b;
            } else {
                int i3 = oVar.f11367b;
                format = b;
                if (i3 > 1) {
                    format = b.m18713a(i3 / (((float) j2) / 1000000.0f));
                }
            }
            aVar2.f11327c.mo28034a(C3104h.m27834a(lVar.f11332b, format, metadata, metadata2, kVar));
            if (lVar.f11332b == 2) {
                i = i;
                if (i == -1) {
                    i = arrayList.size();
                }
            } else {
                i = i;
            }
            arrayList.add(aVar2);
        }
        this.f11322s = i;
        this.f11323t = j;
        C3106a[] aVarArr = (C3106a[]) arrayList.toArray(new C3106a[0]);
        this.f11320q = aVarArr;
        this.f11321r = m27818a(aVarArr);
        this.f11319p.mo28046e();
        this.f11319p.mo28047a(this);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3042g
    /* renamed from: a */
    public boolean mo27552a(AbstractC3043h hVar) throws IOException, InterruptedException {
        return C3109k.m27801b(hVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v0, types: [long] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r20v1, types: [long] */
    /* JADX WARN: Type inference failed for: r20v13 */
    /* JADX WARN: Type inference failed for: r20v14 */
    /* JADX WARN: Type inference failed for: r20v15 */
    /* JADX WARN: Type inference failed for: r20v2 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p131c.p161d.p170b.p188c.p210w0.AbstractC3050o.C3051a mo27544b(long r11) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p215v.C3105i.mo27544b(long):c.d.b.c.w0.o$a");
    }

    /* renamed from: b */
    public final void m27816b(AbstractC3043h hVar) throws IOException, InterruptedException {
        this.f11307d.m28542c(8);
        hVar.mo28055a(this.f11307d.f10530a, 0, 8);
        this.f11307d.m28536f(4);
        if (this.f11307d.m28535g() == 1751411826) {
            hVar.mo28050c();
        } else {
            hVar.mo28049c(4);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public boolean mo27545b() {
        return true;
    }

    /* renamed from: b */
    public final boolean m27815b(AbstractC3043h hVar, C3049n nVar) throws IOException, InterruptedException {
        boolean z;
        long j = this.f11312i - this.f11313j;
        long position = hVar.getPosition();
        C2904v vVar = this.f11314k;
        boolean z2 = true;
        if (vVar != null) {
            hVar.readFully(vVar.f10530a, this.f11313j, (int) j);
            if (this.f11311h == 1718909296) {
                this.f11324u = m27823a(this.f11314k);
            } else if (!this.f11309f.isEmpty()) {
                this.f11309f.peek().m27917a(new AbstractC3087c.C3089b(this.f11311h, this.f11314k));
            }
        } else if (j < 262144) {
            hVar.mo28049c((int) j);
        } else {
            nVar.f10989a = hVar.getPosition() + j;
            z = true;
            m27811d(position + j);
            if (z || this.f11310g == 2) {
                z2 = false;
            }
            return z2;
        }
        z = false;
        m27811d(position + j);
        if (z) {
        }
        z2 = false;
        return z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x00bf, code lost:
        if (r0 < (r19 == true ? 1 : 0)) goto L_0x00c2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x012a, code lost:
        if ((r16 == true ? 1 : 0) < (r13 + 10485760)) goto L_0x012d;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0109 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long[][]] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m27814c(long r8) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p215v.C3105i.m27814c(long):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m27812c(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r9, p131c.p161d.p170b.p188c.p210w0.C3049n r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 571
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p215v.C3105i.m27812c(c.d.b.c.w0.h, c.d.b.c.w0.n):int");
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: c */
    public long mo27543c() {
        return this.f11323t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m27813c(p131c.p161d.p170b.p188c.p210w0.AbstractC3043h r8) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p210w0.p215v.C3105i.m27813c(c.d.b.c.w0.h):boolean");
    }

    /* renamed from: d */
    public final void m27811d(long j) throws ParserException {
        while (!this.f11309f.isEmpty() && this.f11309f.peek().f11214b == j) {
            AbstractC3087c.C3088a pop = this.f11309f.pop();
            if (pop.f11213a == 1836019574) {
                m27822a(pop);
                this.f11309f.clear();
                this.f11310g = 2;
            } else if (!this.f11309f.isEmpty()) {
                this.f11309f.peek().m27918a(pop);
            }
        }
        if (this.f11310g != 2) {
            m27810e();
        }
    }

    /* renamed from: e */
    public final void m27810e() {
        this.f11310g = 0;
        this.f11313j = 0;
    }

    /* renamed from: e */
    public final void m27809e(long j) {
        C3106a[] aVarArr;
        for (C3106a aVar : this.f11320q) {
            C3113o oVar = aVar.f11326b;
            int a = oVar.m27791a(j);
            int i = a;
            if (a == -1) {
                i = oVar.m27790b(j);
            }
            aVar.f11328d = i;
        }
    }
}
