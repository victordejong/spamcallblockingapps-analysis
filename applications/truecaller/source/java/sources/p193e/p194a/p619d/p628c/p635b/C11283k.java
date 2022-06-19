package p193e.p194a.p619d.p628c.p635b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.C11821a;
import q3.a.i0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.ongoing.OngoingVoipPresenter$listenSettingChanges$1", f = "OngoingVoipPresenter.kt", l = {170}, m = "invokeSuspend")
/* renamed from: e.a.d.c.b.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/b/k.class */
public final class C11283k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33249e;

    /* renamed from: f */
    public final /* synthetic */ C11292o f33250f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f33251g;

    /* renamed from: e.a.d.c.b.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/k$a.class */
    public static final class C11284a implements g<C11821a> {
        public C11284a() {
            C11283k.this = r4;
        }

        /* renamed from: a */
        public Object m24909a(Object obj, d dVar) {
            a aVar;
            a aVar2 = s.a;
            C11821a c11821a = (C11821a) obj;
            AbstractC11278h abstractC11278h = (AbstractC11278h) C11283k.this.f33250f.f57683a;
            if (abstractC11278h != null) {
                abstractC11278h.mo24923v3(c11821a.f34737a);
                aVar = aVar2;
            } else {
                aVar = null;
            }
            return aVar == a.a ? aVar : aVar2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11283k(C11292o c11292o, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f33250f = c11292o;
        this.f33251g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m24912i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11283k(this.f33250f, this.f33251g, dVar);
    }

    /* renamed from: k */
    public final Object m24911k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11283k(this.f33250f, this.f33251g, dVar).m24910s(s.a);
    }

    /* renamed from: s */
    public final Object m24910s(Object obj) {
        a aVar = a.a;
        int i = this.f33249e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<C11821a> mo23922b = this.f33251g.mo23922b();
            C11284a c11284a = new C11284a();
            this.f33249e = 1;
            if (mo23922b.c(c11284a, this) == aVar) {
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
