package p131c.p161d.p170b.p173b.p176i.p184y;

import java.util.concurrent.Executor;
import java.util.logging.Logger;
import p131c.p161d.p170b.p173b.AbstractC2498g;
import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.C2577r;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2587e;
import p131c.p161d.p170b.p173b.p176i.p179u.AbstractC2596l;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.AbstractC2633r;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
import p131c.p161d.p170b.p173b.p176i.p187z.AbstractC2680a;
/* renamed from: c.d.b.b.i.y.c */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/c.class */
public class C2607c implements AbstractC2609e {

    /* renamed from: f */
    public static final Logger f9673f = Logger.getLogger(C2577r.class.getName());

    /* renamed from: a */
    public final AbstractC2633r f9674a;

    /* renamed from: b */
    public final Executor f9675b;

    /* renamed from: c */
    public final AbstractC2587e f9676c;

    /* renamed from: d */
    public final AbstractC2644c f9677d;

    /* renamed from: e */
    public final AbstractC2680a f9678e;

    public C2607c(Executor executor, AbstractC2587e eVar, AbstractC2633r rVar, AbstractC2644c cVar, AbstractC2680a aVar) {
        this.f9675b = executor;
        this.f9676c = eVar;
        this.f9674a = rVar;
        this.f9677d = cVar;
        this.f9678e = aVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m29439a(C2607c cVar, AbstractC2571m mVar, AbstractC2562h hVar) {
        cVar.f9677d.mo29365a(mVar, hVar);
        cVar.f9674a.mo29403a(mVar, 1);
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ void m29440a(C2607c cVar, AbstractC2571m mVar, AbstractC2498g gVar, AbstractC2562h hVar) {
        try {
            AbstractC2596l lVar = cVar.f9676c.get(mVar.mo29506a());
            if (lVar == null) {
                String format = String.format("Transport backend '%s' is not registered", mVar.mo29506a());
                f9673f.warning(format);
                gVar.mo23816a(new IllegalArgumentException(format));
                return;
            }
            cVar.f9678e.mo29298a(C2606b.m29441a(cVar, mVar, lVar.mo29458a(hVar)));
            gVar.mo23816a(null);
        } catch (Exception e) {
            Logger logger = f9673f;
            logger.warning("Error scheduling event " + e.getMessage());
            gVar.mo23816a(e);
        }
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.AbstractC2609e
    /* renamed from: a */
    public void mo29436a(AbstractC2571m mVar, AbstractC2562h hVar, AbstractC2498g gVar) {
        this.f9675b.execute(RunnableC2605a.m29442a(this, mVar, gVar, hVar));
    }
}
