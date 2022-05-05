package com.google.firebase.components;

import com.google.firebase.p071a.AbstractC3137c;
import com.google.firebase.p072b.AbstractC3146a;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.components.u */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/u.class */
public final class C3174u extends AbstractC3149a {

    /* renamed from: a */
    private final Set<Class<?>> f19023a;

    /* renamed from: b */
    private final Set<Class<?>> f19024b;

    /* renamed from: c */
    private final Set<Class<?>> f19025c;

    /* renamed from: d */
    private final Set<Class<?>> f19026d;

    /* renamed from: e */
    private final Set<Class<?>> f19027e;

    /* renamed from: f */
    private final AbstractC3154e f19028f;

    /* renamed from: com.google.firebase.components.u$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/components/u$a.class */
    private static final class C3175a implements AbstractC3137c {

        /* renamed from: a */
        private final Set<Class<?>> f19029a;

        /* renamed from: b */
        private final AbstractC3137c f19030b;

        public C3175a(Set<Class<?>> set, AbstractC3137c cVar) {
            this.f19029a = set;
            this.f19030b = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3174u(C3150b<?> bVar, AbstractC3154e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (C3167n nVar : bVar.m633b()) {
            if (nVar.m590d()) {
                boolean c = nVar.m591c();
                Class<?> a = nVar.m595a();
                if (c) {
                    hashSet3.add(a);
                } else {
                    hashSet.add(a);
                }
            } else {
                boolean c2 = nVar.m591c();
                Class<?> a2 = nVar.m595a();
                if (c2) {
                    hashSet4.add(a2);
                } else {
                    hashSet2.add(a2);
                }
            }
        }
        if (!bVar.m631d().isEmpty()) {
            hashSet.add(AbstractC3137c.class);
        }
        this.f19023a = Collections.unmodifiableSet(hashSet);
        this.f19024b = Collections.unmodifiableSet(hashSet2);
        this.f19025c = Collections.unmodifiableSet(hashSet3);
        this.f19026d = Collections.unmodifiableSet(hashSet4);
        this.f19027e = bVar.m631d();
        this.f19028f = eVar;
    }

    @Override // com.google.firebase.components.AbstractC3149a, com.google.firebase.components.AbstractC3154e
    /* renamed from: a */
    public final <T> T mo582a(Class<T> cls) {
        if (this.f19023a.contains(cls)) {
            T t = (T) this.f19028f.mo582a(cls);
            return !cls.equals(AbstractC3137c.class) ? t : (T) new C3175a(this.f19027e, (AbstractC3137c) t);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // com.google.firebase.components.AbstractC3149a, com.google.firebase.components.AbstractC3154e
    /* renamed from: b */
    public final <T> Set<T> mo581b(Class<T> cls) {
        if (this.f19025c.contains(cls)) {
            return this.f19028f.mo581b(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }

    @Override // com.google.firebase.components.AbstractC3154e
    /* renamed from: c */
    public final <T> AbstractC3146a<T> mo580c(Class<T> cls) {
        if (this.f19024b.contains(cls)) {
            return this.f19028f.mo580c(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // com.google.firebase.components.AbstractC3154e
    /* renamed from: d */
    public final <T> AbstractC3146a<Set<T>> mo579d(Class<T> cls) {
        if (this.f19026d.contains(cls)) {
            return this.f19028f.mo579d(cls);
        }
        throw new IllegalArgumentException(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", cls));
    }
}
