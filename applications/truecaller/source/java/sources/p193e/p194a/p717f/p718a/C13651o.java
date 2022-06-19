package p193e.p194a.p717f.p718a;

import com.truecaller.incallui.service.CallState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.incallui.callui.InCallUIPresenter$listenToCallStateChanges$1", f = "InCallUIPresenter.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.f.a.o */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/o.class */
public final class C13651o extends i implements p<CallState, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f39563e;

    /* renamed from: f */
    public final /* synthetic */ C13649n f39564f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13651o(C13649n c13649n, d dVar) {
        super(2, dVar);
        this.f39564f = c13649n;
    }

    /* renamed from: i */
    public final d<s> m21367i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13651o c13651o = new C13651o(this.f39564f, dVar);
        c13651o.f39563e = obj;
        return c13651o;
    }

    /* renamed from: k */
    public final Object m21366k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C13649n c13649n = this.f39564f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        int ordinal = ((CallState) obj).ordinal();
        if (ordinal == 1 || ordinal == 2) {
            AbstractC13648m abstractC13648m = (AbstractC13648m) c13649n.f57683a;
            if (abstractC13648m != null) {
                abstractC13648m.mo21389W0(CallState.STATE_DIALING);
            }
        } else if (ordinal == 3) {
            AbstractC13648m abstractC13648m2 = (AbstractC13648m) c13649n.f57683a;
            if (abstractC13648m2 != null) {
                abstractC13648m2.mo21382r0();
            }
        } else if (ordinal == 4 || ordinal == 5) {
            AbstractC13648m abstractC13648m3 = (AbstractC13648m) c13649n.f57683a;
            if (abstractC13648m3 != null) {
                abstractC13648m3.mo21395C0();
            }
            AbstractC13648m abstractC13648m4 = (AbstractC13648m) c13649n.f57683a;
            if (abstractC13648m4 != null) {
                abstractC13648m4.mo21389W0(CallState.STATE_ACTIVE);
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m21365s(Object obj) {
        s sVar = s.a;
        C25225a.m3932a3(obj);
        int ordinal = ((CallState) this.f39563e).ordinal();
        if (ordinal == 1 || ordinal == 2) {
            AbstractC13648m abstractC13648m = (AbstractC13648m) this.f39564f.f57683a;
            if (abstractC13648m != null) {
                abstractC13648m.mo21389W0(CallState.STATE_DIALING);
            }
        } else if (ordinal == 3) {
            AbstractC13648m abstractC13648m2 = (AbstractC13648m) this.f39564f.f57683a;
            if (abstractC13648m2 != null) {
                abstractC13648m2.mo21382r0();
            }
        } else if (ordinal != 4 && ordinal != 5) {
            return sVar;
        } else {
            C13649n c13649n = this.f39564f;
            AbstractC13648m abstractC13648m3 = (AbstractC13648m) c13649n.f57683a;
            if (abstractC13648m3 != null) {
                abstractC13648m3.mo21395C0();
            }
            AbstractC13648m abstractC13648m4 = (AbstractC13648m) c13649n.f57683a;
            if (abstractC13648m4 != null) {
                abstractC13648m4.mo21389W0(CallState.STATE_ACTIVE);
            }
        }
        return sVar;
    }
}
