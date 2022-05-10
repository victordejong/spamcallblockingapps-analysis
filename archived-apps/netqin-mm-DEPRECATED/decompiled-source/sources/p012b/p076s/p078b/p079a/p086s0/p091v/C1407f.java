package p012b.p076s.p078b.p079a.p086s0.p091v;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p080a1.C1196z;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1345b;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
import p012b.p076s.p078b.p079a.p086s0.p091v.AbstractC1392a;
/* renamed from: b.s.b.a.s0.v.f */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/f.class */
public class C1407f implements AbstractC1350g {

    /* renamed from: J */
    public static final byte[] f5613J = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: K */
    public static final Format f5614K = Format.m38185a(null, "application/x-emsg", Long.MAX_VALUE);

    /* renamed from: A */
    public int f5615A;

    /* renamed from: B */
    public int f5616B;

    /* renamed from: C */
    public int f5617C;

    /* renamed from: D */
    public boolean f5618D;

    /* renamed from: E */
    public boolean f5619E;

    /* renamed from: F */
    public AbstractC1352i f5620F;

    /* renamed from: G */
    public AbstractC1362q[] f5621G;

    /* renamed from: H */
    public AbstractC1362q[] f5622H;

    /* renamed from: I */
    public boolean f5623I;

    /* renamed from: a */
    public final int f5624a;

    /* renamed from: b */
    public final C1417l f5625b;

    /* renamed from: c */
    public final List<Format> f5626c;

    /* renamed from: d */
    public final DrmInitData f5627d;

    /* renamed from: e */
    public final SparseArray<C1409b> f5628e;

    /* renamed from: f */
    public final C1184p f5629f;

    /* renamed from: g */
    public final C1184p f5630g;

    /* renamed from: h */
    public final C1184p f5631h;

    /* renamed from: i */
    public final byte[] f5632i;

    /* renamed from: j */
    public final C1184p f5633j;

    /* renamed from: k */
    public final C1196z f5634k;

    /* renamed from: l */
    public final C1184p f5635l;

    /* renamed from: m */
    public final ArrayDeque<AbstractC1392a.C1393a> f5636m;

    /* renamed from: n */
    public final ArrayDeque<C1408a> f5637n;

    /* renamed from: o */
    public final AbstractC1362q f5638o;

    /* renamed from: p */
    public int f5639p;

    /* renamed from: q */
    public int f5640q;

    /* renamed from: r */
    public long f5641r;

    /* renamed from: s */
    public int f5642s;

    /* renamed from: t */
    public C1184p f5643t;

    /* renamed from: u */
    public long f5644u;

    /* renamed from: v */
    public int f5645v;

    /* renamed from: w */
    public long f5646w;

    /* renamed from: x */
    public long f5647x;

    /* renamed from: y */
    public long f5648y;

    /* renamed from: z */
    public C1409b f5649z;

    /* renamed from: b.s.b.a.s0.v.f$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/f$a.class */
    public static final class C1408a {

        /* renamed from: a */
        public final long f5650a;

        /* renamed from: b */
        public final int f5651b;

        public C1408a(long j, int i) {
            this.f5650a = j;
            this.f5651b = i;
        }
    }

    /* renamed from: b.s.b.a.s0.v.f$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/f$b.class */
    public static final class C1409b {

        /* renamed from: a */
        public final AbstractC1362q f5652a;

        /* renamed from: c */
        public C1417l f5654c;

        /* renamed from: d */
        public C1402c f5655d;

        /* renamed from: e */
        public int f5656e;

        /* renamed from: f */
        public int f5657f;

        /* renamed from: g */
        public int f5658g;

        /* renamed from: h */
        public int f5659h;

        /* renamed from: b */
        public final C1419n f5653b = new C1419n();

        /* renamed from: i */
        public final C1184p f5660i = new C1184p(1);

        /* renamed from: j */
        public final C1184p f5661j = new C1184p();

        public C1409b(AbstractC1362q qVar) {
            this.f5652a = qVar;
        }

        /* renamed from: a */
        public final C1418m m33418a() {
            C1419n nVar = this.f5653b;
            int i = nVar.f5707a.f5602a;
            C1418m mVar = nVar.f5721o;
            if (mVar == null) {
                mVar = this.f5654c.m33371a(i);
            }
            if (mVar == null || !mVar.f5702a) {
                mVar = null;
            }
            return mVar;
        }

