package p193e.p194a.p852i.p869d;

import com.tenor.android.core.constant.ViewAction;
import com.truecaller.ads.provider.holders.AdHolderType;
import e.a.i.f0.m.h;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import p193e.p194a.p852i.p896f0.AbstractC15162c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.z.c.l;
/* renamed from: e.a.i.d.y */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/y.class */
public final class C15102y extends AbstractC15096s<AbstractC15085n.AbstractC15089d> implements AbstractC15082k {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15102y(AbstractC15162c abstractC15162c) {
        super(abstractC15162c);
        l.e(abstractC15162c, "loader");
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: A */
    public void mo19167A(AbstractC15085n.AbstractC15089d abstractC15089d, AbstractC15183d abstractC15183d) {
        AbstractC15085n.AbstractC15089d abstractC15089d2 = abstractC15089d;
        l.e(abstractC15089d2, ViewAction.VIEW);
        Objects.requireNonNull(abstractC15183d, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdNativeHolder");
        abstractC15089d2.mo19174b4((h) abstractC15183d);
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: B */
    public boolean mo19166B(AbstractC15183d abstractC15183d) {
        return (abstractC15183d != null ? abstractC15183d.getType() : null) == AdHolderType.NATIVE_AD;
    }
}
