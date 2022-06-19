package p193e.p194a.p852i.p869d;

import com.tenor.android.core.constant.ViewAction;
import com.truecaller.ads.provider.holders.AdHolderType;
import e.a.i.f0.m.f;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import p193e.p194a.p852i.p896f0.AbstractC15162c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.z.c.l;
/* renamed from: e.a.i.d.w */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/w.class */
public final class C15100w extends AbstractC15096s<AbstractC15085n.AbstractC15088c> implements AbstractC15081j {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15100w(AbstractC15162c abstractC15162c) {
        super(abstractC15162c);
        l.e(abstractC15162c, "loader");
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: A */
    public void mo19167A(AbstractC15085n.AbstractC15088c abstractC15088c, AbstractC15183d abstractC15183d) {
        AbstractC15085n.AbstractC15088c abstractC15088c2 = abstractC15088c;
        l.e(abstractC15088c2, ViewAction.VIEW);
        Objects.requireNonNull(abstractC15183d, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdHouseHolder");
        abstractC15088c2.mo19175C1((f) abstractC15183d);
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: B */
    public boolean mo19166B(AbstractC15183d abstractC15183d) {
        return (abstractC15183d != null ? abstractC15183d.getType() : null) == AdHolderType.HOUSE_AD;
    }
}
