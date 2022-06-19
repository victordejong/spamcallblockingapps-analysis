package p193e.p194a.p673d0.p674a;

import javax.inject.Inject;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.z.c.l;
/* renamed from: e.a.d0.a.d */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/d.class */
public final class C12428d {

    /* renamed from: a */
    public final AbstractC13497p f36273a;

    @Inject
    public C12428d(AbstractC13497p abstractC13497p) {
        l.e(abstractC13497p, "multiSimManager");
        this.f36273a = abstractC13497p;
    }

    /* renamed from: a */
    public Integer m23072a(Integer num, boolean z) {
        if (num == null || num.intValue() == -1) {
            if (!this.f36273a.mo21740h()) {
                return null;
            }
            return Integer.valueOf(this.f36273a.mo21748n(z ? 1 : 2));
        }
        return num;
    }
}
