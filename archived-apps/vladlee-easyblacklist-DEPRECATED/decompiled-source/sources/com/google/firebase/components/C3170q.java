package com.google.firebase.components;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.p071a.AbstractC3136b;
import com.google.firebase.p071a.AbstractC3137c;
import com.google.firebase.p071a.AbstractC3138d;
import com.google.firebase.p071a.C3135a;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.components.q */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/q.class */
class C3170q implements AbstractC3137c, AbstractC3138d {

    /* renamed from: a */
    private final Map<Class<?>, ConcurrentHashMap<AbstractC3136b<Object>, Executor>> f19015a = new HashMap();

    /* renamed from: b */
    private Queue<C3135a<?>> f19016b = new ArrayDeque();

    /* renamed from: c */
    private final Executor f19017c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3170q(Executor executor) {
        this.f19017c = executor;
    }

    /* renamed from: a */
    private Set<Map.Entry<AbstractC3136b<Object>, Executor>> m588a(C3135a<?> aVar) {
        synchronized (this) {
            ConcurrentHashMap<AbstractC3136b<Object>, Executor> concurrentHashMap = this.f19015a.get(aVar.m648a());
            if (concurrentHashMap == null) {
                return Collections.emptySet();
            }
            return concurrentHashMap.entrySet();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m589a() {
        Queue<C3135a<?>> queue;
        synchronized (this) {
            if (this.f19016b != null) {
                queue = this.f19016b;
                this.f19016b = null;
            } else {
                queue = null;
            }
        }
        if (queue != null) {
            for (C3135a<?> aVar : queue) {
                Preconditions.checkNotNull(aVar);
                synchronized (this) {
                    if (this.f19016b != null) {
                        this.f19016b.add(aVar);
                    } else {
                        for (Map.Entry<AbstractC3136b<Object>, Executor> entry : m588a(aVar)) {
                            entry.getValue().execute(RunnableC3171r.m584a(entry, aVar));
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.firebase.p071a.AbstractC3138d
    /* renamed from: a */
    public final <T> void mo587a(Class<T> cls, AbstractC3136b<? super T> bVar) {
        mo586a(cls, this.f19017c, bVar);
    }

    @Override // com.google.firebase.p071a.AbstractC3138d
    /* renamed from: a */
    public final <T> void mo586a(Class<T> cls, Executor executor, AbstractC3136b<? super T> bVar) {
        synchronized (this) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(bVar);
            Preconditions.checkNotNull(executor);
            if (!this.f19015a.containsKey(cls)) {
                this.f19015a.put(cls, new ConcurrentHashMap<>());
            }
            this.f19015a.get(cls).put(bVar, executor);
        }
    }
}
