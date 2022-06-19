package p193e.p194a.p947k.p969c;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1577m.p1578a.p1596c.AbstractC24196c0;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.p1599d1.C24251c;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24486g;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24539r;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24547t;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24748r;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24713g;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24718l;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24719m;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24730s;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24731t;
import p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24733v;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24792q;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p947k.p968b.C15932g;
import p193e.p194a.p947k.p968b.C15933h;
import p193e.p194a.p947k.p969c.AbstractC16077t;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.n;
import q3.a.o;
import q3.a.p1;
import q3.a.w2.v;
import q3.a.w2.x;
import q3.a.x2.a0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.c.r */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/r.class */
public final class C16049r implements AbstractC16044q {

    /* renamed from: a */
    public final g f45242a = C25225a.m3978P1(new C16055f());

    /* renamed from: b */
    public final g f45243b = C25225a.m3978P1(new C16050a());

    /* renamed from: c */
    public final g f45244c = C25225a.m3978P1(new C16051b());

    /* renamed from: d */
    public final g f45245d = C25225a.m3978P1(new C16054e());

    /* renamed from: e */
    public final f f45246e;

    /* renamed from: f */
    public final Context f45247f;

    /* renamed from: g */
    public final AbstractC16076s1 f45248g;

    /* renamed from: h */
    public final C15933h f45249h;

    /* renamed from: e.a.k.c.r$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$a.class */
    public static final class C16050a extends m implements a<C24733v> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16050a() {
            super(0);
            C16049r.this = r4;
        }

