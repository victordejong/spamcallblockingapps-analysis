package p193e.p194a.p837h0.p838a.p840b0;

import java.util.Objects;
import javax.inject.Provider;
import o3.c.b;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1114o5.AbstractC19132z;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p837h0.AbstractC14854r;
/* renamed from: e.a.h0.a.b0.f */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/f.class */
public final class C14768f {

    /* renamed from: a */
    public final C14763b f42274a;

    /* renamed from: b */
    public final AbstractC15539j2 f42275b;

    /* renamed from: c */
    public final C14768f f42276c = this;

    /* renamed from: d */
    public Provider<AbstractC14764c> f42277d;

    /* renamed from: e.a.h0.a.b0.f$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/f$b.class */
    public static final class C14770b<T> implements Provider<T> {

        /* renamed from: a */
        public final C14768f f42278a;

        public C14770b(C14768f c14768f, int i) {
            this.f42278a = c14768f;
        }

        public T get() {
            C14768f c14768f = this.f42278a;
            C14763b c14763b = c14768f.f42274a;
            AbstractC19870l mo12119z1 = c14768f.f42275b.mo12119z1();
            Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
            AbstractC19223c0 mo12349i = c14768f.f42275b.mo12349i();
            Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
            AbstractC19854f<AbstractC14854r> mo12693I5 = c14768f.f42275b.mo12693I5();
            Objects.requireNonNull(mo12693I5, "Cannot return null from a non-@Nullable component method");
            AbstractC19132z mo12720G6 = c14768f.f42275b.mo12720G6();
            Objects.requireNonNull(mo12720G6, "Cannot return null from a non-@Nullable component method");
            Objects.requireNonNull(c14763b);
            return (T) new C14765d(mo12119z1.mo11845d(), mo12720G6, mo12693I5, mo12349i);
        }
    }

    public C14768f(C14763b c14763b, AbstractC15539j2 abstractC15539j2, C14769a c14769a) {
        this.f42274a = c14763b;
        this.f42275b = abstractC15539j2;
        Provider c14770b = new C14770b(this, 0);
        Object obj = b.c;
        this.f42277d = !(c14770b instanceof b) ? new b(c14770b) : c14770b;
    }
}
