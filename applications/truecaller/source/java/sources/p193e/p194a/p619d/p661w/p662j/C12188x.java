package p193e.p194a.p619d.p661w.p662j;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p661w.C12130i;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.PlayRingtoneAndVibrateImpl$playRingtoneAndVibrate$1", f = "PlayRingtoneAndVibrate.kt", l = {48}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.x */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/x.class */
public final class C12188x extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35591e;

    /* renamed from: f */
    public final /* synthetic */ C12191z f35592f;

    @e(c = "com.truecaller.voip.invitation.action.PlayRingtoneAndVibrateImpl$playRingtoneAndVibrate$1$1", f = "PlayRingtoneAndVibrate.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.x$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/x$a.class */
    public static final class C12189a extends i implements p<AbstractC12114h, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35593e;

        public C12189a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23487i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12189a c12189a = new C12189a(dVar);
            c12189a.f35593e = obj;
            return c12189a;
        }

        /* renamed from: k */
        public final Object m23486k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(l.a((AbstractC12114h) obj, AbstractC12114h.C12129c.f35465b));
        }

        /* renamed from: s */
        public final Object m23485s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(l.a((AbstractC12114h) this.f35593e, AbstractC12114h.C12129c.f35465b));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12188x(C12191z c12191z, d dVar) {
        super(2, dVar);
        this.f35592f = c12191z;
    }

    /* renamed from: i */
    public final d<s> m23490i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12188x(this.f35592f, dVar);
    }

    /* renamed from: k */
    public final Object m23489k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12188x(this.f35592f, dVar).m23488s(s.a);
    }

    /* renamed from: s */
    public final Object m23488s(Object obj) {
        a aVar = a.a;
        int i = this.f35591e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12130i c12130i = this.f35592f.f35595a;
            C12189a c12189a = new C12189a(null);
            this.f35591e = 1;
            if (s1.a.a.a.v0.f.d.N0(c12130i, c12189a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f35592f.f35596b.mo24557a();
        this.f35592f.f35597c.mo24686b();
        return s.a;
    }
}
