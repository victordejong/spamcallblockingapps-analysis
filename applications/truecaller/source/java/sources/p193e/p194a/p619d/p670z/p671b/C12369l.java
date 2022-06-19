package p193e.p194a.p619d.p670z.p671b;

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
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$toggleNotificationMuteButton$1", f = "CallServicePresenter.kt", l = {331}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/l.class */
public final class C12369l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36097e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36098f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f36099g;

    /* renamed from: e.a.d.z.b.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/l$a.class */
    public static final class C12370a implements g<C11821a> {
        public C12370a() {
            C12369l.this = r4;
        }

        /* renamed from: a */
        public Object m23172a(Object obj, d dVar) {
            s sVar = a.a;
            s sVar2 = s.a;
            boolean z = ((C11821a) obj).f34737a;
            s sVar3 = null;
            if (z) {
                AbstractC12333b abstractC12333b = (AbstractC12333b) C12369l.this.f36098f.f57683a;
                if (abstractC12333b != null) {
                    abstractC12333b.mo23249g();
                    sVar3 = sVar2;
                }
                if (sVar3 == sVar) {
                    return sVar3;
                }
            } else {
                AbstractC12333b abstractC12333b2 = (AbstractC12333b) C12369l.this.f36098f.f57683a;
                s sVar4 = null;
                if (abstractC12333b2 != null) {
                    abstractC12333b2.mo23251e();
                    sVar4 = sVar2;
                }
                if (sVar4 == sVar) {
                    return sVar4;
                }
            }
            return sVar2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12369l(C12334c c12334c, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f36098f = c12334c;
        this.f36099g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m23175i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12369l(this.f36098f, this.f36099g, dVar);
    }

    /* renamed from: k */
    public final Object m23174k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12369l(this.f36098f, this.f36099g, dVar).m23173s(s.a);
    }

    /* renamed from: s */
    public final Object m23173s(Object obj) {
        a aVar = a.a;
        int i = this.f36097e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<C11821a> mo23922b = this.f36099g.mo23922b();
            C12370a c12370a = new C12370a();
            this.f36097e = 1;
            if (mo23922b.c(c12370a, this) == aVar) {
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
