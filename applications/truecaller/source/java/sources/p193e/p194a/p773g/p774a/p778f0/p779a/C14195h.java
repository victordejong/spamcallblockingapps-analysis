package p193e.p194a.p773g.p774a.p778f0.p779a;

import e.m.d.y.n;
import java.util.Objects;
import p193e.p194a.p773g.p785j.C14316w;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
/* renamed from: e.a.g.a.f0.a.h */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/f0/a/h.class */
public final class C14195h implements a<s> {

    /* renamed from: a */
    public final /* synthetic */ C14196i f40949a;

    public C14195h(C14196i c14196i) {
        this.f40949a = c14196i;
    }

    public Object invoke() {
        C14191d c14191d = this.f40949a.f40954e;
        c14191d.f40943d = true;
        String str = c14191d.f40941b;
        if (str != null) {
            C14316w c14316w = c14191d.f40944e;
            Objects.requireNonNull(c14316w);
            l.e(str, "analyticsContext");
            n.y1(c14316w.f41405a, str, "positiveButton");
        }
        Objects.requireNonNull(c14191d.f40944e);
        C15571h.m18626y("GOOGLE_REVIEW_DONE", true);
        C15571h.m18626y("FEEDBACK_LIKES_TRUECALLER", true);
        Objects.requireNonNull(c14191d.f40944e);
        C15571h.m18628w("FEEDBACK_DISMISSED_COUNT", 0L);
        AbstractC14190c abstractC14190c = (AbstractC14190c) c14191d.f57683a;
        if (abstractC14190c != null) {
            abstractC14190c.mo20593a();
        }
        AbstractC14189b abstractC14189b = c14191d.f40942c;
        if (abstractC14189b != null) {
            abstractC14189b.mo20596a();
        }
        return s.a;
    }
}