        /* renamed from: a */
        public void m33417a(long j) {
            long b = C1220c.m34195b(j);
            int i = this.f5656e;
            while (true) {
                C1419n nVar = this.f5653b;
                if (i < nVar.f5712f && nVar.m33368a(i) < b) {
                    if (this.f5653b.f5718l[i]) {
                        this.f5659h = i;
                    }
                    i++;
                } else {
                    return;
                }
            }
        }

        /* renamed from: a */
        public void m33416a(DrmInitData drmInitData) {
            C1418m a = this.f5654c.m33371a(this.f5653b.f5707a.f5602a);
            this.f5652a.mo32623a(this.f5654c.f5696f.m38189a(drmInitData.m38097a(a != null ? a.f5703b : null)));
        }

        /* renamed from: a */
        public void m33414a(C1417l lVar, C1402c cVar) {
            C1160a.m34522a(lVar);
            this.f5654c = lVar;
            C1160a.m34522a(cVar);
            this.f5655d = cVar;
            this.f5652a.mo32623a(lVar.f5696f);
            m33410d();
        }

        /* renamed from: b */
        public boolean m33413b() {
            this.f5656e++;
            int i = this.f5657f + 1;
            this.f5657f = i;
            int[] iArr = this.f5653b.f5714h;
            int i2 = this.f5658g;
            if (i != iArr[i2]) {
                return true;
            }
            this.f5658g = i2 + 1;
            this.f5657f = 0;
            return false;
        }

        /* renamed from: c */
        public int m33411c() {
            C1184p pVar;
            C1418m a = m33418a();
            if (a == null) {
                return 0;
            }
            int i = a.f5705d;
            if (i != 0) {
                pVar = this.f5653b.f5723q;
            } else {
                byte[] bArr = a.f5706e;
                this.f5661j.m34367a(bArr, bArr.length);
                pVar = this.f5661j;
                i = bArr.length;
            }
            boolean c = this.f5653b.m33363c(this.f5656e);
            this.f5660i.f4738a[0] = (byte) ((c ? 128 : 0) | i);
            this.f5660i.m34358e(0);
            this.f5652a.mo32827a(this.f5660i, 1);
            this.f5652a.mo32827a(pVar, i);
            if (!c) {
                return i + 1;
            }
            C1184p pVar2 = this.f5653b.f5723q;
            int x = pVar2.m34338x();
            pVar2.m34356f(-2);
            int i2 = (x * 6) + 2;
            this.f5652a.mo32827a(pVar2, i2);
            return i + 1 + i2;
        }

        /* renamed from: d */
        public void m33410d() {
            this.f5653b.m33369a();
            this.f5656e = 0;
            this.f5658g = 0;
            this.f5657f = 0;
            this.f5659h = 0;
        }

        /* renamed from: e */
        public final void m33409e() {
            C1418m a = m33418a();
            if (a != null) {
                C1184p pVar = this.f5653b.f5723q;
                int i = a.f5705d;
                if (i != 0) {
                    pVar.m34356f(i);
                }
                if (this.f5653b.m33363c(this.f5656e)) {
                    pVar.m34356f(pVar.m34338x() * 6);
                }
            }
        }
    }

    static {
        AbstractC1353j jVar = C1406e.f5612a;
    }

    public C1407f() {
        this(0);
    }

    public C1407f(int i) {
        this(i, null);
    }

    public C1407f(int i, C1196z zVar) {
        this(i, zVar, null, null);
    }

    public C1407f(int i, C1196z zVar, C1417l lVar, DrmInitData drmInitData) {
        this(i, zVar, lVar, drmInitData, Collections.emptyList());
    }

    public C1407f(int i, C1196z zVar, C1417l lVar, DrmInitData drmInitData, List<Format> list) {
        this(i, zVar, lVar, drmInitData, list, null);
    }

