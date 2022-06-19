package p193e.p194a.p619d.p670z.p671b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p657v.AbstractC11822b;
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
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$toggleNotificationSpeakerButton$1", f = "CallServicePresenter.kt", l = {331}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/m.class */
public final class C12371m extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36101e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36102f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC11822b f36103g;

    /* renamed from: e.a.d.z.b.m$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/m$a.class */
    public static final class C12372a implements g<C11519b> {
        public C12372a() {
            C12371m.this = r4;
        }

        /* renamed from: a */
        public Object m23168a(Object obj, d dVar) {
            s sVar = a.a;
            s sVar2 = s.a;
            boolean z = ((C11519b) obj).f33811a instanceof AbstractC11514a.C11517c;
            s sVar3 = null;
            if (z) {
                AbstractC12333b abstractC12333b = (AbstractC12333b) C12371m.this.f36102f.f57683a;
                if (abstractC12333b != null) {
                    abstractC12333b.mo23253c();
                    sVar3 = sVar2;
                }
                if (sVar3 == sVar) {
                    return sVar3;
                }
            } else {
                AbstractC12333b abstractC12333b2 = (AbstractC12333b) C12371m.this.f36102f.f57683a;
                s sVar4 = null;
                if (abstractC12333b2 != null) {
                    abstractC12333b2.mo23254b();
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
    public C12371m(C12334c c12334c, AbstractC11822b abstractC11822b, d dVar) {
        super(2, dVar);
        this.f36102f = c12334c;
        this.f36103g = abstractC11822b;
    }

    /* renamed from: i */
    public final d<s> m23171i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12371m(this.f36102f, this.f36103g, dVar);
    }

    /* renamed from: k */
    public final Object m23170k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12371m(this.f36102f, this.f36103g, dVar).m23169s(s.a);
    }

    /* renamed from: s */
    public final Object m23169s(Object obj) {
        a aVar = a.a;
        int i = this.f36101e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<C11519b> mo23966Y = this.f36103g.mo23966Y();
            C12372a c12372a = new C12372a();
            this.f36101e = 1;
            if (mo23966Y.c(c12372a, this) == aVar) {
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
