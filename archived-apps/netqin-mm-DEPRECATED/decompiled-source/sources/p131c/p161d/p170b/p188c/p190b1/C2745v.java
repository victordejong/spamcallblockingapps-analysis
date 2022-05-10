package p131c.p161d.p170b.p188c.p190b1;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p188c.C2692b0;
import p131c.p161d.p170b.p188c.C2963q0;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2735s;
import p131c.p161d.p170b.p188c.p190b1.AbstractC2740u;
import p131c.p161d.p170b.p188c.p190b1.C2733r;
import p131c.p161d.p170b.p188c.p190b1.C2755y;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2780f;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2821e;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2827j;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2838q;
import p131c.p161d.p170b.p188c.p201f1.C2829k;
import p131c.p161d.p170b.p188c.p201f1.C2839r;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2886i;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p208u0.C3016d;
import p131c.p161d.p170b.p188c.p209v0.AbstractC3023d;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3042g;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3043h;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3044i;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
import p131c.p161d.p170b.p188c.p210w0.C3049n;
/* renamed from: c.d.b.c.b1.v */
/* loaded from: classes-dex2jar.jar:c/d/b/c/b1/v.class */
public final class C2745v implements AbstractC2735s, AbstractC3044i, Loader.AbstractC7201b<C2746a>, Loader.AbstractC7205f, C2755y.AbstractC2757b {

    /* renamed from: M */
    public static final Map<String, String> f9948M = m29164v();

    /* renamed from: N */
    public static final Format f9949N = Format.m18703a("icy", "application/x-icy", Long.MAX_VALUE);

    /* renamed from: A */
    public boolean f9950A;

    /* renamed from: B */
    public boolean f9951B;

    /* renamed from: C */
    public int f9952C;

    /* renamed from: F */
    public boolean f9955F;

    /* renamed from: G */
    public long f9956G;

    /* renamed from: I */
    public boolean f9958I;

    /* renamed from: J */
    public int f9959J;

    /* renamed from: K */
    public boolean f9960K;

    /* renamed from: L */
    public boolean f9961L;

    /* renamed from: a */
    public final Uri f9962a;

    /* renamed from: b */
    public final AbstractC2827j f9963b;

    /* renamed from: c */
    public final AbstractC3023d<?> f9964c;

    /* renamed from: d */
    public final AbstractC2838q f9965d;

    /* renamed from: e */
    public final AbstractC2740u.C2741a f9966e;

    /* renamed from: f */
    public final AbstractC2748c f9967f;

    /* renamed from: g */
    public final AbstractC2821e f9968g;

    /* renamed from: h */
    public final String f9969h;

    /* renamed from: i */
    public final long f9970i;

    /* renamed from: k */
    public final C2747b f9972k;

    /* renamed from: p */
    public AbstractC2735s.AbstractC2736a f9977p;

    /* renamed from: q */
    public AbstractC3050o f9978q;

    /* renamed from: r */
    public IcyHeaders f9979r;

    /* renamed from: u */
    public boolean f9982u;

    /* renamed from: v */
    public boolean f9983v;

    /* renamed from: w */
    public C2749d f9984w;

    /* renamed from: x */
    public boolean f9985x;

    /* renamed from: z */
    public boolean f9987z;

    /* renamed from: j */
    public final Loader f9971j = new Loader("Loader:ProgressiveMediaPeriod");

    /* renamed from: l */
    public final C2886i f9973l = new C2886i();

    /* renamed from: m */
    public final Runnable f9974m = new Runnable() { // from class: c.d.b.c.b1.b
        @Override // java.lang.Runnable
        public final void run() {
            C2745v.this.m29171o();
        }
    };

    /* renamed from: n */
    public final Runnable f9975n = new Runnable() { // from class: c.d.b.c.b1.k
        @Override // java.lang.Runnable
        public final void run() {
            C2745v.this.m29173m();
        }
    };

