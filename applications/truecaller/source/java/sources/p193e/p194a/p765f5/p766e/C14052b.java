package p193e.p194a.p765f5.p766e;

import com.truecaller.swish.deeplink.data.SwishResultDto;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.f5.e.b */
/* loaded from: classes14-dex2jar.jar:e/a/f5/e/b.class */
public final class C14052b implements AbstractC19549v {

    /* renamed from: a */
    public final SwishResultDto f40632a;

    public C14052b(SwishResultDto swishResultDto) {
        l.e(swishResultDto, "swishResult");
        this.f40632a = swishResultDto;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Double amount;
        AbstractC19580x.C19583c c19583c = AbstractC19580x.C19583c.f54428a;
        String result = this.f40632a.getResult();
        if (result == null || (amount = this.f40632a.getAmount()) == null) {
            return c19583c;
        }
        double doubleValue = amount.doubleValue();
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15847e("");
        m15852a.m15850b("Swish_Result");
        m15852a.m15848d(C25225a.m3938Z1(new k("Status", result)));
        m15852a.m15849c(C25225a.m3938Z1(new k("Amount", Double.valueOf(doubleValue))));
        return new AbstractC19580x.C19584d(m15852a.build());
    }
}
