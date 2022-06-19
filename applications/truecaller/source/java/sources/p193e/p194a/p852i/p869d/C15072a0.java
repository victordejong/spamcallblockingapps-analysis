package p193e.p194a.p852i.p869d;

import com.tenor.android.core.constant.ViewAction;
import javax.inject.Inject;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import p193e.p194a.p852i.p896f0.AbstractC15162c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.z.c.l;
/* renamed from: e.a.i.d.a0 */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/a0.class */
public final class C15072a0 extends AbstractC15096s<AbstractC15085n.AbstractC15091f> implements AbstractC15084m {

    /* renamed from: c */
    public final AbstractC15162c f43021c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15072a0(AbstractC15162c abstractC15162c) {
        super(abstractC15162c);
        l.e(abstractC15162c, "loader");
        this.f43021c = abstractC15162c;
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: A */
    public void mo19167A(AbstractC15085n.AbstractC15091f abstractC15091f, AbstractC15183d abstractC15183d) {
        l.e(abstractC15091f, ViewAction.VIEW);
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: B */
    public boolean mo19166B(AbstractC15183d abstractC15183d) {
        return this.f43021c.m19092h();
    }
}
