package p193e.p194a.p717f.p734z;

import java.util.LinkedHashMap;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1129p5.p1135v0.AbstractC19331a;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.i;
import s1.z.c.l;
/* renamed from: e.a.f.z.t */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/t.class */
public final class C13859t implements AbstractC19549v {

    /* renamed from: a */
    public final String f40210a = "InCallUINotShownDetected";

    /* renamed from: b */
    public final String f40211b = "number";

    /* renamed from: c */
    public final String f40212c = "state";

    /* renamed from: d */
    public final AbstractC19331a f40213d;

    public C13859t(AbstractC19331a abstractC19331a) {
        l.e(abstractC19331a, "state");
        this.f40213d = abstractC19331a;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Object obj;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String m13447a = this.f40213d.m13447a();
        if (m13447a != null) {
            linkedHashMap.put(this.f40211b, m13447a);
        }
        String str = this.f40212c;
        AbstractC19331a abstractC19331a = this.f40213d;
        if (abstractC19331a instanceof AbstractC19331a.C19332a) {
            obj = "Idle";
        } else if (abstractC19331a instanceof AbstractC19331a.C19333b) {
            obj = "OfHook";
        } else if (!(abstractC19331a instanceof AbstractC19331a.C19334c)) {
            throw new i();
        } else {
            obj = "Ringing";
        }
        linkedHashMap.put(str, obj);
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b(this.f40210a);
        m15852a.m15848d(linkedHashMap);
        return new AbstractC19580x.C19584d(m15852a.build());
    }
}
