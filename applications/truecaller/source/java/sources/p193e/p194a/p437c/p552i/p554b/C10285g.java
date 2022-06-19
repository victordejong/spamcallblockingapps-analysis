package p193e.p194a.p437c.p552i.p554b;

import e.q.f.a.f.e;
import java.io.InputStream;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p531c0.AbstractC10026m;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.n0;
import s1.g;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.i.b.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g.class */
public final class C10285g extends AbstractC10280e implements e {

    /* renamed from: e */
    public final g f30481e = C25225a.m3978P1(new C10286a());

    /* renamed from: f */
    public final String f30482f;

    /* renamed from: g */
    public String f30483g;

    /* renamed from: h */
    public String f30484h;

    /* renamed from: i */
    public String f30485i;

    /* renamed from: j */
    public String f30486j;

    /* renamed from: k */
    public String f30487k;

    /* renamed from: l */
    public String f30488l;

    /* renamed from: m */
    public String f30489m;

    /* renamed from: n */
    public String f30490n;

    /* renamed from: o */
    public String f30491o;

    /* renamed from: p */
    public String f30492p;

    /* renamed from: q */
    public String f30493q;

    /* renamed from: r */
    public String f30494r;

    /* renamed from: s */
    public String f30495s;

    /* renamed from: t */
    public final List<n0<k<String, String>>> f30496t;

    /* renamed from: u */
    public final AbstractC10026m f30497u;

    /* renamed from: v */
    public final f f30498v;

    /* renamed from: w */
    public final AbstractC9686e f30499w;

    /* renamed from: e.a.c.i.b.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$a.class */
    public static final class C10286a extends m implements a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10286a() {
            super(0);
            C10285g.this = r4;
        }

        public Object invoke() {
            return C10285g.this.f30499w.mo27306g();
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$10", f = "MalanaSeed.kt", l = {196}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$b.class */
    public static final class C10287b extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30501e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30502f;

        /* renamed from: g */
        public final /* synthetic */ d f30503g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10287b(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30502f = c10285g;
            this.f30503g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26452i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10287b(dVar, this.f30502f, this.f30503g);
        }

        /* renamed from: k */
        public final Object m26451k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10287b(dVar, this.f30502f, this.f30503g).m26450s(s.a);
        }

        /* renamed from: s */
        public final Object m26450s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30501e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30502f;
                this.f30501e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("vendorSeed/vendor_banks.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$11", f = "MalanaSeed.kt", l = {197}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$c.class */
    public static final class C10288c extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30504e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30505f;

        /* renamed from: g */
        public final /* synthetic */ d f30506g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10288c(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30505f = c10285g;
            this.f30506g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26449i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10288c(dVar, this.f30505f, this.f30506g);
        }

        /* renamed from: k */
        public final Object m26448k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10288c(dVar, this.f30505f, this.f30506g).m26447s(s.a);
        }

        /* renamed from: s */
        public final Object m26447s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30504e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30505f;
                this.f30504e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("vendorSeed/vendor_brands.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$12", f = "MalanaSeed.kt", l = {198}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$d.class */
    public static final class C10289d extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30507e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30508f;

        /* renamed from: g */
        public final /* synthetic */ d f30509g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10289d(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30508f = c10285g;
            this.f30509g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26446i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10289d(dVar, this.f30508f, this.f30509g);
        }

        /* renamed from: k */
        public final Object m26445k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10289d(dVar, this.f30508f, this.f30509g).m26444s(s.a);
        }

        /* renamed from: s */
        public final Object m26444s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30507e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30508f;
                this.f30507e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("vendorSeed/vendor_seed.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$13", f = "MalanaSeed.kt", l = {199}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$e.class */
    public static final class C10290e extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30510e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30511f;

        /* renamed from: g */
        public final /* synthetic */ d f30512g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10290e(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30511f = c10285g;
            this.f30512g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26443i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10290e(dVar, this.f30511f, this.f30512g);
        }

        /* renamed from: k */
        public final Object m26442k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10290e(dVar, this.f30511f, this.f30512g).m26441s(s.a);
        }

