package p193e.p194a.p717f.p718a.p721b;

import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.FeatureType;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.x2.a1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$registerOutgoingCallContextListeners$1", f = "OngoingCallPresenter.kt", l = {131}, m = "invokeSuspend")
/* renamed from: e.a.f.a.b.t */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/t.class */
public final class C13609t extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f39455e;

    /* renamed from: f */
    public final /* synthetic */ C13590j f39456f;

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter$registerOutgoingCallContextListeners$1$1", f = "OngoingCallPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.f.a.b.t$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/t$a.class */
    public static final class C13610a extends i implements p<CallContextMessage, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f39457e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13610a(d dVar) {
            super(2, dVar);
            C13609t.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21491i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C13610a c13610a = new C13610a(dVar);
            c13610a.f39457e = obj;
            return c13610a;
        }

        /* renamed from: k */
        public final Object m21490k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C13609t c13609t = C13609t.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            CallContextMessage callContextMessage = (CallContextMessage) obj;
            if (callContextMessage == null) {
                AbstractC13589i abstractC13589i = (AbstractC13589i) c13609t.f39456f.f57683a;
                if (abstractC13589i != null) {
                    abstractC13589i.mo21590M1();
                }
            } else if (callContextMessage.f11499d == FeatureType.MID_CALL && l.a(callContextMessage.f11497b, c13609t.f39456f.f39376p.mo21200g())) {
                C13590j.m21548Qj(c13609t.f39456f, callContextMessage);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m21489s(Object obj) {
            C25225a.m3932a3(obj);
            CallContextMessage callContextMessage = (CallContextMessage) this.f39457e;
            if (callContextMessage == null) {
                AbstractC13589i abstractC13589i = (AbstractC13589i) C13609t.this.f39456f.f57683a;
                if (abstractC13589i != null) {
                    abstractC13589i.mo21590M1();
                }
            } else if (callContextMessage.f11499d == FeatureType.MID_CALL && l.a(callContextMessage.f11497b, C13609t.this.f39456f.f39376p.mo21200g())) {
                C13590j.m21548Qj(C13609t.this.f39456f, callContextMessage);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13609t(C13590j c13590j, d dVar) {
        super(2, dVar);
        this.f39456f = c13590j;
    }

    /* renamed from: i */
    public final d<s> m21494i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13609t(this.f39456f, dVar);
    }

    /* renamed from: k */
    public final Object m21493k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13609t(this.f39456f, dVar).m21492s(s.a);
    }

    /* renamed from: s */
    public final Object m21492s(Object obj) {
        a aVar = a.a;
        int i = this.f39455e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            a1<CallContextMessage> mo14516i = this.f39456f.f39384x.mo14516i();
            C13610a c13610a = new C13610a(null);
            this.f39455e = 1;
            if (s1.a.a.a.v0.f.d.g0(mo14516i, c13610a, this) == aVar) {
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