    public C1407f(int i, C1196z zVar, C1417l lVar, DrmInitData drmInitData, List<Format> list, AbstractC1362q qVar) {
        this.f5624a = i | (lVar != null ? 8 : 0);
        this.f5634k = zVar;
        this.f5625b = lVar;
        this.f5627d = drmInitData;
        this.f5626c = Collections.unmodifiableList(list);
        this.f5638o = qVar;
        this.f5635l = new C1184p(16);
        this.f5629f = new C1184p(C1180n.f4714a);
        this.f5630g = new C1184p(5);
        this.f5631h = new C1184p();
        byte[] bArr = new byte[16];
        this.f5632i = bArr;
        this.f5633j = new C1184p(bArr);
        this.f5636m = new ArrayDeque<>();
        this.f5637n = new ArrayDeque<>();
        this.f5628e = new SparseArray<>();
        this.f5647x = -9223372036854775807L;
        this.f5646w = -9223372036854775807L;
        this.f5648y = -9223372036854775807L;
        m33435b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r27v0 */
    /* JADX WARN: Type inference failed for: r27v1, types: [long] */
    /* JADX WARN: Type inference failed for: r27v2 */
    /* JADX WARN: Type inference failed for: r27v3 */
    /* JADX WARN: Type inference failed for: r27v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m33439a(p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.C1409b r9, int r10, long r11, int r13, p012b.p076s.p078b.p079a.p080a1.C1184p r14, int r15) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33439a(b.s.b.a.s0.v.f$b, int, long, int, b.s.b.a.a1.p, int):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r14v0, types: [long] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [long] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Long, p012b.p076s.p078b.p079a.p086s0.C1345b> m33448a(p012b.p076s.p078b.p079a.p080a1.C1184p r8, long r9) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33448a(b.s.b.a.a1.p, long):android.util.Pair");
    }

    /* renamed from: a */
    public static DrmInitData m33436a(List<AbstractC1392a.C1394b> list) {
        int size = list.size();
        DrmInitData drmInitData = null;
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            AbstractC1392a.C1394b bVar = list.get(i);
            arrayList = arrayList;
            if (bVar.f5572a == 1886614376) {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = bVar.f5576b.f4738a;
                UUID b = C1414j.m33377b(bArr);
                if (b == null) {
                    C1175j.m34414d("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(b, "video/mp4", bArr));
                }
            }
        }
        if (arrayList != null) {
            drmInitData = new DrmInitData(arrayList);
        }
        return drmInitData;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.C1409b m33452a(android.util.SparseArray<p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.C1409b> r5) {
        /*
            r0 = r5
            int r0 = r0.size()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r8 = r0
            r0 = 0
            r10 = r0
        L_0x000e:
            r0 = r10
            r1 = r6
            if (r0 >= r1) goto L_0x0061
            r0 = r5
            r1 = r10
            java.lang.Object r0 = r0.valueAt(r1)
            b.s.b.a.s0.v.f$b r0 = (p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.C1409b) r0
            r11 = r0
            r0 = r11
            int r0 = r0.f5658g
            r12 = r0
            r0 = r11
            b.s.b.a.s0.v.n r0 = r0.f5653b
            r13 = r0
            r0 = r12
            r1 = r13
            int r1 = r1.f5711e
            if (r0 != r1) goto L_0x003d
            r0 = r8
            r14 = r0
            goto L_0x0058
        L_0x003d:
            r0 = r13
            long[] r0 = r0.f5713g
            r1 = r12
            r0 = r0[r1]
            r16 = r0
            r0 = r8
            r14 = r0
            r0 = r16
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0058
            r0 = r11
            r7 = r0
            r0 = r16
            r14 = r0
        L_0x0058:
            int r10 = r10 + 1
            r0 = r14
            r8 = r0
            goto L_0x000e
        L_0x0061:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33452a(android.util.SparseArray):b.s.b.a.s0.v.f$b");
    }

    /* renamed from: a */
    public static C1409b m33447a(C1184p pVar, SparseArray<C1409b> sparseArray) {
        pVar.m34358e(8);
        int b = AbstractC1392a.m33493b(pVar.m34357f());
        C1409b b2 = m33432b(sparseArray, pVar.m34357f());
        if (b2 == null) {
            return null;
        }
        if ((b & 1) != 0) {
            long w = pVar.m34339w();
            C1419n nVar = b2.f5653b;
            nVar.f5709c = w;
            nVar.f5710d = w;
        }
        C1402c cVar = b2.f5655d;
        b2.f5653b.f5707a = new C1402c((b & 2) != 0 ? pVar.m34340v() - 1 : cVar.f5602a, (b & 8) != 0 ? pVar.m34340v() : cVar.f5603b, (b & 16) != 0 ? pVar.m34340v() : cVar.f5604c, (b & 32) != 0 ? pVar.m34340v() : cVar.f5605d);
        return b2;
    }

    /* renamed from: a */
    public static void m33449a(C1184p pVar, int i, C1419n nVar) throws ParserException {
        pVar.m34358e(i + 8);
        int b = AbstractC1392a.m33493b(pVar.m34357f());
        if ((b & 1) == 0) {
            boolean z = (b & 2) != 0;
            int v = pVar.m34340v();
            if (v == nVar.f5712f) {
                Arrays.fill(nVar.f5720n, 0, v, z);
                nVar.m33364b(pVar.m34372a());
                nVar.m33366a(pVar);
                return;
            }
            int i2 = nVar.f5712f;
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(v);
            sb.append(", ");
            sb.append(i2);
            throw new ParserException(sb.toString());
        }
        throw new ParserException("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* renamed from: a */
    public static void m33446a(C1184p pVar, C1184p pVar2, String str, C1419n nVar) throws ParserException {
        byte[] bArr;
        pVar.m34358e(8);
        int f = pVar.m34357f();
        if (pVar.m34357f() == 1936025959) {
            if (AbstractC1392a.m33492c(f) == 1) {
                pVar.m34356f(4);
            }
            if (pVar.m34357f() == 1) {
                pVar2.m34358e(8);
                int f2 = pVar2.m34357f();
                if (pVar2.m34357f() == 1936025959) {
                    int c = AbstractC1392a.m33492c(f2);
                    if (c == 1) {
                        if (pVar2.m34342t() == 0) {
                            throw new ParserException("Variable length description in sgpd found (unsupported)");
                        }
                    } else if (c >= 2) {
                        pVar2.m34356f(4);
                    }
                    if (pVar2.m34342t() == 1) {
                        pVar2.m34356f(1);
                        int r = pVar2.m34344r();
                        boolean z = pVar2.m34344r() == 1;
                        if (z) {
                            int r2 = pVar2.m34344r();
                            byte[] bArr2 = new byte[16];
                            pVar2.m34366a(bArr2, 0, 16);
                            if (r2 == 0) {
                                int r3 = pVar2.m34344r();
                                bArr = new byte[r3];
                                pVar2.m34366a(bArr, 0, r3);
                            } else {
                                bArr = null;
                            }
                            nVar.f5719m = true;
                            nVar.f5721o = new C1418m(z, str, r2, bArr2, (r & 240) >> 4, r & 15, bArr);
                            return;
                        }
                        return;
                    }
                    throw new ParserException("Entry count in sgpd != 1 (unsupported).");
                }
                return;
            }
            throw new ParserException("Entry count in sbgp != 1 (unsupported).");
        }
    }

    /* renamed from: a */
    public static void m33445a(C1184p pVar, C1419n nVar) throws ParserException {
        pVar.m34358e(8);
        int f = pVar.m34357f();
        if ((AbstractC1392a.m33493b(f) & 1) == 1) {
            pVar.m34356f(8);
        }
        int v = pVar.m34340v();
        if (v == 1) {
            nVar.f5710d += AbstractC1392a.m33492c(f) == 0 ? pVar.m34342t() : pVar.m34339w();
            return;
        }
        StringBuilder sb = new StringBuilder(40);
        sb.append("Unexpected saio entry count: ");
        sb.append(v);
        throw new ParserException(sb.toString());
    }

    /* renamed from: a */
    public static void m33444a(C1184p pVar, C1419n nVar, byte[] bArr) throws ParserException {
        pVar.m34358e(8);
        pVar.m34366a(bArr, 0, 16);
        if (Arrays.equals(bArr, f5613J)) {
            m33449a(pVar, 16, nVar);
        }
    }

    /* renamed from: a */
    public static void m33442a(AbstractC1392a.C1393a aVar, SparseArray<C1409b> sparseArray, int i, byte[] bArr) throws ParserException {
        int size = aVar.f5575d.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC1392a.C1393a aVar2 = aVar.f5575d.get(i2);
            if (aVar2.f5572a == 1953653094) {
                m33427b(aVar2, sparseArray, i, bArr);
            }
        }
    }

    /* renamed from: a */
    public static void m33441a(AbstractC1392a.C1393a aVar, C1409b bVar, long j, int i) {
        List<AbstractC1392a.C1394b> list = aVar.f5574c;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            AbstractC1392a.C1394b bVar2 = list.get(i4);
            i2 = i2;
            i3 = i3;
            if (bVar2.f5572a == 1953658222) {
                C1184p pVar = bVar2.f5576b;
                pVar.m34358e(12);
                int v = pVar.m34340v();
                i2 = i2;
                i3 = i3;
                if (v > 0) {
                    i3 += v;
                    i2++;
                }
            }
        }
        bVar.f5658g = 0;
        bVar.f5657f = 0;
        bVar.f5656e = 0;
        bVar.f5653b.m33367a(i2, i3);
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            AbstractC1392a.C1394b bVar3 = list.get(i7);
            i5 = i5;
            i6 = i6;
            if (bVar3.f5572a == 1953658222) {
                i6 = m33439a(bVar, i5, j, i, bVar3.f5576b, i6);
                i5++;
            }
        }
    }

    /* renamed from: a */
    public static void m33437a(C1418m mVar, C1184p pVar, C1419n nVar) throws ParserException {
        int i;
        int i2 = mVar.f5705d;
        pVar.m34358e(8);
        boolean z = true;
        if ((AbstractC1392a.m33493b(pVar.m34357f()) & 1) == 1) {
            pVar.m34356f(8);
        }
        int r = pVar.m34344r();
        int v = pVar.m34340v();
        if (v == nVar.f5712f) {
            if (r == 0) {
                boolean[] zArr = nVar.f5720n;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    i = i4;
                    if (i3 >= v) {
                        break;
                    }
                    int r2 = pVar.m34344r();
                    i4 += r2;
                    zArr[i3] = r2 > i2;
                    i3++;
                }
            } else {
                if (r <= i2) {
                    z = false;
                }
                i = (r * v) + 0;
                Arrays.fill(nVar.f5720n, 0, v, z);
            }
            nVar.m33364b(i);
            return;
        }
        int i5 = nVar.f5712f;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Length mismatch: ");
        sb.append(v);
        sb.append(", ");
        sb.append(i5);
        throw new ParserException(sb.toString());
    }

    /* renamed from: a */
    public static boolean m33454a(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1836019558 || i == 1953653094 || i == 1836475768 || i == 1701082227;
    }

    /* renamed from: b */
    public static long m33431b(C1184p pVar) {
        pVar.m34358e(8);
        return AbstractC1392a.m33492c(pVar.m34357f()) == 0 ? pVar.m34342t() : pVar.m34339w();
    }

    /* renamed from: b */
    public static C1409b m33432b(SparseArray<C1409b> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i);
    }