    /* renamed from: o */
    public final Handler f9976o = new Handler();

    /* renamed from: t */
    public C2751f[] f9981t = new C2751f[0];

    /* renamed from: s */
    public C2755y[] f9980s = new C2755y[0];

    /* renamed from: H */
    public long f9957H = -9223372036854775807L;

    /* renamed from: E */
    public long f9954E = -1;

    /* renamed from: D */
    public long f9953D = -9223372036854775807L;

    /* renamed from: y */
    public int f9986y = 1;

    /* renamed from: c.d.b.c.b1.v$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/v$a.class */
    public final class C2746a implements Loader.AbstractC7204e, C2733r.AbstractC2734a {

        /* renamed from: a */
        public final Uri f9988a;

        /* renamed from: b */
        public final C2839r f9989b;

        /* renamed from: c */
        public final C2747b f9990c;

        /* renamed from: d */
        public final AbstractC3044i f9991d;

        /* renamed from: e */
        public final C2886i f9992e;

        /* renamed from: g */
        public volatile boolean f9994g;

        /* renamed from: i */
        public long f9996i;

        /* renamed from: l */
        public AbstractC3054q f9999l;

        /* renamed from: m */
        public boolean f10000m;

        /* renamed from: f */
        public final C3049n f9993f = new C3049n();

        /* renamed from: h */
        public boolean f9995h = true;

        /* renamed from: k */
        public long f9998k = -1;

        /* renamed from: j */
        public C2829k f9997j = m29163a(0);

        public C2746a(Uri uri, AbstractC2827j jVar, C2747b bVar, AbstractC3044i iVar, C2886i iVar2) {
            this.f9988a = uri;
            this.f9989b = new C2839r(jVar);
            this.f9990c = bVar;
            this.f9991d = iVar;
            this.f9992e = iVar2;
        }

