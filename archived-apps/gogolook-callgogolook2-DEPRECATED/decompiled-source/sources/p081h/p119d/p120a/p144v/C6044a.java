package p081h.p119d.p120a.p144v;

import java.io.File;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.p131j.AbstractC5918l;
import p081h.p119d.p120a.p124s.p134k.p141k.AbstractC6019d;
/* renamed from: h.d.a.v.a */
/* loaded from: classes-dex2jar.jar:h/d/a/v/a.class */
public class C6044a<A, T, Z, R> implements AbstractC6049f<A, T, Z, R>, Cloneable {

    /* renamed from: a */
    public final AbstractC6049f<A, T, Z, R> f15041a;

    /* renamed from: b */
    public AbstractC5808e<File, Z> f15042b;

    /* renamed from: c */
    public AbstractC5808e<T, Z> f15043c;

    /* renamed from: d */
    public AbstractC5809f<Z> f15044d;

    /* renamed from: e */
    public AbstractC6019d<Z, R> f15045e;

    /* renamed from: f */
    public AbstractC5805b<T> f15046f;

    public C6044a(AbstractC6049f<A, T, Z, R> fVar) {
        this.f15041a = fVar;
    }

    /* renamed from: a */
    public void m23976a(AbstractC5805b<T> bVar) {
        this.f15046f = bVar;
    }

    /* renamed from: a */
    public void m23975a(AbstractC5808e<T, Z> eVar) {
        this.f15043c = eVar;
    }

    public C6044a<A, T, Z, R> clone() {
        try {
            return (C6044a) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: d */
    public AbstractC5805b<T> mo23971d() {
        AbstractC5805b<T> bVar = this.f15046f;
        return bVar != null ? bVar : this.f15041a.mo23971d();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6049f
    /* renamed from: e */
    public AbstractC6019d<Z, R> mo23967e() {
        AbstractC6019d<Z, R> dVar = this.f15045e;
        return dVar != null ? dVar : this.f15041a.mo23967e();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: f */
    public AbstractC5809f<Z> mo23970f() {
        AbstractC5809f<Z> fVar = this.f15044d;
        return fVar != null ? fVar : this.f15041a.mo23970f();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: g */
    public AbstractC5808e<T, Z> mo23969g() {
        AbstractC5808e<T, Z> eVar = this.f15043c;
        return eVar != null ? eVar : this.f15041a.mo23969g();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6045b
    /* renamed from: h */
    public AbstractC5808e<File, Z> mo23968h() {
        AbstractC5808e<File, Z> eVar = this.f15042b;
        return eVar != null ? eVar : this.f15041a.mo23968h();
    }

    @Override // p081h.p119d.p120a.p144v.AbstractC6049f
    /* renamed from: i */
    public AbstractC5918l<A, T> mo23966i() {
        return this.f15041a.mo23966i();
    }
}
