package p193e.p194a.p619d.p661w;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.InvitationManagerImpl$deleteInvitationWhenEnded$1", f = "InvitationManager.kt", l = {205, 227}, m = "invokeSuspend")
/* renamed from: e.a.d.w.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/f.class */
public final class C12109f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f35443e;

    /* renamed from: f */
    public Object f35444f;

    /* renamed from: g */
    public int f35445g;

    /* renamed from: h */
    public final /* synthetic */ C12096e f35446h;

    /* renamed from: i */
    public final /* synthetic */ AbstractC12093b f35447i;

    @e(c = "com.truecaller.voip.invitation.InvitationManagerImpl$deleteInvitationWhenEnded$1$1", f = "InvitationManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/f$a.class */
    public static final class C12110a extends i implements p<AbstractC12114h, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35448e;

        public C12110a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23590i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12110a c12110a = new C12110a(dVar);
            c12110a.f35448e = obj;
            return c12110a;
        }

        /* renamed from: k */
        public final Object m23589k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(((AbstractC12114h) obj) instanceof AbstractC12114h.AbstractC12116b);
        }

        /* renamed from: s */
        public final Object m23588s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(((AbstractC12114h) this.f35448e) instanceof AbstractC12114h.AbstractC12116b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12109f(C12096e c12096e, AbstractC12093b abstractC12093b, d dVar) {
        super(2, dVar);
        this.f35446h = c12096e;
        this.f35447i = abstractC12093b;
    }

    /* renamed from: i */
    public final d<s> m23593i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12109f(this.f35446h, this.f35447i, dVar);
    }

    /* renamed from: k */
    public final Object m23592k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12109f(this.f35446h, this.f35447i, dVar).m23591s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00c6  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23591s(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.C12109f.m23591s(java.lang.Object):java.lang.Object");
    }
}
