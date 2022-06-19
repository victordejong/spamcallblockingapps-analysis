package p193e.p194a.p619d.p661w.p662j;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.i0;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenInvitationCancelled$1", f = "ConnectInvitation.kt", l = {122}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/j.class */
public final class C12167j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35550e;

    /* renamed from: f */
    public final /* synthetic */ C12153h f35551f;

    @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenInvitationCancelled$1$1", f = "ConnectInvitation.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/j$a.class */
    public static final class C12168a extends i implements p<C12262i, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35552e;

        public C12168a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23523i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12168a c12168a = new C12168a(dVar);
            c12168a.f35552e = obj;
            return c12168a;
        }

        /* renamed from: k */
        public final Object m23522k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(((C12262i) obj) == null);
        }

        /* renamed from: s */
        public final Object m23521s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(((C12262i) this.f35552e) == null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12167j(C12153h c12153h, d dVar) {
        super(2, dVar);
        this.f35551f = c12153h;
    }

    /* renamed from: i */
    public final d<s> m23526i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12167j(this.f35551f, dVar);
    }

    /* renamed from: k */
    public final Object m23525k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12167j(this.f35551f, dVar).m23524s(s.a);
    }

    /* renamed from: s */
    public final Object m23524s(Object obj) {
        a aVar = a.a;
        int i = this.f35550e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f<C12262i> fVar = this.f35551f.f35513g;
            C12168a c12168a = new C12168a(null);
            this.f35550e = 1;
            if (s1.a.a.a.v0.f.d.N0(fVar, c12168a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f35551f.f35514h.mo23505e(AbstractC12114h.AbstractC12116b.C12121e.f35457b);
        return s.a;
    }
}