        /* renamed from: s */
        public final Object m26441s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30510e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30511f;
                this.f30510e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("malanaSeed/location.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$1", f = "MalanaSeed.kt", l = {187}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$f */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$f.class */
    public static final class C10291f extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30513e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30514f;

        /* renamed from: g */
        public final /* synthetic */ d f30515g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10291f(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30514f = c10285g;
            this.f30515g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26440i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10291f(dVar, this.f30514f, this.f30515g);
        }

        /* renamed from: k */
        public final Object m26439k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10291f(dVar, this.f30514f, this.f30515g).m26438s(s.a);
        }

        /* renamed from: s */
        public final Object m26438s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30513e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30514f;
                this.f30513e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("malanaSeed/addr.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$2", f = "MalanaSeed.kt", l = {188}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$g */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$g.class */
    public static final class C10292g extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30516e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30517f;

        /* renamed from: g */
        public final /* synthetic */ d f30518g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10292g(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30517f = c10285g;
            this.f30518g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26437i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10292g(dVar, this.f30517f, this.f30518g);
        }

        /* renamed from: k */
        public final Object m26436k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10292g(dVar, this.f30517f, this.f30518g).m26435s(s.a);
        }

        /* renamed from: s */
        public final Object m26435s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30516e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30517f;
                this.f30516e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("malanaSeed/airport.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$3", f = "MalanaSeed.kt", l = {189}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$h */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$h.class */
    public static final class C10293h extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30519e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30520f;

        /* renamed from: g */
        public final /* synthetic */ d f30521g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10293h(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30520f = c10285g;
            this.f30521g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26434i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10293h(dVar, this.f30520f, this.f30521g);
        }

        /* renamed from: k */
        public final Object m26433k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10293h(dVar, this.f30520f, this.f30521g).m26432s(s.a);
        }

        /* renamed from: s */
        public final Object m26432s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30519e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30520f;
                this.f30519e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("malanaSeed/bank.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$4", f = "MalanaSeed.kt", l = {190}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$i */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$i.class */
    public static final class C10294i extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30522e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30523f;

        /* renamed from: g */
        public final /* synthetic */ d f30524g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10294i(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30523f = c10285g;
            this.f30524g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26431i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10294i(dVar, this.f30523f, this.f30524g);
        }

        /* renamed from: k */
        public final Object m26430k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10294i(dVar, this.f30523f, this.f30524g).m26429s(s.a);
        }

        /* renamed from: s */
        public final Object m26429s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30522e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30523f;
                this.f30522e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("malanaSeed/config.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$5", f = "MalanaSeed.kt", l = {191}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$j */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$j.class */
    public static final class C10295j extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30525e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30526f;

        /* renamed from: g */
        public final /* synthetic */ d f30527g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10295j(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30526f = c10285g;
            this.f30527g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26428i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10295j(dVar, this.f30526f, this.f30527g);
        }

        /* renamed from: k */
        public final Object m26427k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10295j(dVar, this.f30526f, this.f30527g).m26426s(s.a);
        }

        /* renamed from: s */
        public final Object m26426s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30525e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30526f;
                this.f30525e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("malanaSeed/offers.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$6", f = "MalanaSeed.kt", l = {192}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$k */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$k.class */
    public static final class C10296k extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30528e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30529f;

        /* renamed from: g */
        public final /* synthetic */ d f30530g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10296k(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30529f = c10285g;
            this.f30530g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26425i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10296k(dVar, this.f30529f, this.f30530g);
        }

        /* renamed from: k */
        public final Object m26424k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10296k(dVar, this.f30529f, this.f30530g).m26423s(s.a);
        }

        /* renamed from: s */
        public final Object m26423s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30528e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30529f;
                String str = c10285g.f30482f;
                this.f30528e = 1;
                Object m26466E = c10285g.m26466E(str, this);
                obj = m26466E;
                if (m26466E == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$7", f = "MalanaSeed.kt", l = {193}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$l */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$l.class */
    public static final class C10297l extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30531e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30532f;

        /* renamed from: g */
        public final /* synthetic */ d f30533g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10297l(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30532f = c10285g;
            this.f30533g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26422i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10297l(dVar, this.f30532f, this.f30533g);
        }

        /* renamed from: k */
        public final Object m26421k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10297l(dVar, this.f30532f, this.f30533g).m26420s(s.a);
        }

