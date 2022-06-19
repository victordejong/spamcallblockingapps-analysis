package p193e.p194a.p619d.p661w.p662j;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p663x.p665r.C12282l;
import q3.a.i0;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenMembersLeft$1", f = "ConnectInvitation.kt", l = {138}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/k.class */
public final class C12169k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35553e;

    /* renamed from: f */
    public final /* synthetic */ C12153h f35554f;

    @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenMembersLeft$1$1", f = "ConnectInvitation.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/k$a.class */
    public static final class C12170a extends i implements p<Set<? extends C12282l>, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35555e;

        public C12170a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23517i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12170a c12170a = new C12170a(dVar);
            c12170a.f35555e = obj;
            return c12170a;
        }

        /* renamed from: k */
        public final Object m23516k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            boolean z = true;
            if (((Set) obj).size() > 1) {
                z = false;
            }
            return Boolean.valueOf(z);
        }

        /* renamed from: s */
        public final Object m23515s(Object obj) {
            C25225a.m3932a3(obj);
            boolean z = true;
            if (((Set) this.f35555e).size() > 1) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12169k(C12153h c12153h, d dVar) {
        super(2, dVar);
        this.f35554f = c12153h;
    }

    /* renamed from: i */
    public final d<s> m23520i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12169k(this.f35554f, dVar);
    }

    /* renamed from: k */
    public final Object m23519k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12169k(this.f35554f, dVar).m23518s(s.a);
    }

    /* renamed from: s */
    public final Object m23518s(Object obj) {
        a aVar = a.a;
        int i = this.f35553e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1<Set<C12282l>> mo23345o = this.f35554f.f35512f.mo23345o();
            C12170a c12170a = new C12170a(null);
            this.f35553e = 1;
            if (s1.a.a.a.v0.f.d.N0(mo23345o, c12170a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f35554f.f35514h.mo23505e(AbstractC12114h.AbstractC12116b.C12125i.f35461b);
        return s.a;
    }
}
