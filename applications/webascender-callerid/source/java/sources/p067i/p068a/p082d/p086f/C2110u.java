package p067i.p068a.p082d.p086f;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import p067i.p068a.p082d.p083c.C2084e;
/* renamed from: i.a.d.f.u */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/u.class */
public final /* synthetic */ class C2110u {
    /* renamed from: a */
    public static void m203a(AbstractC2111v abstractC2111v) {
        abstractC2111v.shutdown().m255d(10L, TimeUnit.SECONDS);
    }

    /* renamed from: b */
    public static C2084e m202b(AbstractC2111v abstractC2111v) {
        return C2084e.m252g();
    }

    /* renamed from: c */
    public static C2084e m201c(AbstractC2111v abstractC2111v) {
        return abstractC2111v.m198b0();
    }

    /* renamed from: d */
    public static AbstractC2111v m200d(Iterable<AbstractC2111v> iterable) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC2111v abstractC2111v : iterable) {
            arrayList.add(abstractC2111v);
        }
        return arrayList.isEmpty() ? j.a() : arrayList.size() == 1 ? (AbstractC2111v) arrayList.get(0) : i.a(arrayList);
    }
}
