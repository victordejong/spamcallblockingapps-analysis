package p193e.p194a.p852i.p869d;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.ads.provider.holders.AdHolderType;
import e.a.i.f0.m.b;
import e.a.i.f0.m.c;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p852i.p855b.C14991c;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import p193e.p194a.p852i.p896f0.AbstractC15162c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.z.c.l;
/* renamed from: e.a.i.d.u */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/u.class */
public final class C15098u extends AbstractC15096s<AbstractC15085n.AbstractC15087b> implements AbstractC15080i {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15098u(AbstractC15162c abstractC15162c) {
        super(abstractC15162c);
        l.e(abstractC15162c, "loader");
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: A */
    public void mo19167A(AbstractC15085n.AbstractC15087b abstractC15087b, AbstractC15183d abstractC15183d) {
        AbstractC15085n.AbstractC15087b abstractC15087b2 = abstractC15087b;
        l.e(abstractC15087b2, ViewAction.VIEW);
        Objects.requireNonNull(abstractC15183d, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdCustomHolder");
        abstractC15087b2.mo19176c4((c) abstractC15183d);
    }

    @Override // p193e.p194a.p852i.p869d.AbstractC15096s
    /* renamed from: B */
    public boolean mo19166B(AbstractC15183d abstractC15183d) {
        return (abstractC15183d != null ? abstractC15183d.getType() : null) == AdHolderType.CUSTOM_AD && (abstractC15183d instanceof c) && C14991c.f42775a.contains(((NativeCustomFormatAd) ((b) ((c) abstractC15183d)).b).getCustomFormatId());
    }
}
