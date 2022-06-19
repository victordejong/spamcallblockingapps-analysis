package p193e.p194a.p437c.p606w;

import com.truecaller.insights.models.InsightsDomain;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p523a0.AbstractC9617c0;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.z;
/* renamed from: e.a.c.w.n0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/n0.class */
public final class C10807n0 {

    /* renamed from: a */
    public final AbstractC9617c0 f32092a;

    @Inject
    public C10807n0(AbstractC9617c0 abstractC9617c0) {
        l.e(abstractC9617c0, "travelDataSource");
        this.f32092a = abstractC9617c0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* renamed from: a */
    public final List<InsightsDomain.C4062f> m25606a(List<InsightsDomain.C4062f> list, boolean z) {
        ArrayList arrayList;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            InsightsDomain.C4062f c4062f = (InsightsDomain.C4062f) obj;
            List T = i.T(new Object[]{c4062f.m35232d(), c4062f.m35227i(), c4062f.m35233c()});
            Object obj2 = linkedHashMap.get(T);
            ArrayList arrayList2 = obj2;
            if (obj2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(T, arrayList2);
            }
            ((List) arrayList2).add(obj);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            List list2 = (List) entry.getValue();
            if (list2.size() == 1) {
                arrayList = list2;
            } else {
                HashSet hashSet = new HashSet();
                arrayList = new ArrayList();
                for (Object obj3 : list2) {
                    InsightsDomain.C4062f c4062f2 = (InsightsDomain.C4062f) obj3;
                    if (hashSet.add(i.T(new Object[]{c4062f2.m35232d(), c4062f2.m35227i(), c4062f2.m35233c(), c4062f2.m35231e()}))) {
                        arrayList.add(obj3);
                    }
                }
                if (arrayList.size() != 1) {
                    ArrayList arrayList4 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (true) {
                        arrayList = arrayList4;
                        if (it.hasNext()) {
                            Object next = it.next();
                            if (((InsightsDomain.C4062f) next).m35231e().length() > 0) {
                                arrayList4.add(next);
                            }
                        }
                    }
                }
            }
            arrayList3.add(arrayList);
        }
        List m3825w0 = C25225a.m3825w0(arrayList3);
        ArrayList arrayList5 = new ArrayList();
        for (Object obj4 : m3825w0) {
            InsightsDomain.C4062f c4062f3 = (InsightsDomain.C4062f) obj4;
            l.e(c4062f3, "$this$isCancelled");
            z D = l.a(c4062f3.m35226j(), "alert") && l.a(c4062f3.m35235a(), "cancel") ? c4062f3.getMsgDateTime().D(1) : c4062f3.f12611a.D(1);
            if (!z ? new b().a(D) <= 0 : new b().a(D) > 0) {
                arrayList5.add(obj4);
            }
        }
        return arrayList5;
    }
}
