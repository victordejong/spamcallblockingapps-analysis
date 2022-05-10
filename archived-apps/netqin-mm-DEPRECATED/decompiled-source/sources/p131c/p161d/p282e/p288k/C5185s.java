package p131c.p161d.p282e.p288k;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p131c.p161d.p282e.p313o.AbstractC5472c;
import p131c.p161d.p282e.p334r.AbstractC5887a;
/* renamed from: c.d.e.k.s */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/s.class */
public final class C5185s extends AbstractC5159a {

    /* renamed from: a */
    public final Set<Class<?>> f17840a;

    /* renamed from: b */
    public final Set<Class<?>> f17841b;

    /* renamed from: c */
    public final Set<Class<?>> f17842c;

    /* renamed from: d */
    public final Set<Class<?>> f17843d;

    /* renamed from: e */
    public final Set<Class<?>> f17844e;

    /* renamed from: f */
    public final AbstractC5165e f17845f;

    /* renamed from: c.d.e.k.s$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/k/s$a.class */
    public static class C5186a implements AbstractC5472c {
        public C5186a(Set<Class<?>> set, AbstractC5472c cVar) {
        }
    }

    public C5185s(C5162d<?> dVar, AbstractC5165e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (C5180n nVar : dVar.m24396a()) {
            if (nVar.m24346b()) {
                if (nVar.m24342d()) {
                    hashSet3.add(nVar.m24348a());
                } else {
                    hashSet.add(nVar.m24348a());
                }
            } else if (nVar.m24342d()) {
                hashSet4.add(nVar.m24348a());
            } else {
                hashSet2.add(nVar.m24348a());
            }
        }
        if (!dVar.m24386d().isEmpty()) {
            hashSet.add(AbstractC5472c.class);
        }
        this.f17840a = Collections.unmodifiableSet(hashSet);
        this.f17841b = Collections.unmodifiableSet(hashSet2);
        this.f17842c = Collections.unmodifiableSet(hashSet3);
        this.f17843d = Collections.unmodifiableSet(hashSet4);
        this.f17844e = dVar.m24386d();
        this.f17845f = eVar;
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5159a, p131c.p161d.p282e.p288k.AbstractC5165e
    /* renamed from: a */
    public <T> T mo24330a(Class<T> cls) {
        if (this.f17840a.contains(cls)) {
            T t = (T) this.f17845f.mo24330a(cls);
            return !cls.equals(AbstractC5472c.class) ? t : (T) new C5186a(this.f17844e, (AbstractC5472c) t);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5165e
    /* renamed from: b */
    public <T> AbstractC5887a<T> mo24329b(Class<T> cls) {
        if (this.f17841b.contains(cls)) {
            return this.f17845f.mo24329b(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5165e
    /* renamed from: c */
    public <T> AbstractC5887a<Set<T>> mo24328c(Class<T> cls) {
        if (this.f17843d.contains(cls)) {
            return this.f17845f.mo24328c(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }

    @Override // p131c.p161d.p282e.p288k.AbstractC5159a, p131c.p161d.p282e.p288k.AbstractC5165e
    /* renamed from: d */
    public <T> Set<T> mo24327d(Class<T> cls) {
        if (this.f17842c.contains(cls)) {
            return this.f17845f.mo24327d(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }
}
