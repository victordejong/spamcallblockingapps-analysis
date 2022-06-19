package p193e.p194a.p437c.p526c.p529e;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p193e.p194a.p437c.p526c.AbstractC9786c;
import p193e.p194a.p437c.p552i.p555c.AbstractC10302a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.z.c.l;
/* renamed from: e.a.c.c.e.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/e/a.class */
public final class C9980a {

    /* renamed from: a */
    public final List<AbstractC9786c> f29750a;

    /* renamed from: b */
    public final AbstractC10302a f29751b;

    public C9980a(AbstractC10302a abstractC10302a) {
        l.e(abstractC10302a, "databaseManager");
        this.f29751b = abstractC10302a;
        List<AbstractC9786c> synchronizedList = Collections.synchronizedList(new ArrayList());
        l.d(synchronizedList, "Collections.synchronizedList(arrayListOf())");
        this.f29750a = synchronizedList;
    }

    /* renamed from: a */
    public final Object m26981a(d<? super s> dVar) {
        ArrayList arrayList = new ArrayList();
        for (AbstractC9786c abstractC9786c : this.f29750a) {
            if (abstractC9786c instanceof AbstractC9786c.C9787a) {
                arrayList.add(abstractC9786c);
            }
        }
        Object mo26409a = this.f29751b.mo26409a(arrayList, dVar);
        return mo26409a == a.a ? mo26409a : s.a;
    }
}
