package p193e.p194a.p982k0.p989n.p992c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p982k0.AbstractC16315h;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.callrecording.ui.floatingbutton.CallRecordingFloatingButtonPresenterImpl$listenToRecordingState$1", f = "CallRecordingFloatingButtonPresenterImpl.kt", l = {263}, m = "invokeSuspend")
/* renamed from: e.a.k0.n.c.d */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/c/d.class */
public final class C16395d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f46086e;

    /* renamed from: f */
    public final /* synthetic */ C16398f f46087f;

    /* renamed from: e.a.k0.n.c.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/c/d$a.class */
    public static final class C16396a implements g<AbstractC16315h> {
        public C16396a() {
            C16395d.this = r4;
        }

        /* renamed from: a */
        public Object m17463a(Object obj, d dVar) {
            AbstractC16315h abstractC16315h = (AbstractC16315h) obj;
            C16398f c16398f = C16395d.this.f46087f;
            c16398f.f46096i = true;
            AbstractC16394c abstractC16394c = (AbstractC16394c) c16398f.f57683a;
            if (abstractC16394c != null) {
                abstractC16394c.setIconEnabled(true);
            }
            if (l.a(abstractC16315h, AbstractC16315h.C16318c.f45934a)) {
                AbstractC16394c abstractC16394c2 = (AbstractC16394c) C16395d.this.f46087f.f57683a;
                if (abstractC16394c2 != null) {
                    abstractC16394c2.mo17469cf();
                }
            } else if (l.a(abstractC16315h, AbstractC16315h.C16319d.f45935a)) {
                C16398f c16398f2 = C16395d.this.f46087f;
                c16398f2.f46096i = false;
                AbstractC16394c abstractC16394c3 = (AbstractC16394c) c16398f2.f57683a;
                if (abstractC16394c3 != null) {
                    abstractC16394c3.setIconEnabled(false);
                }
            } else if (abstractC16315h instanceof AbstractC16315h.C16320e) {
                C16398f c16398f3 = C16395d.this.f46087f;
                long j = ((AbstractC16315h.C16320e) abstractC16315h).f45937b;
                c16398f3.f46093f = c16398f3.f46098k.mo17576w();
                AbstractC16394c abstractC16394c4 = (AbstractC16394c) c16398f3.f57683a;
                if (abstractC16394c4 != null) {
                    abstractC16394c4.mo17468q8(j);
                }
            } else if (l.a(abstractC16315h, AbstractC16315h.C16316a.f45932a)) {
                C16398f c16398f4 = C16395d.this.f46087f;
                AbstractC16394c abstractC16394c5 = (AbstractC16394c) c16398f4.f57683a;
                if (abstractC16394c5 != null) {
                    abstractC16394c5.mo17469cf();
                }
                c16398f4.f46093f = null;
            } else if (abstractC16315h instanceof AbstractC16315h.C16317b) {
                C16398f c16398f5 = C16395d.this.f46087f;
                Exception exc = ((AbstractC16315h.C16317b) abstractC16315h).f45933a;
                c16398f5.f46093f = null;
                s1.a.a.a.v0.f.d.w2(c16398f5, (f) null, (j0) null, new C16397e(c16398f5, exc, null), 3, (Object) null);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16395d(C16398f c16398f, d dVar) {
        super(2, dVar);
        this.f46087f = c16398f;
    }

    /* renamed from: i */
    public final d<s> m17466i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16395d(this.f46087f, dVar);
    }

    /* renamed from: k */
    public final Object m17465k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16395d(this.f46087f, dVar).m17464s(s.a);
    }

    /* renamed from: s */
    public final Object m17464s(Object obj) {
        a aVar = a.a;
        int i = this.f46086e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<AbstractC16315h> state = this.f46087f.f46098k.getState();
            C16396a c16396a = new C16396a();
            this.f46086e = 1;
            if (state.c(c16396a, this) == aVar) {
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
