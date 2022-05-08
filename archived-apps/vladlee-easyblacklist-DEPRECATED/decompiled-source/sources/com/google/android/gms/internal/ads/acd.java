package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdfs;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acd.class */
public abstract class acd<OutputT> extends zzdfs.C2439j<OutputT> {

    /* renamed from: c */
    private static final AbstractC1720b f7206c;

    /* renamed from: d */
    private static final Logger f7207d = Logger.getLogger(acd.class.getName());

    /* renamed from: a */
    private volatile Set<Throwable> f7208a = null;

    /* renamed from: b */
    private volatile int f7209b;

    /* renamed from: com.google.android.gms.internal.ads.acd$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acd$a.class */
    static final class C1719a extends AbstractC1720b {

        /* renamed from: a */
        private final AtomicReferenceFieldUpdater<acd, Set<Throwable>> f7210a;

        /* renamed from: b */
        private final AtomicIntegerFieldUpdater<acd> f7211b;

        C1719a(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super((byte) 0);
            this.f7210a = atomicReferenceFieldUpdater;
            this.f7211b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.android.gms.internal.ads.acd.AbstractC1720b
        /* renamed from: a */
        final int mo5470a(acd acdVar) {
            return this.f7211b.decrementAndGet(acdVar);
        }

        @Override // com.google.android.gms.internal.ads.acd.AbstractC1720b
        /* renamed from: a */
        final void mo5469a(acd acdVar, Set<Throwable> set) {
            this.f7210a.compareAndSet(acdVar, null, set);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.acd$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acd$b.class */
    static abstract class AbstractC1720b {
        private AbstractC1720b() {
        }

        /* synthetic */ AbstractC1720b(byte b) {
            this();
        }

        /* renamed from: a */
        abstract int mo5470a(acd acdVar);

        /* renamed from: a */
        abstract void mo5469a(acd acdVar, Set<Throwable> set);
    }

    /* renamed from: com.google.android.gms.internal.ads.acd$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acd$c.class */
    static final class C1721c extends AbstractC1720b {
        private C1721c() {
            super((byte) 0);
        }

        /* synthetic */ C1721c(byte b) {
            this();
        }

        @Override // com.google.android.gms.internal.ads.acd.AbstractC1720b
        /* renamed from: a */
        final int mo5470a(acd acdVar) {
            int b;
            synchronized (acdVar) {
                b = acd.m5474b(acdVar);
            }
            return b;
        }

        @Override // com.google.android.gms.internal.ads.acd.AbstractC1720b
        /* renamed from: a */
        final void mo5469a(acd acdVar, Set<Throwable> set) {
            synchronized (acdVar) {
                if (acdVar.f7208a == null) {
                    acdVar.f7208a = set;
                }
            }
        }
    }

    static {
        Throwable th;
        AbstractC1720b bVar;
        try {
            bVar = new C1719a(AtomicReferenceFieldUpdater.newUpdater(acd.class, Set.class, "a"), AtomicIntegerFieldUpdater.newUpdater(acd.class, "b"));
            th = null;
        } catch (Throwable th2) {
            th = th2;
            bVar = new C1721c((byte) 0);
        }
        f7206c = bVar;
        if (th != null) {
            f7207d.logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public acd(int i) {
        this.f7209b = i;
    }

    /* renamed from: b */
    static /* synthetic */ int m5474b(acd acdVar) {
        int i = acdVar.f7209b - 1;
        acdVar.f7209b = i;
        return i;
    }

    /* renamed from: a */
    abstract void mo5475a(Set<Throwable> set);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final Set<Throwable> m5473j() {
        Set<Throwable> set = this.f7208a;
        Set<Throwable> set2 = set;
        if (set == null) {
            Set<Throwable> newSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
            mo5475a(newSetFromMap);
            f7206c.mo5469a(this, newSetFromMap);
            set2 = this.f7208a;
        }
        return set2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public final int m5472k() {
        return f7206c.mo5470a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public final void m5471l() {
        this.f7208a = null;
    }
}
