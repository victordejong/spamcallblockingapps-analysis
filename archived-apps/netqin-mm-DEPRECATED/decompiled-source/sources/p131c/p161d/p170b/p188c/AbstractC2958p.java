package p131c.p161d.p170b.p188c;

import p131c.p161d.p170b.p188c.AbstractC2941j0;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
/* renamed from: c.d.b.c.p */
/* loaded from: classes-dex2jar.jar:c/d/b/c/p.class */
public abstract class AbstractC2958p implements AbstractC2941j0 {

    /* renamed from: a */
    public final AbstractC2965r0.C2968c f10654a = new AbstractC2965r0.C2968c();

    /* renamed from: c.d.b.c.p$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/p$a.class */
    public static final class C2959a {

        /* renamed from: a */
        public final AbstractC2941j0.AbstractC2943b f10655a;

        /* renamed from: b */
        public boolean f10656b;

        public C2959a(AbstractC2941j0.AbstractC2943b bVar) {
            this.f10655a = bVar;
        }

        /* renamed from: a */
        public void m28385a() {
            this.f10656b = true;
        }

        /* renamed from: a */
        public void m28384a(AbstractC2960b bVar) {
            if (!this.f10656b) {
                bVar.mo28383a(this.f10655a);
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C2959a.class != obj.getClass()) {
                return false;
            }
            return this.f10655a.equals(((C2959a) obj).f10655a);
        }

        public int hashCode() {
            return this.f10655a.hashCode();
        }
    }

    /* renamed from: c.d.b.c.p$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/p$b.class */
    public interface AbstractC2960b {
        /* renamed from: a */
        void mo28383a(AbstractC2941j0.AbstractC2943b bVar);
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: T */
    public final boolean mo28391T() {
        AbstractC2965r0 e = mo27455e();
        return !e.m28344c() && e.m28352a(mo27467b(), this.f10654a).f10688d;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: V */
    public final int mo28390V() {
        AbstractC2965r0 e = mo27455e();
        return e.m28344c() ? -1 : e.m28347b(mo27467b(), m28386h(), mo27462b0());
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: W */
    public final int mo28389W() {
        AbstractC2965r0 e = mo27455e();
        return e.m28344c() ? -1 : e.m28355a(mo27467b(), m28386h(), mo27462b0());
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    /* renamed from: a */
    public final void mo28388a(long j) {
        mo27488a(mo27467b(), j);
    }

    /* renamed from: d */
    public final long m28387d() {
        AbstractC2965r0 e = mo27455e();
        return e.m28344c() ? -9223372036854775807L : e.m28352a(mo27467b(), this.f10654a).m28318c();
    }

    /* renamed from: h */
    public final int m28386h() {
        int Z = mo27491Z();
        int i = Z;
        if (Z == 1) {
            i = 0;
        }
        return i;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    public final boolean hasNext() {
        return mo28389W() != -1;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    public final boolean hasPrevious() {
        return mo28390V() != -1;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    public final boolean isPlaying() {
        return mo27498P() == 3 && mo27496R() && mo27493X() == 0;
    }

    @Override // p131c.p161d.p170b.p188c.AbstractC2941j0
    public final void stop() {
        mo27463b(false);
    }
}
