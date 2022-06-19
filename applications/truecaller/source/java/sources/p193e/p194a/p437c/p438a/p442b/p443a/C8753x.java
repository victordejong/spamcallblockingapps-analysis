package p193e.p194a.p437c.p438a.p442b.p443a;

import java.util.Objects;
import p193e.p194a.p437c.p438a.p442b.p445c.C8768e;
import p193e.p194a.p437c.p531c0.C10031q;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10530c;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.b.a.x */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/b/a/x.class */
public final class C8753x extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ C8749v f26724b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8753x(C8749v c8749v) {
        super(0);
        this.f26724b = c8749v;
    }

    public Object invoke() {
        Objects.requireNonNull(C8696b.f26613f);
        new C8696b().show(this.f26724b.getChildFragmentManager(), C8696b.f26612e);
        AbstractC10060c abstractC10060c = this.f26724b.f26715a;
        if (abstractC10060c == null) {
            l.l("analyticsManager");
            throw null;
        }
        C8768e c8768e = C8768e.f26761e;
        C10530c c10530c = C8768e.f26760d;
        c10530c.m25824d("infocard");
        C8749v c8749v = this.f26724b;
        String m26802b = C10031q.m26802b(c8749v.f26719e, c8749v.f26720f);
        if (m26802b != null) {
            c10530c.m25822f(m26802b);
        }
        abstractC10060c.mo26757a(c10530c.m25827a());
        return s.a;
    }
}
