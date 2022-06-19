package p193e.p194a.p717f.p733y;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p982k0.AbstractC16315h;
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
@e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$maybeListenCallRecordState$1", f = "InCallUIServicePresenter.kt", l = {785}, m = "invokeSuspend")
/* renamed from: e.a.f.y.q */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/q.class */
public final class C13786q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39997e;

    /* renamed from: f */
    public final /* synthetic */ C13778o f39998f;

    /* renamed from: e.a.f.y.q$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/q$a.class */
    public static final class C13787a implements g<AbstractC16315h> {
        public C13787a() {
            C13786q.this = r4;
        }

        /* renamed from: a */
        public Object m21079a(AbstractC16315h abstractC16315h, d<? super s> dVar) {
            AbstractC13773k abstractC13773k;
            AbstractC16315h abstractC16315h2 = abstractC16315h;
            if (abstractC16315h2 instanceof AbstractC16315h.C16320e) {
                AbstractC13773k abstractC13773k2 = (AbstractC13773k) C13786q.this.f39998f.f57683a;
                if (abstractC13773k2 != null) {
                    abstractC13773k2.mo21154q(((AbstractC16315h.C16320e) abstractC16315h2).f45937b);
                }
            } else if (((abstractC16315h2 instanceof AbstractC16315h.C16317b) || l.a(abstractC16315h2, AbstractC16315h.C16319d.f45935a) || l.a(abstractC16315h2, AbstractC16315h.C16318c.f45934a) || l.a(abstractC16315h2, AbstractC16315h.C16316a.f45932a)) && (abstractC13773k = (AbstractC13773k) C13786q.this.f39998f.f57683a) != null) {
                abstractC13773k.mo21146y();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13786q(C13778o c13778o, d dVar) {
        super(2, dVar);
        this.f39998f = c13778o;
    }

    /* renamed from: i */
    public final d<s> m21082i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13786q(this.f39998f, dVar);
    }

    /* renamed from: k */
    public final Object m21081k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13786q(this.f39998f, dVar).m21080s(s.a);
    }

    /* renamed from: s */
    public final Object m21080s(Object obj) {
        a aVar = a.a;
        int i = this.f39997e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<AbstractC16315h> state = this.f39998f.f39941B.getState();
            C13787a c13787a = new C13787a();
            this.f39997e = 1;
            if (state.c(c13787a, this) == aVar) {
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
