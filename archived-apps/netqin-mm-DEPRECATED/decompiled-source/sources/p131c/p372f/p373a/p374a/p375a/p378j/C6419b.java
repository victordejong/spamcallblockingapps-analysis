package p131c.p372f.p373a.p374a.p375a.p378j;

import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import p131c.p372f.p373a.p374a.p375a.p377i.AbstractC6417a;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i.C6442a;
/* renamed from: c.f.a.a.a.j.b */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/j/b.class */
public class C6419b extends AbstractC6417a implements AbstractC6418a {
    public C6419b(InternalAvidAdSession internalAvidAdSession, C6442a aVar) {
        super(internalAvidAdSession, aVar);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p378j.AbstractC6418a
    /* renamed from: l */
    public void mo20912l() {
        m20916t();
        if (!m20914v().m5440l()) {
            m20913w().m20861g();
            m20914v().m5438n();
            return;
        }
        throw new IllegalStateException("The AVID ad session is already ready. Please ensure you are only calling recordReadyEvent once for the deferred AVID ad session.");
    }
}
