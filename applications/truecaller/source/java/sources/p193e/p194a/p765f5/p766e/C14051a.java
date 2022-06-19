package p193e.p194a.p765f5.p766e;

import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
/* renamed from: e.a.f5.e.a */
/* loaded from: classes14-dex2jar.jar:e/a/f5/e/a.class */
public final class C14051a implements AbstractC19549v {

    /* renamed from: a */
    public final String f40630a;

    /* renamed from: b */
    public final double f40631b;

    public C14051a(boolean z, double d) {
        this.f40631b = d;
        this.f40630a = z ? "Yes" : "No";
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Map<CharSequence, CharSequence> m3938Z1 = C25225a.m3938Z1(new k("HasMessage", this.f40630a));
        Map<CharSequence, Double> m3938Z12 = C25225a.m3938Z1(new k("Amount", Double.valueOf(this.f40631b)));
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15847e("");
        m15852a.m15850b("Swish_Payment_Sent");
        m15852a.m15848d(m3938Z1);
        m15852a.m15849c(m3938Z12);
        return new AbstractC19580x.C19584d(m15852a.build());
    }
}
