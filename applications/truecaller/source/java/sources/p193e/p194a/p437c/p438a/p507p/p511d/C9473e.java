package p193e.p194a.p437c.p438a.p507p.p511d;

import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d;
import p193e.p194a.p437c.p438a.p480j.p482b.C9137f;
import p193e.p194a.p437c.p438a.p480j.p482b.C9139h;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
@e(c = "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel$getQuickFilters$$inlined$flatMapLatest$1", f = "InsightsSmartFeedViewModel.kt", l = {224}, m = "invokeSuspend")
/* renamed from: e.a.c.a.p.d.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/e.class */
public final class C9473e extends i implements q<g<? super C9137f>, C9139h, d<? super s>, Object> {

    /* renamed from: e */
    public int f28735e;

    /* renamed from: f */
    public /* synthetic */ Object f28736f;

    /* renamed from: g */
    public /* synthetic */ Object f28737g;

    /* renamed from: h */
    public final /* synthetic */ InsightsSmartFeedViewModel f28738h;

    /* renamed from: e.a.c.a.p.d.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/e$a.class */
    public static final class C9474a implements f<C9137f> {

        /* renamed from: a */
        public final /* synthetic */ f f28739a;

        /* renamed from: e.a.c.a.p.d.e$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/e$a$a.class */
        public static final class C9475a implements g<List<? extends AbstractC9135d>> {

            /* renamed from: a */
            public final /* synthetic */ g f28740a;

            /* renamed from: e.a.c.a.p.d.e$a$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/e$a$a$a.class */
            public static final class C9476a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f28741d;

                /* renamed from: e */
                public int f28742e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C9476a(d dVar) {
                    super(dVar);
                    C9475a.this = r4;
                }

                /* renamed from: s */
                public final Object m27532s(Object obj) {
                    this.f28741d = obj;
                    this.f28742e |= Integer.MIN_VALUE;
                    return C9475a.this.m27533a(null, this);
                }
            }

            public C9475a(g gVar) {
                this.f28740a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27533a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p507p.p511d.C9473e.C9474a.C9475a.C9476a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.c.a.p.d.e$a$a$a r0 = (p193e.p194a.p437c.p438a.p507p.p511d.C9473e.C9474a.C9475a.C9476a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f28742e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f28742e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.c.a.p.d.e$a$a$a r0 = new e.a.c.a.p.d.e$a$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f28741d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f28742e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5f
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L8b
                L55:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    r1 = r0
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r1.<init>(r2)
                    throw r0
                L5f:
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    r0 = r5
                    q3.a.x2.g r0 = r0.f28740a
                    r10 = r0
                    e.a.c.a.j.b.f r0 = new e.a.c.a.j.b.f
                    r1 = r0
                    r2 = r6
                    java.util.List r2 = (java.util.List) r2
                    r3 = 0
                    r1.<init>(r2, r3)
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f28742e = r1
                    r0 = r10
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r8
                    if (r0 != r1) goto L8b
                    r0 = r8
                    return r0
                L8b:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p507p.p511d.C9473e.C9474a.C9475a.m27533a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C9474a(f fVar) {
            this.f28739a = fVar;
        }

        /* renamed from: c */
        public Object m27534c(g gVar, d dVar) {
            Object c = this.f28739a.c(new C9475a(gVar), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9473e(d dVar, InsightsSmartFeedViewModel insightsSmartFeedViewModel) {
        super(3, dVar);
        this.f28738h = insightsSmartFeedViewModel;
    }

    /* renamed from: h */
    public Object m27536h(Object obj, Object obj2, Object obj3) {
        C9473e c9473e = new C9473e((d) obj3, this.f28738h);
        c9473e.f28736f = (g) obj;
        c9473e.f28737g = obj2;
        return c9473e.m27535s(s.a);
    }

    /* renamed from: s */
    public final Object m27535s(Object obj) {
        a aVar = a.a;
        int i = this.f28735e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f28736f;
            C9474a c9474a = new C9474a(this.f28738h.f12923t.m27874c((C9139h) this.f28737g));
            this.f28735e = 1;
            if (s1.a.a.a.v0.f.d.H0(gVar, c9474a, this) == aVar) {
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
