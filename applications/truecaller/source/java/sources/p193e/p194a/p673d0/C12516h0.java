package p193e.p194a.p673d0;

import com.truecaller.callerid.CallerIdPerformanceTracker;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p1129p5.AbstractC19244l0;
import p193e.p194a.p1129p5.AbstractC19247m0;
import p193e.p194a.p1272u3.C20592g;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.d0.h0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/h0.class */
public final class C12516h0 implements CallerIdPerformanceTracker {

    /* renamed from: a */
    public final C20592g f36596a;

    /* renamed from: b */
    public final AbstractC19247m0 f36597b;

    @Inject
    public C12516h0(C20592g c20592g, AbstractC19247m0 abstractC19247m0) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19247m0, "traceUtil");
        this.f36596a = c20592g;
        this.f36597b = abstractC19247m0;
    }

    @Override // com.truecaller.callerid.CallerIdPerformanceTracker
    /* renamed from: a */
    public void mo22910a(AbstractC19244l0 abstractC19244l0) {
        C18479b.m14875a("[CallerIdPerformanceTracker] stop trace");
        if (abstractC19244l0 != null) {
            abstractC19244l0.stop();
        }
    }

    @Override // com.truecaller.callerid.CallerIdPerformanceTracker
    /* renamed from: b */
    public AbstractC19244l0 mo22909b(CallerIdPerformanceTracker.TraceType traceType) {
        l.e(traceType, "traceType");
        StringBuilder m8728C = C22128a.m8728C("[CallerIdPerformanceTracker] start trace ");
        m8728C.append(traceType.name());
        C18479b.m14875a(m8728C.toString());
        C20592g c20592g = this.f36596a;
        if (!c20592g.f57942i.m10941a(c20592g, C20592g.f57695p6[5]).isEnabled()) {
            return null;
        }
        return this.f36597b.mo13749a(traceType.name());
    }

    @Override // com.truecaller.callerid.CallerIdPerformanceTracker
    /* renamed from: c */
    public <R> R mo22908c(CallerIdPerformanceTracker.TraceType traceType, a<? extends R> aVar) {
        l.e(traceType, "traceType");
        l.e(aVar, "block");
        AbstractC19244l0 mo22909b = mo22909b(traceType);
        R r = (R) aVar.invoke();
        mo22910a(mo22909b);
        return r;
    }
}
