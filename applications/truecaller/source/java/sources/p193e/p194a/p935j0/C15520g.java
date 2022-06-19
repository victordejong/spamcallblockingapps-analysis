package p193e.p194a.p935j0;

import java.util.Locale;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import s1.z.c.l;
/* renamed from: e.a.j0.g */
/* loaded from: classes13-dex2jar.jar:e/a/j0/g.class */
public final class C15520g implements AbstractC15519f {

    /* renamed from: a */
    public final AbstractC19022f0 f43963a;

    @Inject
    public C15520g(AbstractC19022f0 abstractC19022f0) {
        l.e(abstractC19022f0, "deviceManager");
        this.f43963a = abstractC19022f0;
    }

    @Override // p193e.p194a.p935j0.AbstractC15519f
    /* renamed from: a */
    public boolean mo18716a() {
        return l.a(this.f43963a.mo14242d(), new Locale("en").getLanguage());
    }
}
