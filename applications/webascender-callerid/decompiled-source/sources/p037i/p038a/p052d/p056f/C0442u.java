package p037i.p038a.p052d.p056f;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import p037i.p038a.p052d.p053c.C0416e;
/* renamed from: i.a.d.f.u */
/* loaded from: classes2-dex2jar.jar:i/a/d/f/u.class */
public final /* synthetic */ class C0442u {
    /* renamed from: a */
    public static void m203a(AbstractC0443v vVar) {
        vVar.shutdown().m255d(10L, TimeUnit.SECONDS);
    }

    /* renamed from: b */
    public static C0416e m202b(AbstractC0443v vVar) {
        return C0416e.m252g();
    }

    /* renamed from: c */
    public static C0416e m201c(AbstractC0443v vVar) {
        return vVar.m198b0();
    }

    /* renamed from: d */
    public static AbstractC0443v m200d(Iterable<AbstractC0443v> iterable) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC0443v vVar : iterable) {
            arrayList.add(vVar);
        }
        return arrayList.isEmpty() ? j.a() : arrayList.size() == 1 ? (AbstractC0443v) arrayList.get(0) : i.a(arrayList);
    }
}
