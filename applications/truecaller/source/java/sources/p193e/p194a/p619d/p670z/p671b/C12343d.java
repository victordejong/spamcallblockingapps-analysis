package p193e.p194a.p619d.p670z.p671b;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$notificationDescriptionFromPeers$$inlined$flatMapLatest$1", f = "CallServicePresenter.kt", l = {227}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/d.class */
public final class C12343d extends i implements q<g<? super String>, Set<? extends AbstractC12020a>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f36041e;

    /* renamed from: f */
    public /* synthetic */ Object f36042f;

    /* renamed from: g */
    public int f36043g;

    /* renamed from: h */
    public final /* synthetic */ C12334c f36044h;

    /* renamed from: e.a.d.z.b.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/d$a.class */
    public static final class C12344a implements f<String> {

        /* renamed from: a */
        public final /* synthetic */ f f36045a;

        /* renamed from: b */
        public final /* synthetic */ C12343d f36046b;

        /* renamed from: e.a.d.z.b.d$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/d$a$a.class */
        public static final class C12345a implements g<AbstractC12022c> {

            /* renamed from: a */
            public final /* synthetic */ g f36047a;

            /* renamed from: b */
            public final /* synthetic */ C12344a f36048b;

            /* renamed from: e.a.d.z.b.d$a$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/d$a$a$a.class */
            public static final class C12346a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f36049d;

                /* renamed from: e */
                public int f36050e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12346a(d dVar) {
                    super(dVar);
                    C12345a.this = r4;
                }

                /* renamed from: s */
                public final Object m23213s(Object obj) {
                    this.f36049d = obj;
                    this.f36050e |= Integer.MIN_VALUE;
                    return C12345a.this.m23214a(null, this);
                }
            }

            public C12345a(g gVar, C12344a c12344a) {
                this.f36047a = gVar;
                this.f36048b = c12344a;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23214a(java.lang.Object r6, s1.w.d r7) {
                /*
                    Method dump skipped, instructions count: 242
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p671b.C12343d.C12344a.C12345a.m23214a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12344a(f fVar, C12343d c12343d) {
            this.f36045a = fVar;
            this.f36046b = c12343d;
        }

        /* renamed from: c */
        public Object m23215c(g gVar, d dVar) {
            Object c = this.f36045a.c(new C12345a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12343d(d dVar, C12334c c12334c) {
        super(3, dVar);
        this.f36044h = c12334c;
    }

    /* renamed from: h */
    public final Object m23217h(Object obj, Object obj2, Object obj3) {
        C12343d c12343d = new C12343d((d) obj3, this.f36044h);
        c12343d.f36041e = (g) obj;
        c12343d.f36042f = obj2;
        return c12343d.m23216s(s.a);
    }

    /* renamed from: s */
    public final Object m23216s(Object obj) {
        a aVar = a.a;
        int i = this.f36043g;
        if (i == 0) {
            C25225a.m3932a3(obj);
            g gVar = (g) this.f36041e;
            Set set = (Set) this.f36042f;
            f c12344a = set.size() == 1 ? new C12344a(((AbstractC12020a) s1.u.i.A(set)).getState(), this) : new k(C12334c.m23242Ij(this.f36044h));
            this.f36043g = 1;
            if (c12344a.c(gVar, this) == aVar) {
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
