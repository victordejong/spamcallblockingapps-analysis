package p193e.p194a.p437c.p438a.p480j.p481a;

import com.truecaller.insights.insightsui.CategoryModel;
import java.util.Comparator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9132a;
import p193e.p194a.p437c.p438a.p480j.p482b.C9133b;
import p193e.p194a.p437c.p438a.p480j.p482b.C9134c;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.c.a.j.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/a.class */
public final class C9120a implements f<C9133b> {

    /* renamed from: a */
    public final /* synthetic */ f f27797a;

    /* renamed from: b */
    public final /* synthetic */ C9124b f27798b;

    /* renamed from: c */
    public final /* synthetic */ C9132a f27799c;

    /* renamed from: e.a.c.a.j.a.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/a$a.class */
    public static final class C9121a implements g<List<? extends CategoryModel>> {

        /* renamed from: a */
        public final /* synthetic */ g f27800a;

        /* renamed from: b */
        public final /* synthetic */ C9124b f27801b;

        /* renamed from: c */
        public final /* synthetic */ C9132a f27802c;

        @e(c = "com.truecaller.insights.ui.filters.domain.GetCategoriesUseCase$execute$$inlined$map$1$2", f = "GetCategoriesUseCase.kt", l = {182}, m = "emit")
        /* renamed from: e.a.c.a.j.a.a$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/a$a$a.class */
        public static final class C9122a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f27803d;

            /* renamed from: e */
            public int f27804e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9122a(d dVar) {
                super(dVar);
                C9121a.this = r4;
            }

            /* renamed from: s */
            public final Object m27859s(Object obj) {
                this.f27803d = obj;
                this.f27804e |= Integer.MIN_VALUE;
                return C9121a.this.m27860a(null, this);
            }
        }

        /* renamed from: e.a.c.a.j.a.a$a$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/a/a$a$b.class */
        public static final class C9123b<T> implements Comparator {
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return C25225a.m4000K(Boolean.valueOf(((C9134c) t2).f27836c), Boolean.valueOf(((C9134c) t).f27836c));
            }
        }

        public C9121a(g gVar, C9124b c9124b, C9132a c9132a) {
            this.f27800a = gVar;
            this.f27801b = c9124b;
            this.f27802c = c9132a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005e  */
        /* JADX WARN: Type inference failed for: r0v110, types: [java.util.List] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m27860a(java.lang.Object r11, s1.w.d r12) {
            /*
                Method dump skipped, instructions count: 846
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p480j.p481a.C9120a.C9121a.m27860a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C9120a(f fVar, C9124b c9124b, C9132a c9132a) {
        this.f27797a = fVar;
        this.f27798b = c9124b;
        this.f27799c = c9132a;
    }

    /* renamed from: c */
    public Object m27861c(g gVar, d dVar) {
        Object c = this.f27797a.c(new C9121a(gVar, this.f27798b, this.f27799c), dVar);
        return c == a.a ? c : s.a;
    }
}
