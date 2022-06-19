package p193e.p194a.p437c.p606w;

import java.util.Comparator;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p579q.AbstractC10513j;
import s1.i;
/* renamed from: e.a.c.w.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/o.class */
public final class C10808o<T> implements Comparator {
    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        Comparable comparable;
        Comparable comparable2;
        AbstractC10513j abstractC10513j = (AbstractC10513j) t2;
        if (abstractC10513j instanceof AbstractC10513j.C10515b) {
            comparable = ((AbstractC10513j.C10515b) abstractC10513j).f31277h.f31377x;
        } else if (!(abstractC10513j instanceof AbstractC10513j.C10514a)) {
            throw new i();
        } else {
            comparable = ((AbstractC10513j.C10514a) abstractC10513j).f31267h.f31322p;
        }
        AbstractC10513j abstractC10513j2 = (AbstractC10513j) t;
        if (abstractC10513j2 instanceof AbstractC10513j.C10515b) {
            comparable2 = ((AbstractC10513j.C10515b) abstractC10513j2).f31277h.f31377x;
        } else if (!(abstractC10513j2 instanceof AbstractC10513j.C10514a)) {
            throw new i();
        } else {
            comparable2 = ((AbstractC10513j.C10514a) abstractC10513j2).f31267h.f31322p;
        }
        return C25225a.m4000K(comparable, comparable2);
    }
}
