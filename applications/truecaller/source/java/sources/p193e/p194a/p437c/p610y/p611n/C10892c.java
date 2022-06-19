package p193e.p194a.p437c.p610y.p611n;

import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p610y.C10886k;
import s1.z.c.l;
/* renamed from: e.a.c.y.n.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/y/n/c.class */
public final class C10892c {

    /* renamed from: a */
    public final AbstractC19223c0 f32351a;

    /* renamed from: b */
    public final AbstractC9691j f32352b;

    /* renamed from: c */
    public final C10886k f32353c;

    @Inject
    public C10892c(AbstractC19223c0 abstractC19223c0, AbstractC9691j abstractC9691j, C10886k c10886k) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(c10886k, "smartCardSeedManager");
        this.f32351a = abstractC19223c0;
        this.f32352b = abstractC9691j;
        this.f32353c = c10886k;
    }
}
