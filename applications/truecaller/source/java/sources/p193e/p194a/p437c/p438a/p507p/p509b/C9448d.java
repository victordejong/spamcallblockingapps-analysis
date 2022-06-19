package p193e.p194a.p437c.p438a.p507p.p509b;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1909z.C27555b2;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1075n3.p1076a.C18481d;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import p193e.p194a.p437c.p610y.C10889m;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.l;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
/* renamed from: e.a.c.a.p.b.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/b/d.class */
public final class C9448d implements f<C27555b2<C10889m>> {

    /* renamed from: a */
    public final /* synthetic */ f f28670a;

    /* renamed from: b */
    public final /* synthetic */ C9456g f28671b;

    /* renamed from: c */
    public final /* synthetic */ Set f28672c;

    /* renamed from: e.a.c.a.p.b.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/b/d$a.class */
    public static final class C9449a implements g<C27555b2<l<? extends C10889m>>> {

        /* renamed from: a */
        public final /* synthetic */ g f28673a;

        /* renamed from: b */
        public final /* synthetic */ C9456g f28674b;

        /* renamed from: c */
        public final /* synthetic */ Set f28675c;

        @e(c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$mapToInsightsSmartFeed$$inlined$map$1$2", f = "GetInsightsSmartFeedUseCase.kt", l = {137}, m = "emit")
        /* renamed from: e.a.c.a.p.b.d$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/b/d$a$a.class */
        public static final class C9450a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f28676d;

            /* renamed from: e */
            public int f28677e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9450a(d dVar) {
                super(dVar);
                C9449a.this = r4;
            }

            /* renamed from: s */
            public final Object m27555s(Object obj) {
                this.f28676d = obj;
                this.f28677e |= Integer.MIN_VALUE;
                return C9449a.this.m27556a(null, this);
            }
        }

        @e(c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$mapToInsightsSmartFeed$1$1", f = "GetInsightsSmartFeedUseCase.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.p.b.d$a$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/b/d$a$b.class */
        public static final class C9451b extends i implements p<l<? extends C10889m>, d<? super C10889m>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f28679e;

            /* renamed from: f */
            public final /* synthetic */ C9449a f28680f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9451b(d dVar, C9449a c9449a) {
                super(2, dVar);
                this.f28680f = c9449a;
            }

            /* renamed from: i */
            public final d<s> m27554i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                C9451b c9451b = new C9451b(dVar, this.f28680f);
                c9451b.f28679e = ((l) obj).a;
                return c9451b;
            }

            /* renamed from: k */
            public final Object m27553k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                C9449a c9449a = this.f28680f;
                dVar.getContext();
                Object obj3 = ((l) obj).a;
                C25225a.m3932a3(s.a);
                Throwable a = l.a(obj3);
                SimpleDateFormat simpleDateFormat = C10263b.f30411a;
                if (a != null) {
                    C10480a.m26061I1(a);
                    C18481d c18481d = C10263b.f30412b;
                    if (c18481d != null) {
                        StringBuilder sb = new StringBuilder(C10263b.f30411a.format(new Date()) + ": ");
                        sb.append(C25225a.m3945X2(a));
                        c18481d.f52172a.add(sb.toString());
                    }
                }
                if (obj3 instanceof l.a) {
                    obj3 = null;
                }
                C10889m c10889m = (C10889m) obj3;
                C10889m c10889m2 = null;
                if (c10889m != null) {
                    C9456g c9456g = c9449a.f28674b;
                    Set set = c9449a.f28675c;
                    Objects.requireNonNull(c9456g);
                    boolean z = true;
                    if (!set.isEmpty()) {
                        z = set.contains(new AbstractC10836e.C10839c(c10889m.f32340g));
                    }
                    c10889m2 = null;
                    if (z) {
                        c10889m2 = c10889m;
                    }
                }
                return c10889m2;
            }

            /* renamed from: s */
            public final Object m27552s(Object obj) {
                C25225a.m3932a3(obj);
                Object obj2 = this.f28679e;
                Throwable a = l.a(obj2);
                SimpleDateFormat simpleDateFormat = C10263b.f30411a;
                if (a != null) {
                    C10480a.m26061I1(a);
                    C18481d c18481d = C10263b.f30412b;
                    if (c18481d != null) {
                        StringBuilder sb = new StringBuilder(C10263b.f30411a.format(new Date()) + ": ");
                        sb.append(C25225a.m3945X2(a));
                        c18481d.f52172a.add(sb.toString());
                    }
                }
                if (obj2 instanceof l.a) {
                    obj2 = null;
                }
                C10889m c10889m = (C10889m) obj2;
                C10889m c10889m2 = null;
                if (c10889m != null) {
                    C9449a c9449a = this.f28680f;
                    C9456g c9456g = c9449a.f28674b;
                    Set set = c9449a.f28675c;
                    Objects.requireNonNull(c9456g);
                    boolean z = true;
                    if (!set.isEmpty()) {
                        z = set.contains(new AbstractC10836e.C10839c(c10889m.f32340g));
                    }
                    c10889m2 = null;
                    if (z) {
                        c10889m2 = c10889m;
                    }
                }
                return c10889m2;
            }
        }

        public C9449a(g gVar, C9456g c9456g, Set set) {
            this.f28673a = gVar;
            this.f28674b = c9456g;
            this.f28675c = set;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m27556a(java.lang.Object r8, s1.w.d r9) {
            /*
                Method dump skipped, instructions count: 209
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p507p.p509b.C9448d.C9449a.m27556a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C9448d(f fVar, C9456g c9456g, Set set) {
        this.f28670a = fVar;
        this.f28671b = c9456g;
        this.f28672c = set;
    }

    /* renamed from: c */
    public Object m27557c(g gVar, d dVar) {
        Object c = this.f28670a.c(new C9449a(gVar, this.f28671b, this.f28672c), dVar);
        return c == a.a ? c : s.a;
    }
}
