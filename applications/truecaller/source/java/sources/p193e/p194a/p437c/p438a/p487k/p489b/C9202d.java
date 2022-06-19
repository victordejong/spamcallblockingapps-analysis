package p193e.p194a.p437c.p438a.p487k.p489b;

import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p487k.p490c.C9207a;
import p193e.p194a.p437c.p548h.AbstractC10257g;
import q3.a.w2.v;
import q3.a.w2.x;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@e(c = "com.truecaller.insights.ui.markedimportantpage.domain.MarkImportantMessageFlowUseCase$execute$1", f = "MarkImportantMessageFlowUseCase.kt", l = {27, 30}, m = "invokeSuspend")
/* renamed from: e.a.c.a.k.b.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/d.class */
public final class C9202d extends i implements p<x<? super Boolean>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f27980e;

    /* renamed from: f */
    public int f27981f;

    /* renamed from: g */
    public final /* synthetic */ C9206e f27982g;

    /* renamed from: h */
    public final /* synthetic */ C9207a f27983h;

    /* renamed from: e.a.c.a.k.b.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/d$a.class */
    public static final class C9203a extends m implements l<Boolean, s> {

        /* renamed from: b */
        public final /* synthetic */ x f27984b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9203a(x xVar) {
            super(1);
            this.f27984b = xVar;
        }

        /* renamed from: d */
        public Object m27793d(Object obj) {
            this.f27984b.offer(Boolean.valueOf(((Boolean) obj).booleanValue()));
            return s.a;
        }
    }

    /* renamed from: e.a.c.a.k.b.d$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/d$b.class */
    public static final class C9204b extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ x f27986c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9204b(x xVar) {
            super(0);
            C9202d.this = r4;
            this.f27986c = xVar;
        }

        public Object invoke() {
            x xVar = this.f27986c;
            Objects.requireNonNull(C9202d.this.f27982g);
            xVar.offer(Boolean.FALSE);
            return s.a;
        }
    }

    /* renamed from: e.a.c.a.k.b.d$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/k/b/d$c.class */
    public static final class C9205c extends m implements a<s> {

        /* renamed from: b */
        public static final C9205c f27987b = new C9205c();

        public C9205c() {
            super(0);
        }

        public Object invoke() {
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9202d(C9206e c9206e, C9207a c9207a, d dVar) {
        super(2, dVar);
        this.f27982g = c9206e;
        this.f27983h = c9207a;
    }

    /* renamed from: i */
    public final d<s> m27796i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        C9202d c9202d = new C9202d(this.f27982g, this.f27983h, dVar);
        c9202d.f27980e = obj;
        return c9202d;
    }

    /* renamed from: k */
    public final Object m27795k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        C9202d c9202d = new C9202d(this.f27982g, this.f27983h, dVar);
        c9202d.f27980e = obj;
        return c9202d.m27794s(s.a);
    }

    /* renamed from: s */
    public final Object m27794s(Object obj) {
        x xVar;
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f27981f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            xVar = (x) this.f27980e;
            AbstractC10257g abstractC10257g = this.f27982g.f27988b;
            C9207a c9207a = this.f27983h;
            boolean z = c9207a.f27990a;
            List<Long> list = c9207a.f27991b;
            List<String> list2 = c9207a.f27992c;
            C9203a c9203a = new C9203a(xVar);
            C9204b c9204b = new C9204b(xVar);
            this.f27980e = xVar;
            this.f27981f = 1;
            if (abstractC10257g.mo26522b(z, list, list2, c9203a, c9204b, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
            xVar = (x) this.f27980e;
        }
        C9205c c9205c = C9205c.f27987b;
        this.f27980e = null;
        this.f27981f = 2;
        if (v.a(xVar, c9205c, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
