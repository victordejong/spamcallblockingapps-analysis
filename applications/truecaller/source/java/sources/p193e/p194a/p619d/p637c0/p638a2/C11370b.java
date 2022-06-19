package p193e.p194a.p619d.p637c0.p638a2;

import com.truecaller.common.network.KnownDomain;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.d.c0.a2.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/a2/b.class */
public final class C11370b extends m implements a<KnownDomain> {

    /* renamed from: b */
    public final /* synthetic */ C11371c f33413b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11370b(C11371c c11371c) {
        super(0);
        this.f33413b = c11371c;
    }

    public Object invoke() {
        KnownDomain mo20942a = this.f33413b.f33418e.mo20942a();
        return (mo20942a != null && mo20942a.ordinal() == 0) ? KnownDomain.DOMAIN_OTHER_REGIONS : KnownDomain.DOMAIN_REGION_1;
    }
}
