package p193e.p194a.p852i.p869d;

import e.a.i.f0.m.a;
import e.a.i.f0.m.c;
import e.a.i.f0.m.f;
import e.a.i.f0.m.h;
import java.util.Objects;
import p193e.p194a.p1111o2.AbstractC18895d;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p852i.p869d.AbstractC15085n;
import p193e.p194a.p852i.p896f0.AbstractC15162c;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.z.c.l;
/* renamed from: e.a.i.d.s */
/* loaded from: classes2-dex2jar.jar:e/a/i/d/s.class */
public abstract class AbstractC15096s<V extends AbstractC15085n> extends AbstractC18895d<V> {

    /* renamed from: b */
    public final AbstractC15162c f43039b;

    public AbstractC15096s(AbstractC15162c abstractC15162c) {
        l.e(abstractC15162c, "loader");
        this.f43039b = abstractC15162c;
    }

    /* renamed from: A */
    public abstract void mo19167A(V v, AbstractC15183d abstractC15183d);

    /* renamed from: B */
    public abstract boolean mo19166B(AbstractC15183d abstractC15183d);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC15085n abstractC15085n = (AbstractC15085n) obj;
        l.e(abstractC15085n, "itemView");
        try {
            mo19167A(abstractC15085n, this.f43039b.m19095e(i));
        } catch (ClassCastException e) {
            if (abstractC15085n instanceof AbstractC15085n.AbstractC15088c) {
                AbstractC15085n.AbstractC15088c abstractC15088c = (AbstractC15085n.AbstractC15088c) abstractC15085n;
                AbstractC15183d m19095e = this.f43039b.m19095e(i);
                Objects.requireNonNull(m19095e, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdHouseHolder");
                abstractC15088c.mo19175C1((f) m19095e);
            } else if (abstractC15085n instanceof AbstractC15085n.AbstractC15089d) {
                AbstractC15085n.AbstractC15089d abstractC15089d = (AbstractC15085n.AbstractC15089d) abstractC15085n;
                AbstractC15183d m19095e2 = this.f43039b.m19095e(i);
                Objects.requireNonNull(m19095e2, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdNativeHolder");
                abstractC15089d.mo19174b4((h) m19095e2);
            } else if (abstractC15085n instanceof AbstractC15085n.AbstractC15086a) {
                AbstractC15085n.AbstractC15086a abstractC15086a = (AbstractC15085n.AbstractC15086a) abstractC15085n;
                AbstractC15183d m19095e3 = this.f43039b.m19095e(i);
                Objects.requireNonNull(m19095e3, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdBannerHolder");
                abstractC15086a.mo19177J1((a) m19095e3);
            } else if (!(abstractC15085n instanceof AbstractC15085n.AbstractC15087b)) {
                C10480a.m26061I1(e);
            } else {
                AbstractC15085n.AbstractC15087b abstractC15087b = (AbstractC15085n.AbstractC15087b) abstractC15085n;
                AbstractC15183d m19095e4 = this.f43039b.m19095e(i);
                Objects.requireNonNull(m19095e4, "null cannot be cast to non-null type com.truecaller.ads.provider.holders.AdCustomHolder");
                abstractC15087b.mo19176c4((c) m19095e4);
            }
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return Integer.MAX_VALUE;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return i;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public final boolean mo14344m(int i) {
        return mo19166B(this.f43039b.m19095e(i));
    }
}
