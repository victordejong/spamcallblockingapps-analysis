package p193e.p194a.p619d.p628c.p629a;

import com.truecaller.voip.groupcall.call.CallDirection;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipCleverTapAction;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import q3.a.i0;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.ui.util.LogPriorityVoipCallEventImpl$listenToPeerUpdates$1", f = "LogPriorityVoipCallEvent.kt", l = {67}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.g */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/g.class */
public final class C11184g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33062e;

    /* renamed from: f */
    public final /* synthetic */ C11186h f33063f;

    /* renamed from: g */
    public final /* synthetic */ i1 f33064g;

    /* renamed from: h */
    public final /* synthetic */ int f33065h;

    @e(c = "com.truecaller.voip.ui.util.LogPriorityVoipCallEventImpl$listenToPeerUpdates$1$1", f = "LogPriorityVoipCallEvent.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.a.g$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/g$a.class */
    public static final class C11185a extends i implements p<AbstractC11416j, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f33066e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11185a(d dVar) {
            super(2, dVar);
            C11184g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m25065i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11185a c11185a = new C11185a(dVar);
            c11185a.f33066e = obj;
            return c11185a;
        }

        /* renamed from: k */
        public final Object m25064k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11185a c11185a = new C11185a(dVar);
            c11185a.f33066e = obj;
            s sVar = s.a;
            c11185a.m25063s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25063s(Object obj) {
            VoipAnalyticsCallDirection voipAnalyticsCallDirection;
            C25225a.m3932a3(obj);
            AbstractC11416j abstractC11416j = (AbstractC11416j) this.f33066e;
            if (abstractC11416j instanceof AbstractC11416j.C11418b) {
                C11184g c11184g = C11184g.this;
                C11186h c11186h = c11184g.f33063f;
                C11161a c11161a = ((AbstractC11416j.C11418b) abstractC11416j).f33540a;
                int i = c11184g.f33065h;
                synchronized (c11186h) {
                    if (!c11186h.f33069b.contains(c11161a.f32996d) && c11161a.f32998f.f16296d) {
                        AbstractC11598i abstractC11598i = c11186h.f33070c;
                        CallDirection mo24404b = abstractC11598i != null ? abstractC11598i.mo24404b() : null;
                        if (mo24404b != null) {
                            int ordinal = mo24404b.ordinal();
                            if (ordinal == 0) {
                                voipAnalyticsCallDirection = VoipAnalyticsCallDirection.INCOMING;
                            } else if (ordinal == 1) {
                                voipAnalyticsCallDirection = VoipAnalyticsCallDirection.OUTGOING;
                            }
                            VoipCleverTapAction voipCleverTapAction = i == 1 ? VoipCleverTapAction.VOIP_CALL : VoipCleverTapAction.GROUP_VOIP_CALL;
                            c11186h.f33069b.add(c11161a.f32996d);
                            c11186h.f33071d.mo24710i(voipAnalyticsCallDirection, voipCleverTapAction);
                        }
                    }
                }
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11184g(C11186h c11186h, i1 i1Var, int i, d dVar) {
        super(2, dVar);
        this.f33063f = c11186h;
        this.f33064g = i1Var;
        this.f33065h = i;
    }

    /* renamed from: i */
    public final d<s> m25068i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11184g(this.f33063f, this.f33064g, this.f33065h, dVar);
    }

    /* renamed from: k */
    public final Object m25067k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11184g(this.f33063f, this.f33064g, this.f33065h, dVar).m25066s(s.a);
    }

    /* renamed from: s */
    public final Object m25066s(Object obj) {
        a aVar = a.a;
        int i = this.f33062e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1 i1Var = this.f33064g;
            C11185a c11185a = new C11185a(null);
            this.f33062e = 1;
            if (s1.a.a.a.v0.f.d.g0(i1Var, c11185a, this) == aVar) {
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
