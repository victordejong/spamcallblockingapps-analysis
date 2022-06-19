package p193e.p194a.p619d.p657v.p658k;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.C11513x0;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import p193e.p194a.p619d.p657v.C11839g;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.i0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.k;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/i.class */
public final class C11922i implements i0, AbstractC11913g {

    /* renamed from: a */
    public final LinkedHashMap<Integer, k<Integer, AbstractC12020a>> f35012a = new LinkedHashMap<>();

    /* renamed from: b */
    public int f35013b;

    /* renamed from: c */
    public final C11839g f35014c;

    /* renamed from: d */
    public final AbstractC11598i f35015d;

    /* renamed from: e */
    public final /* synthetic */ i0 f35016e;

    @Inject
    public C11922i(i0 i0Var, C11839g c11839g, AbstractC11598i abstractC11598i) {
        l.e(i0Var, "coroutineScope");
        l.e(c11839g, "peers");
        l.e(abstractC11598i, "callInfoRepository");
        this.f35016e = i0Var;
        this.f35014c = c11839g;
        this.f35015d = abstractC11598i;
        d.w2(this, (f) null, (j0) null, new C11916h(this, null), 3, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f35016e.getCoroutineContext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v64, types: [java.util.List] */
    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11913g
    /* renamed from: n */
    public List<C11513x0> mo23828n() {
        ArrayList arrayList;
        int i;
        if (this.f35012a.isEmpty()) {
            arrayList = null;
        } else {
            Collection<k<Integer, AbstractC12020a>> values = this.f35012a.values();
            l.d(values, "peerIdCallMap.values");
            List<k> S0 = i.S0(values);
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(S0, 10));
            for (k kVar : S0) {
                int intValue = ((Number) kVar.a).intValue();
                AbstractC12020a abstractC12020a = (AbstractC12020a) kVar.b;
                String mo24387s = this.f35015d.mo24387s(abstractC12020a.mo23701d());
                if (((Boolean) abstractC12020a.mo23700f().getValue()).booleanValue()) {
                    AbstractC12022c abstractC12022c = (AbstractC12022c) abstractC12020a.getState().getValue();
                    if (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12026b) {
                        i = -1;
                    } else if ((abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12027c) || (abstractC12022c instanceof AbstractC12022c.AbstractC12024b.C12030f)) {
                        i = 0;
                    }
                    arrayList2.add(new C11513x0(mo24387s, i, intValue));
                }
                i = 1;
                arrayList2.add(new C11513x0(mo24387s, i, intValue));
            }
            Iterable iterable = (Iterable) this.f35015d.mo24405a().getValue();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : iterable) {
                if (!this.f35012a.containsKey(Integer.valueOf(((C11593e) obj).f33990a))) {
                    arrayList3.add(obj);
                }
            }
            ArrayList arrayList4 = new ArrayList(C25225a.m4004J(arrayList3, 10));
            Iterator it = arrayList3.iterator();
            while (it.hasNext()) {
                C11593e c11593e = (C11593e) it.next();
                AbstractC11598i abstractC11598i = this.f35015d;
                int i2 = this.f35013b;
                this.f35013b = i2 + 1;
                arrayList4.add(new C11513x0(abstractC11598i.mo24387s(c11593e.f33990a), 1, i2));
            }
            arrayList = i.l0(arrayList2, arrayList4);
        }
        if (arrayList == null) {
            List S02 = i.S0((Iterable) this.f35015d.mo24405a().getValue());
            arrayList = new ArrayList(C25225a.m4004J(S02, 10));
            int i3 = 0;
            for (Object obj2 : S02) {
                if (i3 < 0) {
                    i.N0();
                    throw null;
                }
                arrayList.add(new C11513x0(this.f35015d.mo24387s(((C11593e) obj2).f33990a), 1, i3));
                i3++;
            }
        }
        this.f35012a.isEmpty();
        String str = "History is: " + arrayList;
        return arrayList;
    }
}
