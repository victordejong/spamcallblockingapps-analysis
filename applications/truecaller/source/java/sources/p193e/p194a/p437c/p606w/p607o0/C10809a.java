package p193e.p194a.p437c.p606w.p607o0;

import com.truecaller.insights.models.InsightsDomain;
import java.util.Comparator;
import java.util.Date;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p578p.C10480a;
import w3.b.a.p;
/* renamed from: e.a.c.w.o0.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o0/a.class */
public final class C10809a<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        p dueDate = ((InsightsDomain.Bill) t).getDueDate();
        if (dueDate == null) {
            dueDate = C10480a.m25967e3(new Date(0L));
        }
        p dueDate2 = ((InsightsDomain.Bill) t2).getDueDate();
        if (dueDate2 == null) {
            dueDate2 = C10480a.m25967e3(new Date(0L));
        }
        return C25225a.m4000K(dueDate, dueDate2);
    }
}
