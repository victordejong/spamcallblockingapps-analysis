package p193e.p194a.p918j.p930c;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.j.c.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/c/a.class */
public final class C15444a extends AbstractC21765k {

    /* renamed from: b */
    public final a<AbstractC8432l> f43794b;

    /* renamed from: c */
    public final a<C20592g> f43795c;

    /* renamed from: d */
    public final a<AbstractC15446b> f43796d;

    @e(c = "com.truecaller.surveys.data.FetchSurveysWorkAction$execute$1", f = "FetchSurveysWorkAction.kt", l = {33}, m = "invokeSuspend")
    /* renamed from: e.a.j.c.a$a */
    /* loaded from: classes14-dex2jar.jar:e/a/j/c/a$a.class */
    public static final class C15445a extends i implements p<i0, d<? super ListenableWorker.AbstractC0414a>, Object> {

        /* renamed from: e */
        public int f43797e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15445a(d dVar) {
            super(2, dVar);
            C15444a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m18805i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C15445a(dVar);
        }

        /* renamed from: k */
        public final Object m18804k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C15445a(dVar).m18803s(s.a);
        }

        /* renamed from: s */
        public final Object m18803s(Object obj) {
            ListenableWorker.AbstractC0414a.C0417c c0417c;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f43797e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f43797e = 1;
                Object mo18802a = ((AbstractC15446b) C15444a.this.f43796d.get()).mo18802a(this);
                obj = mo18802a;
                if (mo18802a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (booleanValue) {
                c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            } else if (booleanValue) {
                throw new s1.i();
            } else {
                c0417c = new ListenableWorker.AbstractC0414a.C0416b();
            }
            return c0417c;
        }
    }

    @Inject
    public C15444a(a<AbstractC8432l> aVar, a<C20592g> aVar2, a<AbstractC15446b> aVar3) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "featuresRegistry");
        l.e(aVar3, "surveysRepository");
        this.f43794b = aVar;
        this.f43795c = aVar2;
        this.f43796d = aVar3;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        Object c3 = s1.a.a.a.v0.f.d.c3((f) null, new C15445a(null), 1, (Object) null);
        l.d(c3, "runBlocking {\n          …)\n            }\n        }");
        return (ListenableWorker.AbstractC0414a) c3;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return "FetchSurveysWorkAction";
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        boolean z;
        if (((AbstractC8432l) this.f43794b.get()).mo28580d()) {
            C20592g c20592g = (C20592g) this.f43795c.get();
            if (c20592g.f57800O5.m10941a(c20592g, C20592g.f57695p6[358]).isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
