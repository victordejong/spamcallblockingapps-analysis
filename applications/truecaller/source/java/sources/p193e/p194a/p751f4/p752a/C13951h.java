package p193e.p194a.p751f4.p752a;

import java.io.IOException;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p911i3.AbstractC15266b;
import s1.z.c.l;
import u3.b0;
import u3.k0;
/* renamed from: e.a.f4.a.h */
/* loaded from: classes11-dex2jar.jar:e/a/f4/a/h.class */
public final class C13951h implements b0 {

    /* renamed from: a */
    public final AbstractC19854f<AbstractC15266b> f40368a;

    /* renamed from: b */
    public final AbstractC21396c f40369b;

    public C13951h(AbstractC19854f<AbstractC15266b> abstractC19854f, AbstractC21396c abstractC21396c) {
        l.e(abstractC19854f, "configManager");
        l.e(abstractC21396c, "forcedUpdateManager");
        this.f40368a = abstractC19854f;
        this.f40369b = abstractC21396c;
    }

    /* renamed from: a */
    public k0 m20946a(b0.a aVar) {
        k0 a;
        synchronized (this) {
            l.e(aVar, "chain");
            if (this.f40369b.mo9770f()) {
                throw new IOException("Client needs to be updated!");
            }
            a = aVar.a(aVar.request());
            if (a.e == 426) {
                this.f40368a.mo11854a().mo18984b().mo11831c();
            }
        }
        return a;
    }
}
