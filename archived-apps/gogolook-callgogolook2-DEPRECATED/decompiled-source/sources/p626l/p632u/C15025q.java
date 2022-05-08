package p626l.p632u;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.u.q */
/* loaded from: classes3-dex2jar.jar:l/u/q.class */
public class C15025q extends C15024p {
    /* renamed from: a */
    public static final <T> void m554a(List<T> list, Comparator<? super T> comparator) {
        C15149k.m377b(list, "$this$sortWith");
        C15149k.m377b(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }

    /* renamed from: c */
    public static final <T extends Comparable<? super T>> void m553c(List<T> list) {
        C15149k.m377b(list, "$this$sort");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }
}
