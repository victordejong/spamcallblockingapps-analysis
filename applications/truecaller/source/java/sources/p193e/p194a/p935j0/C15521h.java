package p193e.p194a.p935j0;

import android.content.Context;
import e.a.u.d;
import e.a.u.e;
import e.a.u.k;
import e.a.u.l;
import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19251o0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19496e;
import p193e.p194a.p1268u.C20564c;
import p193e.p194a.p372b0.AbstractC8412c;
import p193e.p194a.p372b0.p430q.AbstractC8607q;
import s1.w.f;
/* renamed from: e.a.j0.h */
/* loaded from: classes13-dex2jar.jar:e/a/j0/h.class */
public final class C15521h implements AbstractC15533m {

    /* renamed from: a */
    public final AbstractC19251o0 f43964a;

    /* renamed from: b */
    public final AbstractC8412c f43965b;

    /* renamed from: c */
    public Provider<f> f43966c;

    /* renamed from: d */
    public Provider<AbstractC19223c0> f43967d;

    /* renamed from: e */
    public Provider<AbstractC8607q> f43968e;

    /* renamed from: f */
    public Provider<Context> f43969f;

    /* renamed from: g */
    public Provider<AbstractC15519f> f43970g;

    /* renamed from: h */
    public Provider<C20564c> f43971h;

    /* renamed from: i */
    public Provider<AbstractC15534n> f43972i;

    /* renamed from: j */
    public Provider<AbstractC19462a> f43973j;

    /* renamed from: k */
    public Provider<k> f43974k;

    /* renamed from: l */
    public Provider<e> f43975l;

    /* renamed from: e.a.j0.h$b */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/h$b.class */
    public static final class C15523b implements Provider<AbstractC19462a> {

        /* renamed from: a */
        public final AbstractC19496e f43976a;

        public C15523b(AbstractC19496e abstractC19496e) {
            this.f43976a = abstractC19496e;
        }

        public Object get() {
            AbstractC19462a mo12776C4 = this.f43976a.mo12776C4();
            Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
            return mo12776C4;
        }
    }

    /* renamed from: e.a.j0.h$c */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/h$c.class */
    public static final class C15524c implements Provider<Context> {

        /* renamed from: a */
        public final AbstractC8412c f43977a;

        public C15524c(AbstractC8412c abstractC8412c) {
            this.f43977a = abstractC8412c;
        }

        public Object get() {
            Context mo12335j = this.f43977a.mo12335j();
            Objects.requireNonNull(mo12335j, "Cannot return null from a non-@Nullable component method");
            return mo12335j;
        }
    }

    /* renamed from: e.a.j0.h$d */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/h$d.class */
    public static final class C15525d implements Provider<AbstractC8607q> {

        /* renamed from: a */
        public final AbstractC8412c f43978a;

        public C15525d(AbstractC8412c abstractC8412c) {
            this.f43978a = abstractC8412c;
        }

        public Object get() {
            AbstractC8607q mo12229r = this.f43978a.mo12229r();
            Objects.requireNonNull(mo12229r, "Cannot return null from a non-@Nullable component method");
            return mo12229r;
        }
    }

    /* renamed from: e.a.j0.h$e */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/h$e.class */
    public static final class C15526e implements Provider<f> {

        /* renamed from: a */
        public final AbstractC8412c f43979a;

        public C15526e(AbstractC8412c abstractC8412c) {
            this.f43979a = abstractC8412c;
        }

        public Object get() {
            f mo12378g = this.f43979a.mo12378g();
            Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
            return mo12378g;
        }
    }

    /* renamed from: e.a.j0.h$f */
    /* loaded from: classes13-dex2jar.jar:e/a/j0/h$f.class */
    public static final class C15527f implements Provider<AbstractC19223c0> {

        /* renamed from: a */
        public final AbstractC19251o0 f43980a;

        public C15527f(AbstractC19251o0 abstractC19251o0) {
            this.f43980a = abstractC19251o0;
        }

        public Object get() {
            AbstractC19223c0 mo12349i = this.f43980a.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            return mo12349i;
        }
    }

    public C15521h(C15535o c15535o, AbstractC8412c abstractC8412c, AbstractC19251o0 abstractC19251o0, AbstractC19496e abstractC19496e, C15522a c15522a) {
        this.f43964a = abstractC19251o0;
        this.f43965b = abstractC8412c;
        C15526e c15526e = new C15526e(abstractC8412c);
        this.f43966c = c15526e;
        C15527f c15527f = new C15527f(abstractC19251o0);
        this.f43967d = c15527f;
        C15525d c15525d = new C15525d(abstractC8412c);
        this.f43968e = c15525d;
        C15524c c15524c = new C15524c(abstractC8412c);
        this.f43969f = c15524c;
        C15536p c15536p = new C15536p(c15535o);
        this.f43970g = c15536p;
        d dVar = new d(c15527f, c15524c, c15536p);
        this.f43971h = dVar;
        C15537q c15537q = new C15537q(c15535o);
        this.f43972i = c15537q;
        C15523b c15523b = new C15523b(abstractC19496e);
        this.f43973j = c15523b;
        l lVar = new l(c15526e, c15527f, c15525d, dVar, c15537q, c15523b);
        this.f43974k = lVar;
        this.f43975l = b.b(lVar);
    }
}