        /* renamed from: s */
        public final Object m26420s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30531e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30532f;
                this.f30531e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("malanaSeed/upi.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$8", f = "MalanaSeed.kt", l = {194}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$m */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$m.class */
    public static final class C10298m extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30534e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30535f;

        /* renamed from: g */
        public final /* synthetic */ d f30536g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10298m(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30535f = c10285g;
            this.f30536g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26419i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10298m(dVar, this.f30535f, this.f30536g);
        }

        /* renamed from: k */
        public final Object m26418k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10298m(dVar, this.f30535f, this.f30536g).m26417s(s.a);
        }

        /* renamed from: s */
        public final Object m26417s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30534e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30535f;
                this.f30534e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("malanaSeed/semantic.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$initialize$2$9", f = "MalanaSeed.kt", l = {195}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$n */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$n.class */
    public static final class C10299n extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: e */
        public int f30537e;

        /* renamed from: f */
        public final /* synthetic */ C10285g f30538f;

        /* renamed from: g */
        public final /* synthetic */ d f30539g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10299n(d dVar, C10285g c10285g, d dVar2) {
            super(2, dVar);
            this.f30538f = c10285g;
            this.f30539g = dVar2;
        }

        /* renamed from: i */
        public final d<s> m26416i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10299n(dVar, this.f30538f, this.f30539g);
        }

