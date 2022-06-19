package p193e.p194a.p437c.p438a.p480j.p481a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d;
import p193e.p194a.p437c.p438a.p480j.p482b.C9132a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9133b;
import p193e.p194a.p437c.p438a.p480j.p482b.C9134c;
import p193e.p194a.p437c.p438a.p480j.p482b.C9139h;
import p193e.p194a.p437c.p438a.p480j.p482b.C9140i;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import q3.a.x2.w0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/c.class */
public final class C9125c extends AbstractC9107c<C9139h, List<? extends AbstractC9135d>> {

    /* renamed from: b */
    public final f f27808b;

    /* renamed from: c */
    public final C9124b f27809c;

    /* renamed from: d */
    public final C9127d f27810d;

    @e(c = "com.truecaller.insights.ui.filters.domain.GetQuickFiltersUseCase$execute$1", f = "GetQuickFiltersUseCase.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.j.a.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/c$a.class */
    public static final class C9126a extends i implements q<C9133b, List<? extends C9141j>, d<? super List<? extends AbstractC9135d>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f27811e;

        /* renamed from: f */
        public /* synthetic */ Object f27812f;

        /* renamed from: h */
        public final /* synthetic */ C9139h f27814h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9126a(C9139h c9139h, d dVar) {
            super(3, dVar);
            C9125c.this = r5;
            this.f27814h = c9139h;
        }

        /* renamed from: h */
        public final Object m27854h(Object obj, Object obj2, Object obj3) {
            C9133b c9133b = (C9133b) obj;
            List list = (List) obj2;
            d dVar = (d) obj3;
            l.e(c9133b, "categoryFilter");
            l.e(list, "senders");
            l.e(dVar, "continuation");
            C9126a c9126a = new C9126a(this.f27814h, dVar);
            c9126a.f27811e = c9133b;
            c9126a.f27812f = list;
            return c9126a.m27853s(s.a);
        }

        /* renamed from: s */
        public final Object m27853s(Object obj) {
            C25225a.m3932a3(obj);
            C9133b c9133b = (C9133b) this.f27811e;
            List list = (List) this.f27812f;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            C9125c c9125c = C9125c.this;
            List<C9134c> list2 = c9133b.f27832a;
            int i = this.f27814h.f27843a;
            Objects.requireNonNull(c9125c);
            for (int i2 = 0; i2 < i; i2++) {
                if (i2 < list2.size()) {
                    linkedHashSet.add(list2.get(i2));
                }
                if (i2 < list.size()) {
                    linkedHashSet.add(list.get(i2));
                }
            }
            C9125c c9125c2 = C9125c.this;
            List<C9134c> list3 = c9133b.f27832a;
            int i3 = this.f27814h.f27843a;
            Objects.requireNonNull(c9125c2);
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = list3.iterator();
            int i4 = 0;
            while (true) {
                boolean z = true;
                if (!it.hasNext()) {
                    ListIterator listIterator = arrayList.listIterator();
                    ArrayList arrayList2 = new ArrayList();
                    int i5 = 0;
                    for (Object obj2 : list) {
                        if (i5 < 0) {
                            s1.u.i.N0();
                            throw null;
                        }
                        if (i5 >= i3 && ((C9141j) obj2).f27852e) {
                            arrayList2.add(obj2);
                        }
                        i5++;
                    }
                    ListIterator listIterator2 = arrayList2.listIterator();
                    while (listIterator.hasNext() && listIterator2.hasNext()) {
                        linkedHashSet.add(listIterator.next());
                        linkedHashSet.add(listIterator2.next());
                    }
                    while (listIterator.hasNext()) {
                        linkedHashSet.add(listIterator.next());
                    }
                    while (listIterator2.hasNext()) {
                        linkedHashSet.add(listIterator2.next());
                    }
                    return s1.u.i.S0(linkedHashSet);
                }
                Object next = it.next();
                if (i4 < 0) {
                    s1.u.i.N0();
                    throw null;
                }
                C9134c c9134c = (C9134c) next;
                if (i4 < i3 || !c9134c.f27836c) {
                    z = false;
                }
                if (z) {
                    arrayList.add(next);
                }
                i4++;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9125c(@Named("IO") f fVar, C9124b c9124b, C9127d c9127d) {
        super(fVar);
        l.e(fVar, "ioContext");
        l.e(c9124b, "getCategoriesUseCase");
        l.e(c9127d, "getSendersUseCase");
        this.f27808b = fVar;
        this.f27809c = c9124b;
        this.f27810d = c9127d;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ List<? extends AbstractC9135d> mo27441a() {
        return s1.u.s.a;
    }

    /* renamed from: d */
    public q3.a.x2.f<List<AbstractC9135d>> mo27440b(C9139h c9139h) {
        l.e(c9139h, "input");
        Set<AbstractC10836e.C10840d> m26018T0 = C10480a.m26018T0(c9139h.f27844b);
        Set<AbstractC10836e.C10837a> m25910q0 = C10480a.m25910q0(c9139h.f27844b);
        Set<AbstractC10836e.C10838b> m25880w0 = C10480a.m25880w0(c9139h.f27844b);
        Set<AbstractC10836e.C10839c> m26050L0 = C10480a.m26050L0(c9139h.f27844b);
        return new w0(this.f27809c.m27874c(new C9132a(Integer.MAX_VALUE, false, s1.u.i.d1(s1.u.i.q0(s1.u.i.q0(m26018T0, m25910q0), m25880w0)), s1.u.i.d1(s1.u.i.q0(s1.u.i.q0(m26018T0, m25910q0), m25880w0)))), this.f27810d.m27874c(new C9140i("", c9139h.f27844b, m26050L0, true)), new C9126a(c9139h, null));
    }
}
