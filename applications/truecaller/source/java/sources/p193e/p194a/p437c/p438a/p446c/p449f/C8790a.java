package p193e.p194a.p437c.p438a.p446c.p449f;

import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8831a;
import p193e.p194a.p437c.p438a.p456d.p461d.C8888a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9117k;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p579q.C10496c;
import p193e.p194a.p437c.p579q.C10512i;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.important.domain.GetFinanceFlowUseCase$execute$1", f = "GetFinanceFlowUseCase.kt", l = {50, 144}, m = "invokeSuspend")
/* renamed from: e.a.c.a.c.f.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/a.class */
public final class C8790a extends i implements p<g<? super C8831a>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f26820e;

    /* renamed from: f */
    public int f26821f;

    /* renamed from: g */
    public final /* synthetic */ C8793b f26822g;

    /* renamed from: e.a.c.a.c.f.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/a$a.class */
    public static final class C8791a implements g<List<? extends C10496c>> {

        /* renamed from: b */
        public final /* synthetic */ g f26824b;

        /* renamed from: c */
        public final /* synthetic */ C10512i f26825c;

        /* renamed from: e.a.c.a.c.f.a$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/c/f/a$a$a.class */
        public static final class C8792a implements g<List<? extends C10496c>> {
            public C8792a() {
                C8791a.this = r4;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: a */
            public Object m28065a(List<? extends C10496c> list, d<? super s> dVar) {
                C8791a c8791a = C8791a.this;
                Object a = c8791a.f26824b.a(C8790a.this.f26822g.m28063e(list), dVar);
                return a == a.a ? a : s.a;
            }
        }

        public C8791a(g gVar, C10512i c10512i) {
            C8790a.this = r4;
            this.f26824b = gVar;
            this.f26825c = c10512i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public Object m28066a(List<? extends C10496c> list, d<? super s> dVar) {
            a aVar = a.a;
            List<? extends C10496c> list2 = list;
            if (list2.size() < 5) {
                Object c = C8790a.this.f26822g.f26827b.mo25844y(5, new w3.b.a.p(this.f26825c.f31258a)).c(new C8792a(), dVar);
                if (c == aVar) {
                    return c;
                }
            } else {
                Object a = this.f26824b.a(C8790a.this.f26822g.m28063e(list2), dVar);
                if (a == aVar) {
                    return a;
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8790a(C8793b c8793b, d dVar) {
        super(2, dVar);
        this.f26822g = c8793b;
    }

    /* renamed from: i */
    public final d<s> m28069i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C8790a c8790a = new C8790a(this.f26822g, dVar);
        c8790a.f26820e = obj;
        return c8790a;
    }

    /* renamed from: k */
    public final Object m28068k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C8790a c8790a = new C8790a(this.f26822g, dVar);
        c8790a.f26820e = obj;
        return c8790a.m28067s(s.a);
    }

    /* renamed from: s */
    public final Object m28067s(Object obj) {
        g gVar;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f26821f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            gVar = (g) this.f26820e;
            C8888a c8888a = this.f26822g.f26831f;
            this.f26820e = gVar;
            this.f26821f = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(c8888a.f27793a, new AbstractC9117k.C9118a(sVar, null), this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return sVar;
        } else {
            gVar = (g) this.f26820e;
            C25225a.m3932a3(obj);
        }
        C10512i c10512i = (C10512i) obj;
        w3.b.a.p g = new w3.b.a.p(c10512i.f31259b).g(15);
        AbstractC10497d abstractC10497d = this.f26822g.f26827b;
        l.d(g, "showForLast");
        f<List<C10496c>> mo25844y = abstractC10497d.mo25844y(5, g);
        C8791a c8791a = new C8791a(gVar, c10512i);
        this.f26820e = null;
        this.f26821f = 2;
        if (mo25844y.c(c8791a, this) == aVar) {
            return aVar;
        }
        return sVar;
    }
}
