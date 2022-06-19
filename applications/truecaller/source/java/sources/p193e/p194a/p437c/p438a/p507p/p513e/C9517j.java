package p193e.p194a.p437c.p438a.p507p.p513e;

import com.mopub.common.Constants;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p524b.AbstractC9689h;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.e.j */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/j.class */
public final class C9517j<O> implements AbstractC25373a<Map<String, Boolean>> {

    /* renamed from: a */
    public final /* synthetic */ C9507f f28851a;

    public C9517j(C9507f c9507f) {
        this.f28851a = c9507f;
    }

    @Override // p1727n3.p1728a.p1730e.AbstractC25373a
    /* renamed from: a */
    public void mo3695a(Map<String, Boolean> map) {
        Set<Map.Entry<String, Boolean>> entrySet = map.entrySet();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(entrySet, 10));
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            arrayList.add(new k(entry.getKey(), entry.getValue()));
        }
        l.e(arrayList, "$this$unzip");
        int m4004J = C25225a.m4004J(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(m4004J);
        ArrayList arrayList3 = new ArrayList(m4004J);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            k kVar = (k) it2.next();
            arrayList2.add(kVar.a);
            arrayList3.add(kVar.b);
        }
        ArrayList arrayList4 = new ArrayList(C25225a.m4004J(arrayList3, 10));
        Iterator it3 = arrayList3.iterator();
        while (true) {
            int i = 0;
            if (!it3.hasNext()) {
                break;
            }
            Boolean bool = (Boolean) it3.next();
            l.d(bool, "it");
            if (!bool.booleanValue()) {
                i = -1;
            }
            arrayList4.add(Integer.valueOf(i));
        }
        AbstractC9689h abstractC9689h = this.f28851a.f28833g;
        if (abstractC9689h == null) {
            l.l("permissionHelper");
            throw null;
        }
        Object[] array = arrayList2.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        abstractC9689h.mo27298e((String[]) array, i.R0(arrayList4));
        AbstractC9689h abstractC9689h2 = this.f28851a.f28833g;
        if (abstractC9689h2 == null) {
            l.l("permissionHelper");
            throw null;
        }
        boolean mo27296g = abstractC9689h2.mo27296g();
        if (mo27296g) {
            this.f28851a.m27487SA();
        }
        InsightsSmartFeedViewModel m27488RA = this.f28851a.m27488RA();
        Objects.requireNonNull(m27488RA);
        l.e("read_sms", "eventCategory");
        m27488RA.m35154e("read_sms", "click", mo27296g ? "granted" : Constants.TAS_DENIED);
    }
}