        public Object invoke() {
            C15942a c15942a = (C15942a) C16049r.this.f45248g;
            Objects.requireNonNull(c15942a);
            return new C24733v(new File(c15942a.f44950d.getCacheDir(), "VideoCallerId/VideoCache"), new C24731t(52428800L), (C24251c) C16049r.this.f45242a.getValue());
        }
    }

    /* renamed from: e.a.k.c.r$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$b.class */
    public static final class C16051b extends m implements a<C24713g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16051b() {
            super(0);
            C16049r.this = r4;
        }

        public Object invoke() {
            return new C24713g(C16049r.m17951l(C16049r.this), new C24748r(C16049r.this.f45247f, "truecaller", null));
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$clearCache$2", f = "ExoPlayerUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.r$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$c.class */
    public static final class C16052c extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16052c(d dVar) {
            super(2, dVar);
            C16049r.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17950i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16052c(dVar);
        }

        /* renamed from: k */
        public final Object m17949k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16049r c16049r = C16049r.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            Set<String> m4696p = C16049r.m17951l(c16049r).m4696p();
            l.d(m4696p, "cache.keys");
            for (String str : m4696p) {
                C24719m.m4746d(C16049r.m17951l(c16049r), str);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m17948s(Object obj) {
            C25225a.m3932a3(obj);
            Set<String> m4696p = C16049r.m17951l(C16049r.this).m4696p();
            l.d(m4696p, "cache.keys");
            for (String str : m4696p) {
                C24719m.m4746d(C16049r.m17951l(C16049r.this), str);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$deleteCache$2", f = "ExoPlayerUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.r$d */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$d.class */
    public static final class C16053d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f45254f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16053d(String str, d dVar) {
            super(2, dVar);
            C16049r.this = r5;
            this.f45254f = str;
        }

        /* renamed from: i */
        public final d<s> m17947i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16053d(this.f45254f, dVar);
        }

        /* renamed from: k */
        public final Object m17946k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16049r c16049r = C16049r.this;
            String str = this.f45254f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C24733v m17951l = C16049r.m17951l(c16049r);
            Uri parse = Uri.parse(str);
            int i = C24719m.f69272a;
            C24719m.m4746d(m17951l, parse.toString());
            return sVar;
        }

        /* renamed from: s */
        public final Object m17945s(Object obj) {
            C25225a.m3932a3(obj);
            C24733v m17951l = C16049r.m17951l(C16049r.this);
            Uri parse = Uri.parse(this.f45254f);
            int i = C24719m.f69272a;
            C24719m.m4746d(m17951l, parse.toString());
            return s.a;
        }
    }

    /* renamed from: e.a.k.c.r$e */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$e.class */
    public static final class C16054e extends m implements a<C24486g> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16054e() {
            super(0);
            C16049r.this = r4;
        }

        public Object invoke() {
            C16049r c16049r = C16049r.this;
            return new C24486g(c16049r.f45247f, (C24251c) c16049r.f45242a.getValue(), C16049r.m17951l(C16049r.this), (C24713g) C16049r.this.f45244c.getValue());
        }
    }

    /* renamed from: e.a.k.c.r$f */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$f.class */
    public static final class C16055f extends m implements a<C24251c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16055f() {
            super(0);
            C16049r.this = r4;
        }

        public Object invoke() {
            return new C24251c(C16049r.this.f45247f);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$getAllCachedVideoInfos$2", f = "ExoPlayerUtil.kt", l = {211}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.r$g */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$g.class */
    public static final class C16056g extends i implements p<i0, d<? super List<? extends C15986g>>, Object> {

        /* renamed from: e */
        public Object f45257e;

        /* renamed from: f */
        public Object f45258f;

        /* renamed from: g */
        public int f45259g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16056g(d dVar) {
            super(2, dVar);
            C16049r.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17944i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16056g(dVar);
        }

        /* renamed from: k */
        public final Object m17943k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16056g(dVar).m17942s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00fa  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00ba -> B:17:0x00d3). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m17942s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16049r.C16056g.m17942s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$getCachedVideoFileInfo$2", f = "ExoPlayerUtil.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.r$h */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$h.class */
    public static final class C16057h extends i implements p<i0, d<? super C15986g>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f45262f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16057h(String str, d dVar) {
            super(2, dVar);
            C16049r.this = r5;
            this.f45262f = str;
        }

        /* renamed from: i */
        public final d<s> m17941i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16057h(this.f45262f, dVar);
        }

        /* renamed from: k */
        public final Object m17940k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16057h(this.f45262f, dVar).m17939s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v66 */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r0v9 */
        /* renamed from: s */
        public final Object m17939s(Object obj) {
            char c;
            C15986g c15986g;
            C25225a.m3932a3(obj);
            NavigableSet<C24718l> mo4701k = C16049r.m17951l(C16049r.this).mo4701k(this.f45262f);
            l.d(mo4701k, "cache\n            .getCachedSpans(url)");
            Iterator it = mo4701k.iterator();
            ?? r0 = 0;
            while (true) {
                c = r0;
                if (!it.hasNext()) {
                    break;
                }
                r0 = c + new Long(((C24718l) it.next()).f69268c).longValue();
            }
            Long l = new Long(c);
            if (!Boolean.valueOf(l.longValue() > 0).booleanValue()) {
                l = null;
            }
            if (l != null) {
                long longValue = l.longValue();
                long m4719b = ((C24730s) C16049r.m17951l(C16049r.this).mo4711a(this.f45262f)).m4719b("exo_len", -1);
                C15986g c15986g2 = new C15986g(this.f45262f, longValue, m4719b);
                C15933h c15933h = C16049r.this.f45249h;
                Objects.requireNonNull(c15933h);
                l.e(c15986g2, "videoFileInfo");
                if (!c15933h.f44927b.contains("debugVideoDownloadPercentage")) {
                    c15986g = c15986g2;
                } else {
                    int i = c15933h.f44927b.getInt("debugVideoDownloadPercentage", 100);
                    c15986g = c15986g2;
                    if (c15986g2.m18039a() > i) {
                        long m3997K2 = C25225a.m3997K2((i / 100.0d) * m4719b);
                        String str = c15986g2.f45067a;
                        long j = c15986g2.f45069c;
                        l.e(str, "url");
                        c15986g = new C15986g(str, m3997K2, j);
                    }
                }
                return c15986g;
            }
            return null;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$getPlayerEvents$1", f = "ExoPlayerUtil.kt", l = {245}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.r$i */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$i.class */
    public static final class C16058i extends i implements p<x<? super AbstractC16077t>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f45263e;

        /* renamed from: f */
        public int f45264f;

        /* renamed from: h */
        public final /* synthetic */ AbstractC24196c0 f45266h;

        /* renamed from: e.a.k.c.r$i$a */
        /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$i$a.class */
        public static final class C16059a extends m implements a<s> {

            /* renamed from: c */
            public final /* synthetic */ C16060b f45268c;

            /* renamed from: d */
            public final /* synthetic */ p1 f45269d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C16059a(C16060b c16060b, p1 p1Var) {
                super(0);
                C16058i.this = r4;
                this.f45268c = c16060b;
                this.f45269d = p1Var;
            }

            public Object invoke() {
                C16058i.this.f45266h.removeListener(this.f45268c);
                p1 p1Var = this.f45269d;
                if (p1Var != null) {
                    s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
                }
                return s.a;
            }
        }

        /* renamed from: e.a.k.c.r$i$b */
        /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$i$b.class */
        public static final class C16060b implements AbstractC24760q0.AbstractC24762b {

            /* renamed from: a */
            public final /* synthetic */ x f45270a;

            public C16060b(x<? super AbstractC16077t> xVar) {
                this.f45270a = xVar;
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: A0 */
            public /* synthetic */ void mo4655A0() {
                C24811r0.m4490i(this);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: G5 */
            public void mo4654G5(boolean z, int i) {
                AbstractC16077t.C16080c c16080c = AbstractC16077t.C16080c.f45315a;
                if (i == 1) {
                    C19291g.m13534l1(this.f45270a, c16080c);
                } else if (i == 2) {
                    C19291g.m13534l1(this.f45270a, AbstractC16077t.C16078a.f45313a);
                } else if (i == 3) {
                    C19291g.m13534l1(this.f45270a, AbstractC16077t.C16082e.f45317a);
                } else if (i != 4) {
                } else {
                    C19291g.m13534l1(this.f45270a, c16080c);
                }
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: N7 */
            public /* synthetic */ void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
                C24811r0.m4488k(this, abstractC24861y0, i);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: Pi */
            public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
                C24811r0.m4487l(this, abstractC24861y0, obj, i);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: S8 */
            public /* synthetic */ void mo4651S8(boolean z) {
                C24811r0.m4489j(this, z);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: Xl */
            public void mo4650Xl(boolean z) {
                if (z) {
                    C19291g.m13534l1(this.f45270a, AbstractC16077t.C16081d.f45316a);
                }
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: Zl */
            public /* synthetic */ void mo4649Zl(int i) {
                C24811r0.m4495d(this, i);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: fs */
            public /* synthetic */ void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
                C24811r0.m4486m(this, trackGroupArray, c24648g);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: h5 */
            public /* synthetic */ void mo4647h5(int i) {
                C24811r0.m4492g(this, i);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: hy */
            public /* synthetic */ void mo4646hy(int i) {
                C24811r0.m4491h(this, i);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: rs */
            public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
                C24811r0.m4496c(this, c24652o0);
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: tf */
            public void mo4644tf(C24189b0 c24189b0) {
                l.e(c24189b0, "ex");
                C19291g.m13534l1(this.f45270a, new AbstractC16077t.C16079b(c24189b0));
            }

            @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
            /* renamed from: w1 */
            public /* synthetic */ void mo4643w1(boolean z) {
                C24811r0.m4497b(this, z);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16058i(AbstractC24196c0 abstractC24196c0, d dVar) {
            super(2, dVar);
            C16049r.this = r5;
            this.f45266h = abstractC24196c0;
        }

        /* renamed from: i */
        public final d<s> m17938i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C16058i c16058i = new C16058i(this.f45266h, dVar);
            c16058i.f45263e = obj;
            return c16058i;
        }

        /* renamed from: k */
        public final Object m17937k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16058i c16058i = new C16058i(this.f45266h, dVar);
            c16058i.f45263e = obj;
            return c16058i.m17936s(s.a);
        }

        /* renamed from: s */
        public final Object m17936s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45264f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                x xVar = (x) this.f45263e;
                C16060b c16060b = new C16060b(xVar);
                this.f45266h.addListener(c16060b);
                C15933h c15933h = C16049r.this.f45249h;
                AbstractC24196c0 abstractC24196c0 = this.f45266h;
                Objects.requireNonNull(c15933h);
                l.e(xVar, "sendChannel");
                l.e(abstractC24196c0, "player");
                p1 p1Var = null;
                if (c15933h.f44927b.contains("debugVideoDownloadPercentage")) {
                    p1Var = s1.a.a.a.v0.f.d.w2(h1.a, c15933h.f44926a, (j0) null, new C15932g(abstractC24196c0, c15933h.f44927b.getInt("debugVideoDownloadPercentage", 100), xVar, null), 2, (Object) null);
                }
                C16059a c16059a = new C16059a(c16060b, p1Var);
                this.f45264f = 1;
                if (v.a(xVar, c16059a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.k.c.r$j */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$j.class */
    public static final class C16061j implements AbstractC24760q0.AbstractC24762b {

        /* renamed from: a */
        public final /* synthetic */ n f45271a;

        /* renamed from: b */
        public final /* synthetic */ C16049r f45272b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC24196c0 f45273c;

        public C16061j(n nVar, C16049r c16049r, AbstractC24196c0 abstractC24196c0) {
            this.f45271a = nVar;
            this.f45272b = c16049r;
            this.f45273c = abstractC24196c0;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: A0 */
        public /* synthetic */ void mo4655A0() {
            C24811r0.m4490i(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: G5 */
        public /* synthetic */ void mo4654G5(boolean z, int i) {
            C24811r0.m4493f(this, z, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: N7 */
        public /* synthetic */ void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
            C24811r0.m4488k(this, abstractC24861y0, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Pi */
        public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
            C24811r0.m4487l(this, abstractC24861y0, obj, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: S8 */
        public /* synthetic */ void mo4651S8(boolean z) {
            C24811r0.m4489j(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Xl */
        public /* synthetic */ void mo4650Xl(boolean z) {
            C24811r0.m4498a(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Zl */
        public /* synthetic */ void mo4649Zl(int i) {
            C24811r0.m4495d(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: fs */
        public void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
            boolean z;
            l.e(trackGroupArray, "trackGroups");
            l.e(c24648g, "trackSelections");
            Objects.requireNonNull(this.f45272b);
            int i = trackGroupArray.f5003a;
            int i2 = 0;
            loop0: while (true) {
                z = false;
                if (i2 >= i) {
                    break;
                }
                TrackGroup trackGroup = trackGroupArray.f5004b[i2];
                int i3 = trackGroup.f4999a;
                for (int i4 = 0; i4 < i3; i4++) {
                    if (C24792q.m4568f(trackGroup.f5000b[i4].f4847i)) {
                        z = true;
                        break loop0;
                    }
                }
                i2++;
            }
            if (this.f45271a.b()) {
                this.f45271a.c(Boolean.valueOf(z));
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: h5 */
        public /* synthetic */ void mo4647h5(int i) {
            C24811r0.m4492g(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: hy */
        public /* synthetic */ void mo4646hy(int i) {
            C24811r0.m4491h(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: rs */
        public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
            C24811r0.m4496c(this, c24652o0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: tf */
        public /* synthetic */ void mo4644tf(C24189b0 c24189b0) {
            C24811r0.m4494e(this, c24189b0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: w1 */
        public /* synthetic */ void mo4643w1(boolean z) {
            C24811r0.m4497b(this, z);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$setMirrorViewOnFirstFrame$1", f = "ExoPlayerUtil.kt", l = {369}, m = "invokeSuspend")
    /* renamed from: e.a.k.c.r$k */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$k.class */
    public static final class C16062k extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f45274e;

        /* renamed from: g */
        public final /* synthetic */ SimpleExoPlayer f45276g;

        /* renamed from: h */
        public final /* synthetic */ View f45277h;

        /* renamed from: i */
        public final /* synthetic */ boolean f45278i;

        /* renamed from: e.a.k.c.r$k$a */
        /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$k$a.class */
        public static final class C16063a implements q3.a.x2.g<AbstractC16088u> {
            public C16063a() {
                C16062k.this = r4;
            }

            /* renamed from: a */
            public Object m17932a(Object obj, d dVar) {
                AbstractC16088u abstractC16088u = (AbstractC16088u) obj;
                C16062k c16062k = C16062k.this;
                c16062k.f45277h.setScaleX(c16062k.f45278i ? -1.0f : 1.0f);
                return s.a;
            }
        }

        /* renamed from: e.a.k.c.r$k$b */
        /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$k$b.class */
        public static final class C16064b implements q3.a.x2.f<AbstractC16088u> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f45280a;

            /* renamed from: e.a.k.c.r$k$b$a */
            /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$k$b$a.class */
            public static final class C16065a implements q3.a.x2.g<AbstractC16088u> {

                /* renamed from: a */
                public final /* synthetic */ q3.a.x2.g f45281a;

                @e(c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$setMirrorViewOnFirstFrame$1$invokeSuspend$$inlined$filter$1$2", f = "ExoPlayerUtil.kt", l = {135}, m = "emit")
                /* renamed from: e.a.k.c.r$k$b$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/k/c/r$k$b$a$a.class */
                public static final class C16066a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f45282d;

                    /* renamed from: e */
                    public int f45283e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C16066a(d dVar) {
                        super(dVar);
                        C16065a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m17929s(Object obj) {
                        this.f45282d = obj;
                        this.f45283e |= Integer.MIN_VALUE;
                        return C16065a.this.m17930a(null, this);
                    }
                }

                public C16065a(q3.a.x2.g gVar, C16064b c16064b) {
                    this.f45281a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m17930a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        s1.s r0 = s1.s.a
                        r8 = r0
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p947k.p969c.C16049r.C16062k.C16064b.C16065a.C16066a
                        if (r0 == 0) goto L30
                        r0 = r7
                        e.a.k.c.r$k$b$a$a r0 = (p193e.p194a.p947k.p969c.C16049r.C16062k.C16064b.C16065a.C16066a) r0
                        r9 = r0
                        r0 = r9
                        int r0 = r0.f45283e
                        r10 = r0
                        r0 = r10
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L30
                        r0 = r9
                        r1 = r10
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f45283e = r1
                        r0 = r9
                        r7 = r0
                        goto L3a
                    L30:
                        e.a.k.c.r$k$b$a$a r0 = new e.a.k.c.r$k$b$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L3a:
                        r0 = r7
                        java.lang.Object r0 = r0.f45282d
                        r11 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r9 = r0
                        r0 = r7
                        int r0 = r0.f45283e
                        r10 = r0
                        r0 = r10
                        if (r0 == 0) goto L68
                        r0 = r10
                        r1 = 1
                        if (r0 != r1) goto L5e
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto L99
                    L5e:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L68:
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f45281a
                        r11 = r0
                        r0 = r6
                        e.a.k.c.u r0 = (p193e.p194a.p947k.p969c.AbstractC16088u) r0
                        boolean r0 = r0 instanceof p193e.p194a.p947k.p969c.AbstractC16088u.C16089a
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                        boolean r0 = r0.booleanValue()
                        if (r0 == 0) goto L99
                        r0 = r7
                        r1 = 1
                        r0.f45283e = r1
                        r0 = r11
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r9
                        if (r0 != r1) goto L99
                        r0 = r9
                        return r0
                    L99:
                        r0 = r8
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16049r.C16062k.C16064b.C16065a.m17930a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C16064b(q3.a.x2.f fVar) {
                this.f45280a = fVar;
            }

            /* renamed from: c */
            public Object m17931c(q3.a.x2.g gVar, d dVar) {
                Object c = this.f45280a.c(new C16065a(gVar, this), dVar);
                return c == s1.w.j.a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16062k(SimpleExoPlayer simpleExoPlayer, View view, boolean z, d dVar) {
            super(2, dVar);
            C16049r.this = r5;
            this.f45276g = simpleExoPlayer;
            this.f45277h = view;
            this.f45278i = z;
        }

        /* renamed from: i */
        public final d<s> m17935i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16062k(this.f45276g, this.f45277h, this.f45278i, dVar);
        }

        /* renamed from: k */
        public final Object m17934k(Object obj, Object obj2) {
            return m17935i(obj, (d) obj2).m17933s(s.a);
        }

        /* renamed from: s */
        public final Object m17933s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45274e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C16049r c16049r = C16049r.this;
                SimpleExoPlayer simpleExoPlayer = this.f45276g;
                Objects.requireNonNull(c16049r);
                a0 G3 = s1.a.a.a.v0.f.d.G3(new C16064b(s1.a.a.a.v0.f.d.P(new C16069s(simpleExoPlayer, null))), 1);
                C16063a c16063a = new C16063a();
                this.f45274e = 1;
                if (G3.c(c16063a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C16049r(@Named("IO") f fVar, Context context, AbstractC16076s1 abstractC16076s1, C15933h c15933h) {
        l.e(fVar, "ioContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC16076s1, "videoFileUtil");
        l.e(c15933h, "debuggingUtil");
        this.f45246e = fVar;
        this.f45247f = context;
        this.f45248g = abstractC16076s1;
        this.f45249h = c15933h;
    }

    /* renamed from: l */
    public static final C24733v m17951l(C16049r c16049r) {
        return (C24733v) c16049r.f45243b.getValue();
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: a */
    public boolean mo17962a(String str) {
        l.e(str, "url");
        Set<String> m4696p = ((C24733v) this.f45243b.getValue()).m4696p();
        Uri parse = Uri.parse(str);
        int i = C24719m.f69272a;
        return ((HashSet) m4696p).contains(parse.toString());
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: b */
    public Object mo17961b(d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f45246e, new C16052c(null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: c */
    public AbstractC24539r mo17960c() {
        return new C24547t.C24548a((C24713g) this.f45244c.getValue());
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: d */
    public DownloadRequest mo17959d(String str, String str2) {
        l.e(str, "url");
        l.e(str2, "identifier");
        return new DownloadRequest(str2, "progressive", Uri.parse(str), s1.u.s.a, null, null);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: e */
    public Object mo17958e(String str, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f45246e, new C16053d(str, null), dVar);
        return a4 == s1.w.j.a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: f */
    public Object mo17957f(String str, d<? super C15986g> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f45246e, new C16057h(str, null), dVar);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: g */
    public q3.a.x2.f<AbstractC16077t> mo17956g(AbstractC24196c0 abstractC24196c0) {
        l.e(abstractC24196c0, "player");
        return s1.a.a.a.v0.f.d.P(new C16058i(abstractC24196c0, null));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: h */
    public void mo17955h(i0 i0Var, SimpleExoPlayer simpleExoPlayer, View view, boolean z) {
        l.e(i0Var, "scope");
        l.e(simpleExoPlayer, "player");
        l.e(view, ViewAction.VIEW);
        s1.a.a.a.v0.f.d.w2(i0Var, (f) null, j0.d, new C16062k(simpleExoPlayer, view, z, null), 1, (Object) null);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: i */
    public C24486g mo17954i() {
        return (C24486g) this.f45245d.getValue();
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: j */
    public Object mo17953j(AbstractC24196c0 abstractC24196c0, d<? super Boolean> dVar) {
        o oVar = new o(C25225a.m3844s1(dVar), 1);
        oVar.z();
        abstractC24196c0.addListener(new C16061j(oVar, this, abstractC24196c0));
        Object y = oVar.y();
        if (y == s1.w.j.a.a) {
            l.e(dVar, "frame");
        }
        return y;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16044q
    /* renamed from: k */
    public Object mo17952k(d<? super List<C15986g>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f45246e, new C16056g(null), dVar);
    }
}
