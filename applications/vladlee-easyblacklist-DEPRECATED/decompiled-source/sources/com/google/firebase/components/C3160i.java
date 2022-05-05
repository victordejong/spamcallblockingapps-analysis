package com.google.firebase.components;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.p071a.AbstractC3137c;
import com.google.firebase.p071a.AbstractC3138d;
import com.google.firebase.p072b.AbstractC3146a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.components.i */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/i.class */
public final class C3160i extends AbstractC3149a {

    /* renamed from: a */
    private static final AbstractC3146a<Set<Object>> f18997a = C3163l.m606b();

    /* renamed from: b */
    private final Map<C3150b<?>, C3172s<?>> f18998b = new HashMap();

    /* renamed from: c */
    private final Map<Class<?>, C3172s<?>> f18999c = new HashMap();

    /* renamed from: d */
    private final Map<Class<?>, C3172s<Set<?>>> f19000d = new HashMap();

    /* renamed from: e */
    private final C3170q f19001e;

    public C3160i(Executor executor, Iterable<AbstractC3159h> iterable, C3150b<?>... bVarArr) {
        this.f19001e = new C3170q(executor);
        ArrayList<C3150b<?>> arrayList = new ArrayList();
        arrayList.add(C3150b.m634a(this.f19001e, C3170q.class, AbstractC3138d.class, AbstractC3137c.class));
        for (AbstractC3159h hVar : iterable) {
            arrayList.addAll(hVar.getComponents());
        }
        Collections.addAll(arrayList, bVarArr);
        C3164m.m605a(arrayList);
        for (C3150b<?> bVar : arrayList) {
            this.f18998b.put(bVar, new C3172s<>(C3161j.m608a(this, bVar)));
        }
        m613a();
        m609b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ Set m611a(Set set) {
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(((C3172s) it.next()).mo583a());
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    private void m613a() {
        for (Map.Entry<C3150b<?>, C3172s<?>> entry : this.f18998b.entrySet()) {
            C3150b<?> key = entry.getKey();
            if (key.m628g()) {
                C3172s<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m637a()) {
                    this.f18999c.put(cls, value);
                }
            }
        }
        for (C3150b<?> bVar : this.f18998b.keySet()) {
            for (C3167n nVar : bVar.m633b()) {
                if (nVar.m593b() && !this.f18999c.containsKey(nVar.m595a())) {
                    throw new C3173t(String.format("Unsatisfied dependency for component %s: %s", bVar, nVar.m595a()));
                }
            }
        }
    }

    /* renamed from: b */
    private void m609b() {
        HashMap hashMap = new HashMap();
        for (Map.Entry<C3150b<?>, C3172s<?>> entry : this.f18998b.entrySet()) {
            C3150b<?> key = entry.getKey();
            if (!key.m628g()) {
                C3172s<?> value = entry.getValue();
                for (Class<? super Object> cls : key.m637a()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            this.f19000d.put((Class) entry2.getKey(), new C3172s<>(C3162k.m607a((Set) entry2.getValue())));
        }
    }

    @Override // com.google.firebase.components.AbstractC3149a, com.google.firebase.components.AbstractC3154e
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo582a(Class cls) {
        return super.mo582a(cls);
    }

    /* renamed from: a */
    public final void m610a(boolean z) {
        for (Map.Entry<C3150b<?>, C3172s<?>> entry : this.f18998b.entrySet()) {
            C3150b<?> key = entry.getKey();
            C3172s<?> value = entry.getValue();
            if (key.m630e() || (key.m629f() && z)) {
                value.mo583a();
            }
        }
        this.f19001e.m589a();
    }

    @Override // com.google.firebase.components.AbstractC3149a, com.google.firebase.components.AbstractC3154e
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ Set mo581b(Class cls) {
        return super.mo581b(cls);
    }

    @Override // com.google.firebase.components.AbstractC3154e
    /* renamed from: c */
    public final <T> AbstractC3146a<T> mo580c(Class<T> cls) {
        Preconditions.checkNotNull(cls, "Null interface requested.");
        return this.f18999c.get(cls);
    }

    @Override // com.google.firebase.components.AbstractC3154e
    /* renamed from: d */
    public final <T> AbstractC3146a<Set<T>> mo579d(Class<T> cls) {
        C3172s<Set<?>> sVar = this.f19000d.get(cls);
        return sVar != null ? sVar : (AbstractC3146a<Set<T>>) f18997a;
    }
}
