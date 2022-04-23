package com.google.firebase.components;

import com.google.firebase.p072b.AbstractC3146a;
/* renamed from: com.google.firebase.components.s */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/s.class */
public final class C3172s<T> implements AbstractC3146a<T> {

    /* renamed from: a */
    private static final Object f19020a = new Object();

    /* renamed from: b */
    private volatile Object f19021b = f19020a;

    /* renamed from: c */
    private volatile AbstractC3146a<T> f19022c;

    public C3172s(AbstractC3146a<T> aVar) {
        this.f19022c = aVar;
    }

    @Override // com.google.firebase.p072b.AbstractC3146a
    /* renamed from: a */
    public final T mo583a() {
        Object obj = this.f19021b;
        T t = (T) obj;
        if (obj == f19020a) {
            synchronized (this) {
                Object obj2 = this.f19021b;
                t = obj2;
                if (obj2 == f19020a) {
                    t = this.f19022c.mo583a();
                    this.f19021b = t;
                    this.f19022c = null;
                }
            }
        }
        return t;
    }
}
