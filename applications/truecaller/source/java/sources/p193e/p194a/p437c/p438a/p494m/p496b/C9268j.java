package p193e.p194a.p437c.p438a.p494m.p496b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p598v.AbstractC10709a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.ui.qa.presentation.ReminderViewModel$refreshReminderState$1", f = "ReminderViewModel.kt", l = {35, 36}, m = "invokeSuspend")
/* renamed from: e.a.c.a.m.b.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/j.class */
public final class C9268j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f28211e;

    /* renamed from: f */
    public final /* synthetic */ C9266i f28212f;

    /* renamed from: g */
    public final /* synthetic */ a f28213g;

    @e(c = "com.truecaller.insights.ui.qa.presentation.ReminderViewModel$refreshReminderState$1$1", f = "ReminderViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.m.b.j$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/j$a.class */
    public static final class C9269a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9269a(d dVar) {
            super(2, dVar);
            C9268j.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27767i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9269a(dVar);
        }

        /* renamed from: k */
        public final Object m27766k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9268j c9268j = C9268j.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c9268j.f28213g.invoke();
            return sVar;
        }

        /* renamed from: s */
        public final Object m27765s(Object obj) {
            C25225a.m3932a3(obj);
            C9268j.this.f28213g.invoke();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9268j(C9266i c9266i, a aVar, d dVar) {
        super(2, dVar);
        this.f28212f = c9266i;
        this.f28213g = aVar;
    }

    /* renamed from: i */
    public final d<s> m27770i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C9268j(this.f28212f, this.f28213g, dVar);
    }

    /* renamed from: k */
    public final Object m27769k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C9268j(this.f28212f, this.f28213g, dVar).m27768s(s.a);
    }

    /* renamed from: s */
    public final Object m27768s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f28211e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC10709a abstractC10709a = this.f28212f.f28202c;
            this.f28211e = 1;
            if (abstractC10709a.mo25705b(this) == aVar) {
                return aVar;
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
        f fVar = this.f28212f.f28203d;
        C9269a c9269a = new C9269a(null);
        this.f28211e = 2;
        if (s1.a.a.a.v0.f.d.a4(fVar, c9269a, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
