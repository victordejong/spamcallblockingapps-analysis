package p193e.p194a.p852i.p869d;

import com.tenor.android.core.constant.ViewAction;
import com.truecaller.ads.provider.holders.AdHolderType;
import e.a.i.f0.m.a;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import p193e.p194a.p852i.p896f0.AbstractC15162c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.z.c.l;
/* renamed from: e.a.i.d.t */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/t.class */
public final class C15097t extends AbstractC15096s<AbstractC15085n.AbstractC15086a> implements AbstractC15079h {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15097t(AbstractC15162c abstractC15162c) {
        super(abstractC15162c);
        l.e(abstractC15162c, "loader");
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: A */
    public void mo19167A(AbstractC15085n.AbstractC15086a abstractC15086a, AbstractC15183d abstractC15183d) {
        AbstractC15085n.AbstractC15086a abstractC15086a2 = abstractC15086a;
        l.e(abstractC15086a2, ViewAction.VIEW);
        Objects.requireNonNull(abstractC15183d, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdBannerHolder");
        abstractC15086a2.mo19177J1((a) abstractC15183d);
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: B */
    public boolean mo19166B(AbstractC15183d abstractC15183d) {
        return (abstractC15183d != null ? abstractC15183d.getType() : null) == AdHolderType.BANNER_AD;
    }
}