    /* renamed from: b */
    public static void m33430b(C1184p pVar, C1419n nVar) throws ParserException {
        m33449a(pVar, 0, nVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m33427b(p012b.p076s.p078b.p079a.p086s0.p091v.AbstractC1392a.C1393a r6, android.util.SparseArray<p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.C1409b> r7, int r8, byte[] r9) throws androidx.media2.exoplayer.external.ParserException {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33427b(b.s.b.a.s0.v.a$a, android.util.SparseArray, int, byte[]):void");
    }

    /* renamed from: b */
    public static boolean m33434b(int i) {
        return i == 1751411826 || i == 1835296868 || i == 1836476516 || i == 1936286840 || i == 1937011556 || i == 1952867444 || i == 1952868452 || i == 1953196132 || i == 1953654136 || i == 1953658222 || i == 1886614376 || i == 1935763834 || i == 1935763823 || i == 1936027235 || i == 1970628964 || i == 1935828848 || i == 1936158820 || i == 1701606260 || i == 1835362404 || i == 1701671783;
    }

    /* renamed from: c */
    public static long m33425c(C1184p pVar) {
        pVar.m34358e(8);
        return AbstractC1392a.m33492c(pVar.m34357f()) == 1 ? pVar.m34339w() : pVar.m34342t();
    }

    /* renamed from: d */
    public static Pair<Integer, C1402c> m33421d(C1184p pVar) {
        pVar.m34358e(12);
        return Pair.create(Integer.valueOf(pVar.m34357f()), new C1402c(pVar.m34340v() - 1, pVar.m34340v(), pVar.m34340v(), pVar.m34357f()));
    }

    /* renamed from: d */
    public static final /* synthetic */ AbstractC1350g[] m33422d() {
        return new AbstractC1350g[]{new C1407f()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        while (true) {
            int i = this.f5639p;
            if (i != 0) {
                if (i == 1) {
                    m33424c(hVar);
                } else if (i == 2) {
                    m33420d(hVar);
                } else if (m33419e(hVar)) {
                    return 0;
                }
            } else if (!m33429b(hVar)) {
                return -1;
            }
        }
    }

    /* renamed from: a */
    public final C1402c m33451a(SparseArray<C1402c> sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        C1402c cVar = sparseArray.get(i);
        C1160a.m34522a(cVar);
        return cVar;
    }

    /* renamed from: a */
    public C1417l m33438a(C1417l lVar) {
        return lVar;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32619a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [b.s.b.a.a1.z] */
    /* JADX WARN: Type inference failed for: r0v16, types: [b.s.b.a.s0.q[]] */
    /* JADX WARN: Type inference failed for: r0v22, types: [b.s.b.a.s0.q] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [long] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33453a(long r9) {
        /*
            r8 = this;
        L_0x0000:
            r0 = r8
            java.util.ArrayDeque<b.s.b.a.s0.v.f$a> r0 = r0.f5637n
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0073
            r0 = r8
            java.util.ArrayDeque<b.s.b.a.s0.v.f$a> r0 = r0.f5637n
            java.lang.Object r0 = r0.removeFirst()
            b.s.b.a.s0.v.f$a r0 = (p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.C1408a) r0
            r11 = r0
            r0 = r8
            r1 = r8
            int r1 = r1.f5645v
            r2 = r11
            int r2 = r2.f5651b
            int r1 = r1 - r2
            r0.f5645v = r1
            r0 = r11
            long r0 = r0.f5650a
            r1 = r9
            long r0 = r0 + r1
            r12 = r0
            r0 = r8
            b.s.b.a.a1.z r0 = r0.f5634k
            r14 = r0
            r0 = r12
            r15 = r0
            r0 = r14
            if (r0 == 0) goto L_0x0042
            r0 = r14
            r1 = r12
            long r0 = r0.m34294a(r1)
            r15 = r0
        L_0x0042:
            r0 = r8
            b.s.b.a.s0.q[] r0 = r0.f5621G
            r14 = r0
            r0 = r14
            int r0 = r0.length
            r17 = r0
            r0 = 0
            r18 = r0
        L_0x0050:
            r0 = r18
            r1 = r17
            if (r0 >= r1) goto L_0x0000
            r0 = r14
            r1 = r18
            r0 = r0[r1]
            r1 = r15
            r2 = 1
            r3 = r11
            int r3 = r3.f5651b
            r4 = r8
            int r4 = r4.f5645v
            r5 = 0
            r0.mo32832a(r1, r2, r3, r4, r5)
            int r18 = r18 + 1
            goto L_0x0050
        L_0x0073:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33453a(long):void");
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        int size = this.f5628e.size();
        for (int i = 0; i < size; i++) {
            this.f5628e.valueAt(i).m33410d();
        }
        this.f5637n.clear();
        this.f5645v = 0;
        this.f5646w = j2;
        this.f5636m.clear();
        this.f5619E = false;
        m33435b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [b.s.b.a.a1.z] */
    /* JADX WARN: Type inference failed for: r0v45, types: [b.s.b.a.s0.q[]] */
    /* JADX WARN: Type inference failed for: r0v51, types: [b.s.b.a.s0.q] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33450a(p012b.p076s.p078b.p079a.p080a1.C1184p r9) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33450a(b.s.b.a.a1.p):void");
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32614a(AbstractC1352i iVar) {
        this.f5620F = iVar;
        C1417l lVar = this.f5625b;
        if (lVar != null) {
            C1409b bVar = new C1409b(iVar.mo32666a(0, lVar.f5692b));
            bVar.m33414a(this.f5625b, new C1402c(0, 0, 0, 0));
            this.f5628e.put(0, bVar);
            m33426c();
            this.f5620F.mo32639e();
        }
    }

    /* renamed from: a */
    public final void m33443a(AbstractC1392a.C1393a aVar) throws ParserException {
        int i = aVar.f5572a;
        if (i == 1836019574) {
            m33423c(aVar);
        } else if (i == 1836019558) {
            m33428b(aVar);
        } else if (!this.f5636m.isEmpty()) {
            this.f5636m.peek().m33491a(aVar);
        }
    }

    /* renamed from: a */
    public final void m33440a(AbstractC1392a.C1394b bVar, long j) throws ParserException {
        if (!this.f5636m.isEmpty()) {
            this.f5636m.peek().m33490a(bVar);
            return;
        }
        int i = bVar.f5572a;
        if (i == 1936286840) {
            Pair<Long, C1345b> a = m33448a(bVar.f5576b, j);
            this.f5648y = ((Long) a.first).longValue();
            this.f5620F.mo32656a((AbstractC1358o) a.second);
            this.f5623I = true;
        } else if (i == 1701671783) {
            m33450a(bVar.f5576b);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        return C1416k.m33374a(hVar);
    }

    /* renamed from: b */
    public final void m33435b() {
        this.f5639p = 0;
        this.f5642s = 0;
    }

    /* renamed from: b */
    public final void m33433b(long j) throws ParserException {
        while (!this.f5636m.isEmpty() && this.f5636m.peek().f5573b == j) {
            m33443a(this.f5636m.pop());
        }
        m33435b();
    }

    /* renamed from: b */
    public final void m33428b(AbstractC1392a.C1393a aVar) throws ParserException {
        m33442a(aVar, this.f5628e, this.f5624a, this.f5632i);
        DrmInitData a = this.f5627d != null ? null : m33436a(aVar.f5574c);
        if (a != null) {
            int size = this.f5628e.size();
            for (int i = 0; i < size; i++) {
                this.f5628e.valueAt(i).m33416a(a);
            }
        }
        if (this.f5646w != -9223372036854775807L) {
            int size2 = this.f5628e.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.f5628e.valueAt(i2).m33417a(this.f5646w);
            }
            this.f5646w = -9223372036854775807L;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r10v5, types: [long] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m33429b(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33429b(b.s.b.a.s0.h):boolean");
    }

    /* renamed from: c */
    public final void m33426c() {
        int i;
        if (this.f5621G == null) {
            AbstractC1362q[] qVarArr = new AbstractC1362q[2];
            this.f5621G = qVarArr;
            AbstractC1362q qVar = this.f5638o;
            if (qVar != null) {
                qVarArr[0] = qVar;
                i = 1;
            } else {
                i = 0;
            }
            int i2 = i;
            if ((this.f5624a & 4) != 0) {
                this.f5621G[i] = this.f5620F.mo32666a(this.f5628e.size(), 4);
                i2 = i + 1;
            }
            AbstractC1362q[] qVarArr2 = (AbstractC1362q[]) Arrays.copyOf(this.f5621G, i2);
            this.f5621G = qVarArr2;
            for (AbstractC1362q qVar2 : qVarArr2) {
                qVar2.mo32623a(f5614K);
            }
        }
        if (this.f5622H == null) {
            this.f5622H = new AbstractC1362q[this.f5626c.size()];
            for (int i3 = 0; i3 < this.f5622H.length; i3++) {
                AbstractC1362q a = this.f5620F.mo32666a(this.f5628e.size() + 1 + i3, 3);
                a.mo32623a(this.f5626c.get(i3));
                this.f5622H[i3] = a;
            }
        }
    }

    /* renamed from: c */
    public final void m33424c(AbstractC1351h hVar) throws IOException, InterruptedException {
        int i = ((int) this.f5641r) - this.f5642s;
        C1184p pVar = this.f5643t;
        if (pVar != null) {
            hVar.readFully(pVar.f4738a, 8, i);
            m33440a(new AbstractC1392a.C1394b(this.f5640q, this.f5643t), hVar.getPosition());
        } else {
            hVar.mo33613c(i);
        }
        m33433b(hVar.getPosition());
    }

    /* renamed from: c */
    public final void m33423c(AbstractC1392a.C1393a aVar) throws ParserException {
        boolean z = true;
        C1160a.m34517b(this.f5625b == null, "Unexpected moov box.");
        DrmInitData drmInitData = this.f5627d;
        if (drmInitData == null) {
            drmInitData = m33436a(aVar.f5574c);
        }
        AbstractC1392a.C1393a d = aVar.m33489d(1836475768);
        SparseArray<C1402c> sparseArray = new SparseArray<>();
        int size = d.f5574c.size();
        long j = -9223372036854775807L;
        for (int i = 0; i < size; i++) {
            AbstractC1392a.C1394b bVar = d.f5574c.get(i);
            int i2 = bVar.f5572a;
            if (i2 == 1953654136) {
                Pair<Integer, C1402c> d2 = m33421d(bVar.f5576b);
                sparseArray.put(((Integer) d2.first).intValue(), (C1402c) d2.second);
            } else if (i2 == 1835362404) {
                j = m33431b(bVar.f5576b);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = aVar.f5575d.size();
        for (int i3 = 0; i3 < size2; i3++) {
            AbstractC1392a.C1393a aVar2 = aVar.f5575d.get(i3);
            if (aVar2.f5572a == 1953653099) {
                C1417l a = C1395b.m33477a(aVar2, aVar.m33488e(1836476516), j, drmInitData, (this.f5624a & 16) != 0, false);
                m33438a(a);
                if (a != null) {
                    sparseArray2.put(a.f5691a, a);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.f5628e.size() == 0) {
            for (int i4 = 0; i4 < size3; i4++) {
                C1417l lVar = (C1417l) sparseArray2.valueAt(i4);
                C1409b bVar2 = new C1409b(this.f5620F.mo32666a(i4, lVar.f5692b));
                bVar2.m33414a(lVar, m33451a(sparseArray, lVar.f5691a));
                this.f5628e.put(lVar.f5691a, bVar2);
                this.f5647x = Math.max(this.f5647x, lVar.f5695e);
            }
            m33426c();
            this.f5620F.mo32639e();
            return;
        }
        if (this.f5628e.size() != size3) {
            z = false;
        }
        C1160a.m34518b(z);
        for (int i5 = 0; i5 < size3; i5++) {
            C1417l lVar2 = (C1417l) sparseArray2.valueAt(i5);
            this.f5628e.get(lVar2.f5691a).m33414a(lVar2, m33451a(sparseArray, lVar2.f5691a));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m33420d(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r6) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            android.util.SparseArray<b.s.b.a.s0.v.f$b> r0 = r0.f5628e
            int r0 = r0.size()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
            r0 = 0
            r11 = r0
        L_0x0012:
            r0 = r11
            r1 = r7
            if (r0 >= r1) goto L_0x006d
            r0 = r5
            android.util.SparseArray<b.s.b.a.s0.v.f$b> r0 = r0.f5628e
            r1 = r11
            java.lang.Object r0 = r0.valueAt(r1)
            b.s.b.a.s0.v.f$b r0 = (p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.C1409b) r0
            b.s.b.a.s0.v.n r0 = r0.f5653b
            r12 = r0
            r0 = r8
            r13 = r0
            r0 = r9
            r14 = r0
            r0 = r12
            boolean r0 = r0.f5724r
            if (r0 == 0) goto L_0x0060
            r0 = r12
            long r0 = r0.f5710d
            r16 = r0
            r0 = r8
            r13 = r0
            r0 = r9
            r14 = r0
            r0 = r16
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0060
            r0 = r5
            android.util.SparseArray<b.s.b.a.s0.v.f$b> r0 = r0.f5628e
            r1 = r11
            java.lang.Object r0 = r0.valueAt(r1)
            b.s.b.a.s0.v.f$b r0 = (p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.C1409b) r0
            r13 = r0
            r0 = r16
            r14 = r0
        L_0x0060:
            int r11 = r11 + 1
            r0 = r13
            r8 = r0
            r0 = r14
            r9 = r0
            goto L_0x0012
        L_0x006d:
            r0 = r8
            if (r0 != 0) goto L_0x0077
            r0 = r5
            r1 = 3
            r0.f5639p = r1
            return
        L_0x0077:
            r0 = r9
            r1 = r6
            long r1 = r1.getPosition()
            long r0 = r0 - r1
            int r0 = (int) r0
            r11 = r0
            r0 = r11
            if (r0 < 0) goto L_0x0099
            r0 = r6
            r1 = r11
            r0.mo33613c(r1)
            r0 = r8
            b.s.b.a.s0.v.n r0 = r0.f5653b
            r1 = r6
            r0.m33365a(r1)
            return
        L_0x0099:
            androidx.media2.exoplayer.external.ParserException r0 = new androidx.media2.exoplayer.external.ParserException
            r1 = r0
            java.lang.String r2 = "Offset to encryption data was negative."
            r1.<init>(r2)
            r6 = r0
            goto L_0x00a9
        L_0x00a7:
            r0 = r6
            throw r0
        L_0x00a9:
            goto L_0x00a7
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33420d(b.s.b.a.s0.h):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [b.s.b.a.a1.z] */
    /* JADX WARN: Type inference failed for: r0v9, types: [b.s.b.a.s0.q] */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [b.s.b.a.s0.v.f] */
    /* JADX WARN: Unknown variable types count: 4 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m33419e(p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r9) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 903
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p091v.C1407f.m33419e(b.s.b.a.s0.h):boolean");
    }
}
