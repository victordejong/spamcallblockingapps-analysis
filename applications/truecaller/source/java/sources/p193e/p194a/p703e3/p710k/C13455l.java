package p193e.p194a.p703e3.p710k;

import java.util.Objects;
import p193e.p194a.p1129p5.p1135v0.AbstractC19331a;
import p193e.p194a.p703e3.p710k.AbstractC13458o;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.e3.k.l */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/l.class */
public final class C13455l implements g<AbstractC19331a> {

    /* renamed from: a */
    public final /* synthetic */ C13435k f39057a;

    public C13455l(C13435k c13435k) {
        this.f39057a = c13435k;
    }

    /* renamed from: a */
    public Object m21797a(Object obj, d dVar) {
        AbstractC19331a abstractC19331a = (AbstractC19331a) obj;
        String str = "New call state: " + abstractC19331a;
        if (abstractC19331a instanceof AbstractC19331a.C19333b) {
            this.f39057a.f39001c.setValue(new AbstractC13458o.C13459a(abstractC19331a, this.f39057a.f39007i.mo13821a()));
        } else if (abstractC19331a instanceof AbstractC19331a.C19334c) {
            this.f39057a.f39002d.setValue(new AbstractC13458o.C13459a(abstractC19331a, this.f39057a.f39007i.mo13821a()));
        } else if (abstractC19331a instanceof AbstractC19331a.C19332a) {
            C13435k c13435k = this.f39057a;
            Integer mo13446b = abstractC19331a.mo13446b();
            Objects.requireNonNull(c13435k);
            AbstractC13458o.C13460b c13460b = AbstractC13458o.C13460b.f39069a;
            if (mo13446b != null) {
                Object value = c13435k.f39001c.getValue();
                AbstractC13458o abstractC13458o = (AbstractC13458o) value;
                if (!((abstractC13458o instanceof AbstractC13458o.C13459a) && l.a(((AbstractC13458o.C13459a) abstractC13458o).f39067a.mo13446b(), mo13446b))) {
                    value = null;
                }
                if (((AbstractC13458o) value) != null) {
                    c13435k.f39001c.setValue(c13460b);
                }
                Object value2 = c13435k.f39002d.getValue();
                AbstractC13458o abstractC13458o2 = (AbstractC13458o) value2;
                AbstractC13458o abstractC13458o3 = null;
                if ((abstractC13458o2 instanceof AbstractC13458o.C13459a) && l.a(((AbstractC13458o.C13459a) abstractC13458o2).f39067a.mo13446b(), mo13446b)) {
                    abstractC13458o3 = value2;
                }
                if (abstractC13458o3 != null) {
                    c13435k.f39002d.setValue(c13460b);
                }
            }
        }
        return s.a;
    }
}