        /* renamed from: k */
        public final Object m26415k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10299n(dVar, this.f30538f, this.f30539g).m26414s(s.a);
        }

        /* renamed from: s */
        public final Object m26414s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f30537e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C10285g c10285g = this.f30538f;
                this.f30537e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c10285g.f30498v, new C10301p("vendorSeed/vendor_operators.json", null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl", f = "MalanaSeed.kt", l = {201}, m = "initialize")
    /* renamed from: e.a.c.i.b.g$o */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$o.class */
    public static final class C10300o extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30540d;

        /* renamed from: e */
        public int f30541e;

        /* renamed from: g */
        public Object f30543g;

        /* renamed from: h */
        public Object f30544h;

        /* renamed from: i */
        public Object f30545i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10300o(d dVar) {
            super(dVar);
            C10285g.this = r4;
        }

        /* renamed from: s */
        public final Object m26413s(Object obj) {
            this.f30540d = obj;
            this.f30541e |= Integer.MIN_VALUE;
            return C10285g.this.mo25566B(this);
        }
    }

    @s1.w.k.a.e(c = "com.truecaller.insights.core.assets.MalanaSeedImpl$readAssets$2", f = "MalanaSeed.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.b.g$p */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/b/g$p.class */
    public static final class C10301p extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f30547f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10301p(String str, d dVar) {
            super(2, dVar);
            C10285g.this = r5;
            this.f30547f = str;
        }

        /* renamed from: i */
        public final d<s> m26412i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10301p(this.f30547f, dVar);
        }

        /* renamed from: k */
        public final Object m26411k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10285g c10285g = C10285g.this;
            String str = this.f30547f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            InputStream mo26889c = c10285g.f30497u.mo26889c(str);
            return new k(str, mo26889c != null ? c10285g.f30497u.mo26888d(mo26889c) : null);
        }

        /* renamed from: s */
        public final Object m26410s(Object obj) {
            C25225a.m3932a3(obj);
            String str = this.f30547f;
            InputStream mo26889c = C10285g.this.f30497u.mo26889c(str);
            return new k(str, mo26889c != null ? C10285g.this.f30497u.mo26888d(mo26889c) : null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00db, code lost:
        if (r0.equals("IN") != false) goto L42;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0207  */
    @javax.inject.Inject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C10285g(p193e.p194a.p437c.p531c0.AbstractC10026m r6, @javax.inject.Named("IO") s1.w.f r7, p193e.p194a.p437c.p524b.AbstractC9686e r8, p193e.p194a.p437c.p552i.p554b.AbstractC10276a r9, p193e.p194a.p437c.p524b.AbstractC9691j r10) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p554b.C10285g.<init>(e.a.c.c0.m, s1.w.f, e.a.c.b.e, e.a.c.i.b.a, e.a.c.b.j):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x0350, code lost:
        if (r0.length() == 0) goto L118;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x056c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:129:0x03e7 -> B:130:0x03ef). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p552i.p554b.AbstractC10280e
    /* renamed from: B */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25566B(s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 1392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p554b.C10285g.mo25566B(s1.w.d):java.lang.Object");
    }

    /* renamed from: C */
    public final String m26468C(String str) {
        m26482A();
        return l.a(str, "malanaSeed/addr.json") ? this.f30488l : l.a(str, "malanaSeed/airport.json") ? this.f30486j : l.a(str, "malanaSeed/bank.json") ? this.f30487k : l.a(str, "malanaSeed/config.json") ? this.f30490n : l.a(str, "malanaSeed/location.json") ? this.f30485i : l.a(str, "malanaSeed/offers.json") ? this.f30484h : l.a(str, this.f30482f) ? this.f30483g : l.a(str, "malanaSeed/semantic.json") ? this.f30489m : l.a(str, "malanaSeed/upi.json") ? this.f30491o : l.a(str, "vendorSeed/vendor_banks.json") ? this.f30492p : l.a(str, "vendorSeed/vendor_brands.json") ? this.f30494r : l.a(str, "vendorSeed/vendor_operators.json") ? this.f30495s : l.a(str, "vendorSeed/vendor_seed.json") ? this.f30493q : "";
    }

    /* renamed from: D */
    public final String m26467D() {
        return (String) this.f30481e.getValue();
    }

    /* renamed from: E */
    public final /* synthetic */ Object m26466E(String str, d<? super k<String, String>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f30498v, new C10301p(str, null), dVar);
    }

    /* renamed from: c */
    public String m26465c() {
        return m26468C("malanaSeed/semantic.json");
    }

    /* renamed from: d */
    public JSONArray m26464d() {
        JSONArray jSONArray;
        try {
            jSONArray = new JSONArray(m26468C("vendorSeed/vendor_operators.json"));
        } catch (Throwable th) {
            C10480a.m26061I1(th);
            jSONArray = new JSONArray();
        }
        return jSONArray;
    }

    /* renamed from: i */
    public String m26463i() {
        return m26468C("malanaSeed/addr.json");
    }

    /* renamed from: j */
    public String m26462j() {
        return m26468C("malanaSeed/offers.json");
    }

    /* renamed from: k */
    public String m26461k() {
        return m26468C("malanaSeed/upi.json");
    }

    /* renamed from: l */
    public String m26460l() {
        return m26468C("malanaSeed/bank.json");
    }

    /* renamed from: m */
    public void m26459m() {
        mo26481a();
    }

    /* renamed from: n */
    public String m26458n() {
        return m26468C(this.f30482f);
    }

    /* renamed from: q */
    public JSONObject m26457q() {
        JSONObject jSONObject;
        try {
            String m26468C = m26468C("vendorSeed/vendor_brands.json");
            jSONObject = m26468C != null ? new JSONObject(m26468C) : new JSONObject();
        } catch (Throwable th) {
            C10480a.m26061I1(th);
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }

    /* renamed from: t */
    public String m26456t() {
        return m26468C("malanaSeed/airport.json");
    }

    /* renamed from: u */
    public JSONObject m26455u() {
        JSONObject jSONObject;
        try {
            String m26468C = m26468C("vendorSeed/vendor_banks.json");
            jSONObject = m26468C != null ? new JSONObject(m26468C) : new JSONObject();
        } catch (Throwable th) {
            C10480a.m26061I1(th);
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }

    /* renamed from: v */
    public String m26454v() {
        return m26468C("malanaSeed/location.json");
    }

    /* renamed from: x */
    public JSONObject m26453x() {
        JSONObject jSONObject;
        try {
            String m26468C = m26468C("vendorSeed/vendor_seed.json");
            jSONObject = m26468C != null ? new JSONObject(m26468C) : new JSONObject();
        } catch (Throwable th) {
            C10480a.m26061I1(th);
            jSONObject = new JSONObject();
        }
        return jSONObject;
    }
}
