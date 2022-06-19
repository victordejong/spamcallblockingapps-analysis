package p193e.p194a.p437c.p438a.p480j.p481a;

import com.huawei.hms.actions.SearchIntents;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p480j.p482b.C9140i;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p579q.C10511h;
import p193e.p194a.p437c.p606w.p607o0.p608k.AbstractC10836e;
import p193e.p194a.p437c.p606w.p607o0.p608k.C10834c;
import p193e.p194a.p437c.p606w.p607o0.p608k.C10835d;
import q3.a.x2.g;
import s1.s;
import s1.u.i;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.a.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/d.class */
public final class C9127d extends AbstractC9107c<C9140i, List<? extends C9141j>> {

    /* renamed from: b */
    public int f27815b;

    /* renamed from: c */
    public Set<AbstractC10836e.C10839c> f27816c = u.a;

    /* renamed from: d */
    public final f f27817d;

    /* renamed from: e */
    public final AbstractC10497d f27818e;

    /* renamed from: e.a.c.a.j.a.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/d$a.class */
    public static final class C9128a implements q3.a.x2.f<List<? extends C9141j>> {

        /* renamed from: a */
        public final /* synthetic */ q3.a.x2.f f27819a;

        /* renamed from: b */
        public final /* synthetic */ C9127d f27820b;

        /* renamed from: c */
        public final /* synthetic */ C9140i f27821c;

        /* renamed from: e.a.c.a.j.a.d$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/d$a$a.class */
        public static final class C9129a implements g<List<? extends C10511h>> {

            /* renamed from: a */
            public final /* synthetic */ g f27822a;

            /* renamed from: b */
            public final /* synthetic */ C9127d f27823b;

            /* renamed from: c */
            public final /* synthetic */ C9140i f27824c;

            /* renamed from: e.a.c.a.j.a.d$a$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/d$a$a$a.class */
            public static final class C9130a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f27825d;

                /* renamed from: e */
                public int f27826e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C9130a(d dVar) {
                    super(dVar);
                    C9129a.this = r4;
                }

                /* renamed from: s */
                public final Object m27849s(Object obj) {
                    this.f27825d = obj;
                    this.f27826e |= Integer.MIN_VALUE;
                    return C9129a.this.m27850a(null, this);
                }
            }

            public C9129a(g gVar, C9127d c9127d, C9140i c9140i) {
                this.f27822a = gVar;
                this.f27823b = c9127d;
                this.f27824c = c9140i;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m27850a(java.lang.Object r8, s1.w.d r9) {
                /*
                    Method dump skipped, instructions count: 437
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p480j.p481a.C9127d.C9128a.C9129a.m27850a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C9128a(q3.a.x2.f fVar, C9127d c9127d, C9140i c9140i) {
            this.f27819a = fVar;
            this.f27820b = c9127d;
            this.f27821c = c9140i;
        }

        /* renamed from: c */
        public Object m27851c(g gVar, d dVar) {
            Object c = this.f27819a.c(new C9129a(gVar, this.f27820b, this.f27821c), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9127d(@Named("IO") f fVar, AbstractC10497d abstractC10497d) {
        super(fVar);
        l.e(fVar, "ioContext");
        l.e(abstractC10497d, "insightsUiManager");
        this.f27817d = fVar;
        this.f27818e = abstractC10497d;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ List<? extends C9141j> mo27441a() {
        return s1.u.s.a;
    }

    /* renamed from: d */
    public q3.a.x2.f<List<C9141j>> mo27440b(C9140i c9140i) {
        l.e(c9140i, "input");
        Set d1 = i.d1(C10480a.m26025R1(c9140i.f27846b));
        String str = c9140i.f27845a;
        Set<AbstractC10836e> set = c9140i.f27847c;
        boolean z = c9140i.f27848d;
        l.e(str, SearchIntents.EXTRA_QUERY);
        l.e(d1, "currentFilters");
        l.e(set, "appliedFilters");
        l.e(str, SearchIntents.EXTRA_QUERY);
        l.e(d1, "currentFilters");
        l.e(set, "appliedFilters");
        ArrayList<AbstractC10836e> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : d1) {
            if (((AbstractC10836e) obj) instanceof AbstractC10836e.C10839c) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        if (this.f27815b != arrayList2.hashCode() || arrayList.isEmpty() || z) {
            ArrayList arrayList3 = new ArrayList(C25225a.m4004J(arrayList, 10));
            for (AbstractC10836e abstractC10836e : arrayList) {
                Objects.requireNonNull(abstractC10836e, "null cannot be cast to non-null type com.truecaller.insights.repository.filters.models.SmsFilter.BySender");
                arrayList3.add((AbstractC10836e.C10839c) abstractC10836e);
            }
            this.f27816c = i.d1(arrayList3);
            this.f27815b = arrayList2.hashCode();
        }
        return new C9128a(this.f27818e.mo25857A(new C10835d(str, new C10834c(arrayList2), this.f27816c)), this, c9140i);
    }
}
