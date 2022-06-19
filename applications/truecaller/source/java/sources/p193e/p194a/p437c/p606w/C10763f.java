package p193e.p194a.p437c.p606w;

import com.truecaller.insights.models.InsightsDomain;
import java.util.Comparator;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c.w.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/f.class */
public final class C10763f<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        return C25225a.m4000K(((InsightsDomain.Bill) t2).getBillDateTime(), ((InsightsDomain.Bill) t).getBillDateTime());
    }
}
