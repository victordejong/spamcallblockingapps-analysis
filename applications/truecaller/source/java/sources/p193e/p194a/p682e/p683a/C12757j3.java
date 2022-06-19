package p193e.p194a.p682e.p683a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1024o2.C17014d;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.AbstractC19230g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.e.a.j3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/j3.class */
public final class C12757j3 {

    /* renamed from: a */
    public final C17014d f37147a;

    /* renamed from: b */
    public final AbstractC19022f0 f37148b;

    /* renamed from: c */
    public final AbstractC19230g f37149c;

    @e(c = "com.truecaller.ui.dialogs.QaConsumeYearlyConsumable$consume$1", f = "QaConsumeYearlyConsumable.kt", l = {17}, m = "invokeSuspend")
    /* renamed from: e.a.e.a.j3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/j3$a.class */
    public static final class C12758a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f37150e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12758a(d dVar) {
            super(2, dVar);
            C12757j3.this = r5;
        }

        /* renamed from: i */
        public final d<s> m22710i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12758a(dVar);
        }

        /* renamed from: k */
        public final Object m22709k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12758a(dVar).m22708s(s.a);
        }

        /* renamed from: s */
        public final Object m22708s(Object obj) {
            a aVar = a.a;
            int i = this.f37150e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C17014d c17014d = C12757j3.this.f37147a;
                this.f37150e = 1;
                if (c17014d.m16636a(this) == aVar) {
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

    public C12757j3(C17014d c17014d, AbstractC19022f0 abstractC19022f0, AbstractC19230g abstractC19230g) {
        l.e(c17014d, "consumablePurchaseManager");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        this.f37147a = c17014d;
        this.f37148b = abstractC19022f0;
        this.f37149c = abstractC19230g;
    }

    /* renamed from: a */
    public final void m22711a() {
        if (this.f37148b.mo14240f() || this.f37149c.mo13788i()) {
            s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C12758a(null), 3, (Object) null);
        }
    }
}
