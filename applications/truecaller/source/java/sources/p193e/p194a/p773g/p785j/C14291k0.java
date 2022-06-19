package p193e.p194a.p773g.p785j;

import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import s1.z.c.l;
/* renamed from: e.a.g.j.k0 */
/* loaded from: classes4-dex2jar.jar:e/a/g/j/k0.class */
public final class C14291k0 {

    /* renamed from: a */
    public final Provider<AbstractC11476s1> f41352a;

    /* renamed from: b */
    public final AbstractC21881d f41353b;

    /* renamed from: c */
    public final C8601l0 f41354c;

    @Inject
    public C14291k0(Provider<AbstractC11476s1> provider, AbstractC21881d abstractC21881d, C8601l0 c8601l0) {
        l.e(provider, "voipUtil");
        l.e(abstractC21881d, "generalSettings");
        l.e(c8601l0, "timestampUtil");
        this.f41352a = provider;
        this.f41353b = abstractC21881d;
        this.f41354c = c8601l0;
    }
}
