package p193e.p194a.p619d.p628c.p629a;

import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.i1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.c.a.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/h.class */
public final class C11186h implements AbstractC11183f, i0 {

    /* renamed from: a */
    public y f33068a = d.j((p1) null, 1, (Object) null);

    /* renamed from: b */
    public final Set<String> f33069b = new LinkedHashSet();

    /* renamed from: c */
    public AbstractC11598i f33070c;

    /* renamed from: d */
    public final AbstractC11405f0 f33071d;

    /* renamed from: e */
    public final f f33072e;

    @e(c = "com.truecaller.voip.ui.util.LogPriorityVoipCallEventImpl$startLogging$1", f = "LogPriorityVoipCallEvent.kt", l = {54}, m = "invokeSuspend")
    /* renamed from: e.a.d.c.a.h$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/h$a.class */
    public static final class C11187a extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f33073e;

        /* renamed from: g */
        public final /* synthetic */ AbstractC11598i f33075g;

        @e(c = "com.truecaller.voip.ui.util.LogPriorityVoipCallEventImpl$startLogging$1$1", f = "LogPriorityVoipCallEvent.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.c.a.h$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/h$a$a.class */
        public static final class C11188a extends i implements p<Set<? extends C11593e>, s1.w.d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f33076e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11188a(s1.w.d dVar) {
                super(2, dVar);
                C11187a.this = r5;
            }

            /* renamed from: i */
            public final s1.w.d<s> m25058i(Object obj, s1.w.d<?> dVar) {
                l.e(dVar, "completion");
                C11188a c11188a = new C11188a(dVar);
                c11188a.f33076e = obj;
                return c11188a;
            }

            /* renamed from: k */
            public final Object m25057k(Object obj, Object obj2) {
                s sVar = s.a;
                s1.w.d dVar = (s1.w.d) obj2;
                l.e(dVar, "completion");
                C11187a c11187a = C11187a.this;
                dVar.getContext();
                C25225a.m3932a3(sVar);
                Set<C11593e> set = (Set) obj;
                for (C11593e c11593e : set) {
                    C11186h c11186h = C11186h.this;
                    i1<AbstractC11416j> i1Var = c11593e.f33991b;
                    int size = set.size();
                    Objects.requireNonNull(c11186h);
                    d.w2(c11186h, (f) null, (j0) null, new C11184g(c11186h, i1Var, size, null), 3, (Object) null);
                }
                return sVar;
            }

            /* renamed from: s */
            public final Object m25056s(Object obj) {
                C25225a.m3932a3(obj);
                Set<C11593e> set = (Set) this.f33076e;
                for (C11593e c11593e : set) {
                    C11186h c11186h = C11186h.this;
                    i1<AbstractC11416j> i1Var = c11593e.f33991b;
                    int size = set.size();
                    Objects.requireNonNull(c11186h);
                    d.w2(c11186h, (f) null, (j0) null, new C11184g(c11186h, i1Var, size, null), 3, (Object) null);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11187a(AbstractC11598i abstractC11598i, s1.w.d dVar) {
            super(2, dVar);
            C11186h.this = r5;
            this.f33075g = abstractC11598i;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25061i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11187a(this.f33075g, dVar);
        }

        /* renamed from: k */
        public final Object m25060k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11187a(this.f33075g, dVar).m25059s(s.a);
        }

        /* renamed from: s */
        public final Object m25059s(Object obj) {
            a aVar = a.a;
            int i = this.f33073e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<Set<C11593e>> mo24405a = this.f33075g.mo24405a();
                C11188a c11188a = new C11188a(null);
                this.f33073e = 1;
                if (d.g0(mo24405a, c11188a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C11186h(AbstractC11405f0 abstractC11405f0, @Named("IO") f fVar) {
        l.e(abstractC11405f0, "voipAnalyticsUtil");
        l.e(fVar, "asyncContext");
        this.f33071d = abstractC11405f0;
        this.f33072e = fVar;
    }

    @Override // p193e.p194a.p619d.p628c.p629a.AbstractC11183f
    /* renamed from: a */
    public void mo25062a(AbstractC11598i abstractC11598i) {
        l.e(abstractC11598i, "callInfoRepository");
        this.f33070c = abstractC11598i;
        d.T(this.f33068a, (CancellationException) null, 1, (Object) null);
        this.f33068a = d.j((p1) null, 1, (Object) null);
        d.w2(this, (f) null, (j0) null, new C11187a(abstractC11598i, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.AbstractC11183f
    public void destroy() {
        this.f33069b.clear();
        d.T(this.f33068a, (CancellationException) null, 1, (Object) null);
        this.f33070c = null;
    }

    public f getCoroutineContext() {
        return this.f33072e.plus(this.f33068a);
    }
}
