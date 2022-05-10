package p131c.p372f.p373a.p374a.p375a.p377i;

import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i.C6442a;
/* renamed from: c.f.a.a.a.i.a */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/i/a.class */
public abstract class AbstractC6417a {

    /* renamed from: a */
    public InternalAvidAdSession f20099a;

    /* renamed from: b */
    public C6442a f20100b;

    public AbstractC6417a(InternalAvidAdSession internalAvidAdSession, C6442a aVar) {
        this.f20099a = internalAvidAdSession;
        this.f20100b = aVar;
    }

    /* renamed from: t */
    public void m20916t() {
        if (this.f20099a == null) {
            throw new IllegalStateException("The AVID ad session is ended. Please ensure you are not recording events after the session has ended.");
        }
    }

    /* renamed from: u */
    public void m20915u() {
        this.f20099a = null;
        this.f20100b = null;
    }

    /* renamed from: v */
    public InternalAvidAdSession m20914v() {
        return this.f20099a;
    }

    /* renamed from: w */
    public C6442a m20913w() {
        return this.f20100b;
    }
}
