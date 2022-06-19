package p193e.p194a.p717f.p731w;

import com.truecaller.incallui.utils.InCallUISearchDirection;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.C13712g;
import p193e.p194a.p717f.C13716j;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import p193e.p194a.p717f.p734z.AbstractC13826k;
import p193e.p194a.p717f.p734z.C13828l;
import q3.a.i0;
import q3.a.x2.d1;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.data.InCallUIRepositoryImpl$searchCaller$1", f = "CallerInfoRepository.kt", l = {71, 128}, m = "invokeSuspend")
/* renamed from: e.a.f.w.d */
/* loaded from: classes10-dex2jar.jar:e/a/f/w/d.class */
public final class C13735d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39782e;

    /* renamed from: f */
    public final /* synthetic */ C13737e f39783f;

    /* renamed from: g */
    public final /* synthetic */ String f39784g;

    /* renamed from: h */
    public final /* synthetic */ InCallUISearchDirection f39785h;

    /* renamed from: e.a.f.w.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/w/d$a.class */
    public static final class C13736a implements g<C13828l> {
        public C13736a() {
            C13735d.this = r4;
        }

        /* renamed from: a */
        public Object m21237a(C13828l c13828l, d<? super s> dVar) {
            C13828l c13828l2 = c13828l;
            if (c13828l2 == null) {
                C13735d c13735d = C13735d.this;
                c13735d.f39783f.f39787a.put(c13735d.f39784g, null);
                C13735d.this.f39783f.f39788b.offer(AbstractC13738f.C13739a.f39793a);
            } else {
                C13642g c13642g = new C13642g(c13828l2.f40101a, c13828l2.f40102b, c13828l2.f40103c, c13828l2.f40104d, c13828l2.f40105e, c13828l2.f40106f, c13828l2.f40107g, c13828l2.f40108h, c13828l2.f40109i, c13828l2.f40110j, c13828l2.f40111k, c13828l2.f40112l, c13828l2.f40113m, c13828l2.f40114n, c13828l2.f40115o, c13828l2.f40116p, c13828l2.f40117q, c13828l2.f40118r, c13828l2.f40119s, c13828l2.f40120t, c13828l2.f40121u, c13828l2.f40122v, c13828l2.f40123w, c13828l2.f40124x, c13828l2.f40125y);
                C13735d c13735d2 = C13735d.this;
                c13735d2.f39783f.f39787a.put(c13735d2.f39784g, c13642g);
                C13735d.this.f39783f.f39788b.offer(new AbstractC13738f.C13740b(c13642g));
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13735d(C13737e c13737e, String str, InCallUISearchDirection inCallUISearchDirection, d dVar) {
        super(2, dVar);
        this.f39783f = c13737e;
        this.f39784g = str;
        this.f39785h = inCallUISearchDirection;
    }

    /* renamed from: i */
    public final d<s> m21240i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13735d(this.f39783f, this.f39784g, this.f39785h, dVar);
    }

    /* renamed from: k */
    public final Object m21239k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13735d(this.f39783f, this.f39784g, this.f39785h, dVar).m21238s(s.a);
    }

    /* renamed from: s */
    public final Object m21238s(Object obj) {
        d1 d1Var = a.a;
        int i = this.f39782e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC13826k abstractC13826k = this.f39783f.f39790d;
            String str = this.f39784g;
            InCallUISearchDirection inCallUISearchDirection = this.f39785h;
            this.f39782e = 1;
            C13712g c13712g = (C13712g) abstractC13826k;
            Objects.requireNonNull(c13712g);
            d1 d1Var2 = new d1(new C13716j(c13712g, str, inCallUISearchDirection, null));
            obj = d1Var2;
            if (d1Var2 == d1Var) {
                return d1Var;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        f X0 = s1.a.a.a.v0.f.d.X0((f) obj, this.f39783f.f39792f);
        C13736a c13736a = new C13736a();
        this.f39782e = 2;
        if (X0.c(c13736a, this) == d1Var) {
            return d1Var;
        }
        return s.a;
    }
}
