package p193e.p194a.p619d.p621a0;

import p193e.p194a.p619d.p621a0.AbstractC11061a;
import p193e.p194a.p619d.p637c0.C11464r;
import s1.z.c.l;
/* renamed from: e.a.d.a0.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/a0/b.class */
public abstract class AbstractC11062b<T extends AbstractC11061a> extends C11464r<T> {

    /* renamed from: d */
    public final C11464r<T>.C11465a f32700d = new C11063a();

    /* renamed from: e.a.d.a0.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a0/b$a.class */
    public static final class C11063a extends C11464r<T>.C11465a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11063a() {
            super();
            AbstractC11062b.this = r4;
        }

        @Override // p193e.p194a.p619d.p637c0.C11464r.C11465a, p193e.p194a.p619d.p637c0.AbstractC11392d0
        /* renamed from: a */
        public void mo24639a(Object obj) {
            AbstractC11061a abstractC11061a = (AbstractC11061a) obj;
            l.e(abstractC11061a, "state");
            if (((AbstractC11061a) AbstractC11062b.this.getValue()).m25331a(abstractC11061a)) {
                throw new IllegalStateException("Already reached this state: " + abstractC11061a);
            }
            String str = "Switching state: " + abstractC11061a;
            C11464r.this.f33656c.setValue(abstractC11061a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC11062b(T t) {
        super(t);
        l.e(t, "initialState");
    }

    @Override // p193e.p194a.p619d.p637c0.C11464r
    /* renamed from: h */
    public C11464r<T>.C11465a mo24640h() {
        return this.f32700d;
    }
}
