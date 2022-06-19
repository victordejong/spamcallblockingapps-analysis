package p193e.p194a.p673d0.p674a;

import java.util.Objects;
import javax.inject.Provider;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1080o.p1081a.p1096j.AbstractC18663c;
import p193e.p194a.p1080o.p1081a.p1096j.C18661b;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1359x4.AbstractC21416a;
import p193e.p194a.p1359x4.AbstractC21421e;
import p193e.p194a.p1359x4.AbstractC21423g;
import p193e.p194a.p1359x4.p1364l.AbstractC21467c;
import p193e.p194a.p1359x4.p1364l.C21464b;
import p193e.p194a.p294b.p344j.AbstractC7954c;
import p193e.p194a.p294b.p344j.C7951b;
import s1.w.f;
/* renamed from: e.a.d0.a.w */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/w.class */
public final class C12461w {

    /* renamed from: a */
    public final AbstractC19233h0 f36402a;

    /* renamed from: b */
    public final AbstractC15539j2 f36403b;

    /* renamed from: c */
    public final C12436j f36404c;

    /* renamed from: d */
    public final C12461w f36405d = this;

    /* renamed from: e */
    public Provider<C21464b> f36406e = new C12463b(this, 0);

    /* renamed from: f */
    public Provider<C7951b> f36407f = new C12463b(this, 1);

    /* renamed from: g */
    public Provider<C18661b> f36408g = new C12463b(this, 2);

    /* renamed from: e.a.d0.a.w$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/a/w$b.class */
    public static final class C12463b<T> implements Provider<T> {

        /* renamed from: a */
        public final C12461w f36409a;

        /* renamed from: b */
        public final int f36410b;

        public C12463b(C12461w c12461w, int i) {
            this.f36409a = c12461w;
            this.f36410b = i;
        }

        public T get() {
            int i = this.f36410b;
            if (i == 0) {
                C12461w c12461w = this.f36409a;
                Objects.requireNonNull(c12461w);
                f mo12378g = c12461w.f36403b.mo12378g();
                Objects.requireNonNull(mo12378g, "Cannot return null from a non-@Nullable component method");
                AbstractC21423g mo12252p3 = c12461w.f36403b.mo12252p3();
                Objects.requireNonNull(mo12252p3, "Cannot return null from a non-@Nullable component method");
                AbstractC21421e mo12652L7 = c12461w.f36403b.mo12652L7();
                Objects.requireNonNull(mo12652L7, "Cannot return null from a non-@Nullable component method");
                AbstractC21467c mo12321k0 = c12461w.f36403b.mo12321k0();
                Objects.requireNonNull(mo12321k0, "Cannot return null from a non-@Nullable component method");
                return (T) new C21464b(mo12378g, mo12252p3, mo12652L7, mo12321k0);
            } else if (i != 1) {
                if (i != 2) {
                    throw new AssertionError(this.f36410b);
                }
                C12461w c12461w2 = this.f36409a;
                f mo12378g2 = c12461w2.f36403b.mo12378g();
                Objects.requireNonNull(mo12378g2, "Cannot return null from a non-@Nullable component method");
                AbstractC18765c mo12685J = c12461w2.f36403b.mo12685J();
                Objects.requireNonNull(mo12685J, "Cannot return null from a non-@Nullable component method");
                AbstractC18663c mo12657L2 = c12461w2.f36403b.mo12657L2();
                Objects.requireNonNull(mo12657L2, "Cannot return null from a non-@Nullable component method");
                AbstractC19223c0 mo12349i = c12461w2.f36403b.mo12349i();
                Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
                return (T) new C18661b(mo12378g2, mo12685J, mo12657L2, mo12349i);
            } else {
                C12461w c12461w3 = this.f36409a;
                Objects.requireNonNull(c12461w3);
                f mo12378g3 = c12461w3.f36403b.mo12378g();
                Objects.requireNonNull(mo12378g3, "Cannot return null from a non-@Nullable component method");
                AbstractC21423g mo12252p32 = c12461w3.f36403b.mo12252p3();
                Objects.requireNonNull(mo12252p32, "Cannot return null from a non-@Nullable component method");
                AbstractC21416a mo12202t0 = c12461w3.f36403b.mo12202t0();
                Objects.requireNonNull(mo12202t0, "Cannot return null from a non-@Nullable component method");
                AbstractC7954c mo12707H5 = c12461w3.f36403b.mo12707H5();
                Objects.requireNonNull(mo12707H5, "Cannot return null from a non-@Nullable component method");
                C20592g mo11648b = c12461w3.f36403b.mo11648b();
                Objects.requireNonNull(mo11648b, "Cannot return null from a non-@Nullable component method");
                return (T) new C7951b(mo12378g3, mo12252p32, mo12202t0, mo12707H5, mo11648b);
            }
        }
    }

    public C12461w(C12436j c12436j, AbstractC15539j2 abstractC15539j2, AbstractC19233h0 abstractC19233h0, C12462a c12462a) {
        this.f36402a = abstractC19233h0;
        this.f36403b = abstractC15539j2;
        this.f36404c = c12436j;
    }
}