        /* renamed from: a */
        public final C2829k m29163a(long j) {
            return new C2829k(this.f9988a, j, -1L, C2745v.this.f9969h, 6, C2745v.f9948M);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC7204e
        /* renamed from: a */
        public void mo18261a() {
            this.f9994g = true;
        }

        /* renamed from: a */
        public final void m29162a(long j, long j2) {
            this.f9993f.f10989a = j;
            this.f9996i = j2;
            this.f9995h = true;
            this.f10000m = false;
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.C2733r.AbstractC2734a
        /* renamed from: a */
        public void mo29159a(C2904v vVar) {
            long max = !this.f10000m ? this.f9996i : Math.max(C2745v.this.m29177i(), this.f9996i);
            int a = vVar.m28552a();
            AbstractC3054q qVar = this.f9999l;
            C2877e.m28737a(qVar);
            AbstractC3054q qVar2 = qVar;
            qVar2.mo28036a(vVar, a);
            qVar2.mo28037a(max, 1, a, 0, null);
            this.f10000m = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [long] */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v6 */
        /* JADX WARN: Type inference failed for: r7v0, types: [c.d.b.c.b1.r$a, c.d.b.c.b1.v$a] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC7204e
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo18260b() throws java.io.IOException, java.lang.InterruptedException {
            /*
                Method dump skipped, instructions count: 521
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2745v.C2746a.mo18260b():void");
        }
    }

    /* renamed from: c.d.b.c.b1.v$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/v$b.class */
    public static final class C2747b {

        /* renamed from: a */
        public final AbstractC3042g[] f10002a;

        /* renamed from: b */
        public AbstractC3042g f10003b;

        public C2747b(AbstractC3042g[] gVarArr) {
            this.f10002a = gVarArr;
        }

        /* renamed from: a */
        public AbstractC3042g m29154a(AbstractC3043h hVar, AbstractC3044i iVar, Uri uri) throws IOException, InterruptedException {
            AbstractC3042g gVar = this.f10003b;
            if (gVar != null) {
                return gVar;
            }
            AbstractC3042g[] gVarArr = this.f10002a;
            int i = 0;
            if (gVarArr.length == 1) {
                this.f10003b = gVarArr[0];
            } else {
                int length = gVarArr.length;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    AbstractC3042g gVar2 = gVarArr[i];
                    try {
                    } catch (EOFException e) {
                    } catch (Throwable th) {
                        hVar.mo28050c();
                        throw th;
                    }
                    if (gVar2.mo27552a(hVar)) {
                        this.f10003b = gVar2;
                        hVar.mo28050c();
                        break;
                    }
                    continue;
                    hVar.mo28050c();
                    i++;
                }
                if (this.f10003b == null) {
                    throw new UnrecognizedInputFormatException("None of the available extractors (" + C2885h0.m28642b(this.f10002a) + ") could read the stream.", uri);
                }
            }
            this.f10003b.mo27550a(iVar);
            return this.f10003b;
        }

        /* renamed from: a */
        public void m29155a() {
            AbstractC3042g gVar = this.f10003b;
            if (gVar != null) {
                gVar.mo27554a();
                this.f10003b = null;
            }
        }
    }

    /* renamed from: c.d.b.c.b1.v$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/v$c.class */
    public interface AbstractC2748c {
        /* renamed from: a */
        void mo29152a(long j, boolean z, boolean z2);
    }

    /* renamed from: c.d.b.c.b1.v$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/v$d.class */
    public static final class C2749d {

        /* renamed from: a */
        public final AbstractC3050o f10004a;

        /* renamed from: b */
        public final TrackGroupArray f10005b;

        /* renamed from: c */
        public final boolean[] f10006c;

        /* renamed from: d */
        public final boolean[] f10007d;

        /* renamed from: e */
        public final boolean[] f10008e;

        public C2749d(AbstractC3050o oVar, TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.f10004a = oVar;
            this.f10005b = trackGroupArray;
            this.f10006c = zArr;
            int i = trackGroupArray.f22261a;
            this.f10007d = new boolean[i];
            this.f10008e = new boolean[i];
        }
    }

    /* renamed from: c.d.b.c.b1.v$e */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/v$e.class */
    public final class C2750e implements AbstractC2758z {

        /* renamed from: a */
        public final int f10009a;

        public C2750e(int i) {
            this.f10009a = i;
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2758z
        /* renamed from: a */
        public int mo29086a(long j) {
            return C2745v.this.m29208a(this.f10009a, j);
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2758z
        /* renamed from: a */
        public int mo29085a(C2692b0 b0Var, C3016d dVar, boolean z) {
            return C2745v.this.m29207a(this.f10009a, b0Var, dVar, z);
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2758z
        /* renamed from: a */
        public void mo29087a() throws IOException {
            C2745v.this.m29184d(this.f10009a);
        }

        @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2758z
        /* renamed from: b */
        public boolean mo29084b() {
            return C2745v.this.m29209a(this.f10009a);
        }
    }

    /* renamed from: c.d.b.c.b1.v$f */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/b1/v$f.class */
    public static final class C2751f {

        /* renamed from: a */
        public final int f10011a;

        /* renamed from: b */
        public final boolean f10012b;

        public C2751f(int i, boolean z) {
            this.f10011a = i;
            this.f10012b = z;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C2751f.class != obj.getClass()) {
                return false;
            }
            C2751f fVar = (C2751f) obj;
            if (!(this.f10011a == fVar.f10011a && this.f10012b == fVar.f10012b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f10011a * 31) + (this.f10012b ? 1 : 0);
        }
    }

    public C2745v(Uri uri, AbstractC2827j jVar, AbstractC3042g[] gVarArr, AbstractC3023d<?> dVar, AbstractC2838q qVar, AbstractC2740u.C2741a aVar, AbstractC2748c cVar, AbstractC2821e eVar, String str, int i) {
        this.f9962a = uri;
        this.f9963b = jVar;
        this.f9964c = dVar;
        this.f9965d = qVar;
        this.f9966e = aVar;
        this.f9967f = cVar;
        this.f9968g = eVar;
        this.f9969h = str;
        this.f9970i = i;
        this.f9972k = new C2747b(gVarArr);
        aVar.m29236a();
    }

    /* renamed from: v */
    public static Map<String, String> m29164v() {
        HashMap hashMap = new HashMap();
        hashMap.put("Icy-MetaData", "1");
        return Collections.unmodifiableMap(hashMap);
    }

    /* renamed from: a */
    public int m29208a(int i, long j) {
        int i2 = 0;
        if (m29167s()) {
            return 0;
        }
        m29191b(i);
        C2755y yVar = this.f9980s[i];
        if (!this.f9960K || j <= yVar.m29101c()) {
            i2 = yVar.m29115a(j, true, true);
            if (i2 == -1) {
            }
        } else {
            i2 = yVar.m29119a();
        }
        if (i2 == 0) {
            m29188c(i);
        }
        return i2;
    }

    /* renamed from: a */
    public int m29207a(int i, C2692b0 b0Var, C3016d dVar, boolean z) {
        if (m29167s()) {
            return -3;
        }
        m29191b(i);
        int a = this.f9980s[i].m29113a(b0Var, dVar, z, this.f9960K, this.f9956G);
        if (a == -3) {
            m29188c(i);
        }
        return a;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public long mo29210a() {
        return this.f9952C == 0 ? Long.MIN_VALUE : mo29192b();
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public long mo29205a(long j, C2963q0 q0Var) {
        AbstractC3050o oVar = m29176j().f10004a;
        if (!oVar.mo27545b()) {
            return 0L;
        }
        AbstractC3050o.C3051a b = oVar.mo27544b(j);
        return C2885h0.m28681a(j, q0Var, b.f10990a.f10995a, b.f10991b.f10995a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r24v1 */
    /* JADX WARN: Type inference failed for: r24v2, types: [long] */
    /* JADX WARN: Type inference failed for: r24v3 */
    /* JADX WARN: Type inference failed for: r24v4 */
    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public long mo29194a(AbstractC2780f[] fVarArr, boolean[] zArr, AbstractC2758z[] zVarArr, boolean[] zArr2, long j) {
        long j2;
        C2749d j3 = m29176j();
        TrackGroupArray trackGroupArray = j3.f10005b;
        boolean[] zArr3 = j3.f10007d;
        int i = this.f9952C;
        int i2 = 0;
        for (int i3 = 0; i3 < fVarArr.length; i3++) {
            if (zVarArr[i3] != null && (fVarArr[i3] == null || !zArr[i3])) {
                int i4 = ((C2750e) zVarArr[i3]).f10009a;
                C2877e.m28731b(zArr3[i4]);
                this.f9952C--;
                zArr3[i4] = false;
                zVarArr[i3] = null;
            }
        }
        boolean z = !this.f9987z ? j != 0 : i == 0;
        for (int i5 = 0; i5 < fVarArr.length; i5++) {
            z = z;
            if (zVarArr[i5] == null) {
                z = z;
                if (fVarArr[i5] != null) {
                    AbstractC2780f fVar = fVarArr[i5];
                    C2877e.m28731b(fVar.length() == 1);
                    C2877e.m28731b(fVar.mo29026b(0) == 0);
                    int a = trackGroupArray.m18478a(fVar.mo29030a());
                    C2877e.m28731b(!zArr3[a]);
                    this.f9952C++;
                    zArr3[a] = true;
                    zVarArr[i5] = new C2750e(a);
                    zArr2[i5] = true;
                    z = z;
                    if (!z) {
                        C2755y yVar = this.f9980s[a];
                        yVar.m29092l();
                        z = yVar.m29115a(j, true, true) == -1 && yVar.m29100d() != 0;
                    }
                }
            }
        }
        if (this.f9952C == 0) {
            this.f9958I = false;
            this.f9950A = false;
            if (!this.f9971j.m18274d()) {
                C2755y[] yVarArr = this.f9980s;
                int length = yVarArr.length;
                while (true) {
                    j2 = j;
                    if (i2 >= length) {
                        break;
                    }
                    yVarArr[i2].m29093k();
                    i2++;
                }
            } else {
                for (C2755y yVar2 : this.f9980s) {
                    yVar2.m29107b();
                }
                this.f9971j.m18285a();
                j2 = j;
            }
        } else {
            j2 = j;
            if (z) {
                j2 = mo29187c(j);
                for (int i6 = 0; i6 < zVarArr.length; i6++) {
                    if (zVarArr[i6] != null) {
                        zArr2[i6] = true;
                    }
                }
            }
        }
        this.f9987z = true;
        return j2;
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3044i
    /* renamed from: a */
    public AbstractC3054q mo28048a(int i, int i2) {
        return m29197a(new C2751f(i, false));
    }

    /* renamed from: a */
    public final AbstractC3054q m29197a(C2751f fVar) {
        int length = this.f9980s.length;
        for (int i = 0; i < length; i++) {
            if (fVar.equals(this.f9981t[i])) {
                return this.f9980s[i];
            }
        }
        C2755y yVar = new C2755y(this.f9968g, this.f9964c);
        yVar.m29111a(this);
        int i2 = length + 1;
        C2751f[] fVarArr = (C2751f[]) Arrays.copyOf(this.f9981t, i2);
        fVarArr[length] = fVar;
        C2885h0.m28656a((Object[]) fVarArr);
        this.f9981t = fVarArr;
        C2755y[] yVarArr = (C2755y[]) Arrays.copyOf(this.f9980s, i2);
        yVarArr[length] = yVar;
        C2885h0.m28656a((Object[]) yVarArr);
        this.f9980s = yVarArr;
        return yVar;
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public Loader.C7202c mo18272a(C2746a aVar, long j, long j2, IOException iOException, int i) {
        Loader.C7202c cVar;
        m29202a(aVar);
        long a = this.f9965d.mo28895a(this.f9986y, j2, iOException, i);
        if (a == -9223372036854775807L) {
            cVar = Loader.f22539e;
        } else {
            int h = m29178h();
            cVar = m29201a(aVar, h) ? Loader.m18278a(h > this.f9959J, a) : Loader.f22538d;
        }
        this.f9966e.m29220a(aVar.f9997j, aVar.f9989b.m28893b(), aVar.f9989b.m28892c(), 1, -1, null, 0, null, aVar.f9996i, this.f9953D, j, j2, aVar.f9989b.m28894a(), iOException, !cVar.m18270a());
        return cVar;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public void mo29204a(long j, boolean z) {
        if (!m29174l()) {
            boolean[] zArr = m29176j().f10007d;
            int length = this.f9980s.length;
            for (int i = 0; i < length; i++) {
                this.f9980s[i].m29104b(j, z, zArr[i]);
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public void mo29203a(AbstractC2735s.AbstractC2736a aVar, long j) {
        this.f9977p = aVar;
        this.f9973l.m28623d();
        m29168r();
    }

    /* renamed from: a */
    public final void m29202a(C2746a aVar) {
        if (this.f9954E == -1) {
            this.f9954E = aVar.f9998k;
        }
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo18273a(C2746a aVar, long j, long j2) {
        AbstractC3050o oVar;
        if (this.f9953D == -9223372036854775807L && (oVar = this.f9978q) != null) {
            boolean b = oVar.mo27545b();
            long i = m29177i();
            long j3 = i == Long.MIN_VALUE ? 0L : i + 10000;
            this.f9953D = j3;
            this.f9967f.mo29152a(j3, b, this.f9955F);
        }
        this.f9966e.m29215b(aVar.f9997j, aVar.f9989b.m28893b(), aVar.f9989b.m28892c(), 1, -1, null, 0, null, aVar.f9996i, this.f9953D, j, j2, aVar.f9989b.m28894a());
        m29202a(aVar);
        this.f9960K = true;
        AbstractC2735s.AbstractC2736a aVar2 = this.f9977p;
        C2877e.m28737a(aVar2);
        aVar2.mo27404a((AbstractC2735s.AbstractC2736a) this);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo18271a(C2746a aVar, long j, long j2, boolean z) {
        this.f9966e.m29221a(aVar.f9997j, aVar.f9989b.m28893b(), aVar.f9989b.m28892c(), 1, -1, null, 0, null, aVar.f9996i, this.f9953D, j, j2, aVar.f9989b.m28894a());
        if (!z) {
            m29202a(aVar);
            for (C2755y yVar : this.f9980s) {
                yVar.m29093k();
            }
            if (this.f9952C > 0) {
                AbstractC2735s.AbstractC2736a aVar2 = this.f9977p;
                C2877e.m28737a(aVar2);
                aVar2.mo27404a((AbstractC2735s.AbstractC2736a) this);
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3044i
    /* renamed from: a */
    public void mo28047a(AbstractC3050o oVar) {
        if (this.f9979r != null) {
            oVar = new AbstractC3050o.C3052b(-9223372036854775807L);
        }
        this.f9978q = oVar;
        this.f9976o.post(this.f9974m);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.C2755y.AbstractC2757b
    /* renamed from: a */
    public void mo29088a(Format format) {
        this.f9976o.post(this.f9974m);
    }

    /* renamed from: a */
    public boolean m29209a(int i) {
        return !m29167s() && this.f9980s[i].m29108a(this.f9960K);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: a */
    public boolean mo29206a(long j) {
        if (this.f9960K || this.f9971j.m18275c() || this.f9958I) {
            return false;
        }
        if (this.f9983v && this.f9952C == 0) {
            return false;
        }
        boolean d = this.f9973l.m28623d();
        if (!this.f9971j.m18274d()) {
            m29168r();
            d = true;
        }
        return d;
    }

    /* renamed from: a */
    public final boolean m29201a(C2746a aVar, int i) {
        AbstractC3050o oVar;
        if (this.f9954E == -1 && ((oVar = this.f9978q) == null || oVar.mo27543c() == -9223372036854775807L)) {
            if (!this.f9983v || m29167s()) {
                this.f9950A = this.f9983v;
                this.f9956G = 0L;
                this.f9959J = 0;
                for (C2755y yVar : this.f9980s) {
                    yVar.m29093k();
                }
                aVar.m29162a(0L, 0L);
                return true;
            }
            this.f9958I = true;
            return false;
        }
        this.f9959J = i;
        return true;
    }

    /* renamed from: a */
    public final boolean m29193a(boolean[] zArr, long j) {
        int length = this.f9980s.length;
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= length) {
                return true;
            }
            C2755y yVar = this.f9980s[i];
            yVar.m29092l();
            if (yVar.m29115a(j, true, false) == -1) {
                z = false;
            }
            if (!z && (zArr[i] || !this.f9985x)) {
                return false;
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long mo29192b() {
        /*
            r5 = this;
            r0 = r5
            c.d.b.c.b1.v$d r0 = r0.m29176j()
            boolean[] r0 = r0.f10006c
            r6 = r0
            r0 = r5
            boolean r0 = r0.f9960K
            if (r0 == 0) goto L_0x0013
            r0 = -9223372036854775808
            return r0
        L_0x0013:
            r0 = r5
            boolean r0 = r0.m29174l()
            if (r0 == 0) goto L_0x001f
            r0 = r5
            long r0 = r0.f9957H
            return r0
        L_0x001f:
            r0 = r5
            boolean r0 = r0.f9985x
            if (r0 == 0) goto L_0x0070
            r0 = r5
            c.d.b.c.b1.y[] r0 = r0.f9980s
            int r0 = r0.length
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
        L_0x0033:
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0075
            r0 = r9
            r11 = r0
            r0 = r6
            r1 = r8
            r0 = r0[r1]
            if (r0 == 0) goto L_0x0066
            r0 = r9
            r11 = r0
            r0 = r5
            c.d.b.c.b1.y[] r0 = r0.f9980s
            r1 = r8
            r0 = r0[r1]
            boolean r0 = r0.m29097g()
            if (r0 != 0) goto L_0x0066
            r0 = r9
            r1 = r5
            c.d.b.c.b1.y[] r1 = r1.f9980s
            r2 = r8
            r1 = r1[r2]
            long r1 = r1.m29101c()
            long r0 = java.lang.Math.min(r0, r1)
            r11 = r0
        L_0x0066:
            int r8 = r8 + 1
            r0 = r11
            r9 = r0
            goto L_0x0033
        L_0x0070:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r11 = r0
        L_0x0075:
            r0 = r11
            r9 = r0
            r0 = r11
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0088
            r0 = r5
            long r0 = r0.m29177i()
            r9 = r0
        L_0x0088:
            r0 = r9
            r11 = r0
            r0 = r9
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x009b
            r0 = r5
            long r0 = r0.f9956G
            r11 = r0
        L_0x009b:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2745v.mo29192b():long");
    }

    /* renamed from: b */
    public final void m29191b(int i) {
        C2749d j = m29176j();
        boolean[] zArr = j.f10008e;
        if (!zArr[i]) {
            Format a = j.f10005b.m18479a(i).m18482a(0);
            this.f9966e.m29234a(C2897r.m28584f(a.f21952i), a, 0, (Object) null, this.f9956G);
            zArr[i] = true;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: b */
    public void mo29190b(long j) {
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: c */
    public long mo29187c(long j) {
        C2749d j2 = m29176j();
        AbstractC3050o oVar = j2.f10004a;
        boolean[] zArr = j2.f10006c;
        if (!oVar.mo27545b()) {
            j = 0;
        }
        this.f9950A = false;
        this.f9956G = j;
        if (m29174l()) {
            this.f9957H = j;
            return j;
        } else if (this.f9986y != 7 && m29193a(zArr, j)) {
            return j;
        } else {
            this.f9958I = false;
            this.f9957H = j;
            this.f9960K = false;
            if (this.f9971j.m18274d()) {
                this.f9971j.m18285a();
            } else {
                this.f9971j.m18277b();
                for (C2755y yVar : this.f9980s) {
                    yVar.m29093k();
                }
            }
            return j;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.AbstractC7205f
    /* renamed from: c */
    public void mo18259c() {
        for (C2755y yVar : this.f9980s) {
            yVar.m29094j();
        }
        this.f9972k.m29155a();
    }

    /* renamed from: c */
    public final void m29188c(int i) {
        boolean[] zArr = m29176j().f10006c;
        if (this.f9958I && zArr[i]) {
            C2755y yVar = this.f9980s[i];
            if (!yVar.m29108a(false)) {
                this.f9957H = 0L;
                this.f9958I = false;
                this.f9950A = true;
                this.f9956G = 0L;
                this.f9959J = 0;
                for (C2755y yVar2 : this.f9980s) {
                    yVar2.m29093k();
                }
                AbstractC2735s.AbstractC2736a aVar = this.f9977p;
                C2877e.m28737a(aVar);
                aVar.mo27404a((AbstractC2735s.AbstractC2736a) this);
            }
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: d */
    public void mo29185d() throws IOException {
        m29170p();
        if (this.f9960K && !this.f9983v) {
            throw new ParserException("Loading finished before preparation is complete.");
        }
    }

    /* renamed from: d */
    public void m29184d(int i) throws IOException {
        this.f9980s[i].m29096h();
        m29170p();
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3044i
    /* renamed from: e */
    public void mo28046e() {
        this.f9982u = true;
        this.f9976o.post(this.f9974m);
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: f */
    public long mo29181f() {
        if (!this.f9951B) {
            this.f9966e.m29214c();
            this.f9951B = true;
        }
        if (!this.f9950A) {
            return -9223372036854775807L;
        }
        if (!this.f9960K && m29178h() <= this.f9959J) {
            return -9223372036854775807L;
        }
        this.f9950A = false;
        return this.f9956G;
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: g */
    public TrackGroupArray mo29179g() {
        return m29176j().f10005b;
    }

    /* renamed from: h */
    public final int m29178h() {
        int i = 0;
        for (C2755y yVar : this.f9980s) {
            i += yVar.m29098f();
        }
        return i;
    }

    /* renamed from: i */
    public final long m29177i() {
        long j = Long.MIN_VALUE;
        for (C2755y yVar : this.f9980s) {
            j = Math.max(j, yVar.m29101c());
        }
        return j;
    }

    /* renamed from: j */
    public final C2749d m29176j() {
        C2749d dVar = this.f9984w;
        C2877e.m28737a(dVar);
        return dVar;
    }

    /* renamed from: k */
    public AbstractC3054q m29175k() {
        return m29197a(new C2751f(0, true));
    }

    /* renamed from: l */
    public final boolean m29174l() {
        return this.f9957H != -9223372036854775807L;
    }

    /* renamed from: m */
    public /* synthetic */ void m29173m() {
        if (!this.f9961L) {
            AbstractC2735s.AbstractC2736a aVar = this.f9977p;
            C2877e.m28737a(aVar);
            aVar.mo27404a((AbstractC2735s.AbstractC2736a) this);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p190b1.AbstractC2735s
    /* renamed from: n */
    public boolean mo29172n() {
        return this.f9971j.m18274d() && this.f9973l.m28624c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d5, code lost:
        if (r9.f9981t[r14].f10012b != false) goto L_0x00d8;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m29171o() {
        /*
            Method dump skipped, instructions count: 471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p190b1.C2745v.m29171o():void");
    }

    /* renamed from: p */
    public void m29170p() throws IOException {
        this.f9971j.m18284a(this.f9965d.mo28896a(this.f9986y));
    }

    /* renamed from: q */
    public void m29169q() {
        if (this.f9983v) {
            for (C2755y yVar : this.f9980s) {
                yVar.m29095i();
            }
        }
        this.f9971j.m18282a(this);
        this.f9976o.removeCallbacksAndMessages(null);
        this.f9977p = null;
        this.f9961L = true;
        this.f9966e.m29219b();
    }

    /* renamed from: r */
    public final void m29168r() {
        C2746a aVar = new C2746a(this.f9962a, this.f9963b, this.f9972k, this, this.f9973l);
        if (this.f9983v) {
            AbstractC3050o oVar = m29176j().f10004a;
            C2877e.m28731b(m29174l());
            long j = this.f9953D;
            if (j == -9223372036854775807L || this.f9957H <= j) {
                aVar.m29162a(oVar.mo27544b(this.f9957H).f10990a.f10996b, this.f9957H);
                this.f9957H = -9223372036854775807L;
            } else {
                this.f9960K = true;
                this.f9957H = -9223372036854775807L;
                return;
            }
        }
        this.f9959J = m29178h();
        this.f9966e.m29222a(aVar.f9997j, 1, -1, null, 0, null, aVar.f9996i, this.f9953D, this.f9971j.m18283a(aVar, this, this.f9965d.mo28896a(this.f9986y)));
    }

    /* renamed from: s */
    public final boolean m29167s() {
        return this.f9950A || m29174l();
    }
}
