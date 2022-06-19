package p193e.p194a.p619d.p628c.p633a0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.w0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.incoming.IncomingVoipPresenter$hideButtonsWhenCallEnds$1", f = "IncomingVoipPresenter.kt", l = {139}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a0.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/j.class */
public final class C11261j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33212e;

    /* renamed from: f */
    public final /* synthetic */ C11259i f33213f;

    @e(c = "com.truecaller.voip.ui.incoming.IncomingVoipPresenter$hideButtonsWhenCallEnds$1$1", f = "IncomingVoipPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.a0.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/j$a.class */
    public static final class C11262a extends i implements q<AbstractC11835f, AbstractC12111g, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33214e;

        /* renamed from: f */
        public /* synthetic */ Object f33215f;

        public C11262a(d dVar) {
            super(3, dVar);
        }

        /* renamed from: h */
        public final Object m24944h(Object obj, Object obj2, Object obj3) {
            AbstractC11835f abstractC11835f = (AbstractC11835f) obj;
            AbstractC12111g abstractC12111g = (AbstractC12111g) obj2;
            d dVar = (d) obj3;
            l.e(abstractC11835f, "groupCallState");
            l.e(abstractC12111g, "invitationState");
            l.e(dVar, "continuation");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf((abstractC11835f instanceof AbstractC11835f.C11837b) && (abstractC12111g instanceof AbstractC12111g.C12113b));
        }

        /* renamed from: s */
        public final Object m24943s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf((((AbstractC11835f) this.f33214e) instanceof AbstractC11835f.C11837b) && (((AbstractC12111g) this.f33215f) instanceof AbstractC12111g.C12113b));
        }
    }

    /* renamed from: e.a.d.c.a0.j$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/j$b.class */
    public static final class C11263b implements g<Boolean> {
        public C11263b() {
            C11261j.this = r4;
        }

        /* renamed from: a */
        public Object m24942a(Object obj, d dVar) {
            AbstractC11258h abstractC11258h;
            if (((Boolean) obj).booleanValue() && (abstractC11258h = (AbstractC11258h) C11261j.this.f33213f.f57683a) != null) {
                abstractC11258h.mo24955xg();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11261j(C11259i c11259i, d dVar) {
        super(2, dVar);
        this.f33213f = c11259i;
    }

    /* renamed from: i */
    public final d<s> m24947i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11261j(this.f33213f, dVar);
    }

    /* renamed from: k */
    public final Object m24946k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11261j(this.f33213f, dVar).m24945s(s.a);
    }

    /* renamed from: s */
    public final Object m24945s(Object obj) {
        a aVar = a.a;
        int i = this.f33212e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f F0 = s1.a.a.a.v0.f.d.F0(new w0(this.f33213f.f33207f.getState(), this.f33213f.f33206e.getState(), new C11262a(null)));
            C11263b c11263b = new C11263b();
            this.f33212e = 1;
            if (F0.c(c11263b, this) == aVar) {
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
