package com.google.common.cache;

import java.util.concurrent.atomic.AtomicLong;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p268b.AbstractC4952g;
/* loaded from: classes2-dex2jar.jar:com/google/common/cache/LongAddables.class */
public final class LongAddables {

    /* renamed from: a */
    public static final AbstractC4941s<AbstractC4952g> f30404a;

    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LongAddables$PureJavaLongAddable.class */
    public static final class PureJavaLongAddable extends AtomicLong implements AbstractC4952g {
        public PureJavaLongAddable() {
        }

        public /* synthetic */ PureJavaLongAddable(C7384a aVar) {
            this();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4952g
        public void add(long j) {
            getAndAdd(j);
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4952g
        public void increment() {
            getAndIncrement();
        }

        @Override // p131c.p161d.p266c.p268b.AbstractC4952g
        public long sum() {
            return get();
        }
    }

    /* renamed from: com.google.common.cache.LongAddables$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LongAddables$a.class */
    public static final class C7384a implements AbstractC4941s<AbstractC4952g> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public AbstractC4952g get() {
            return new LongAdder();
        }
    }

    /* renamed from: com.google.common.cache.LongAddables$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/cache/LongAddables$b.class */
    public static final class C7385b implements AbstractC4941s<AbstractC4952g> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public AbstractC4952g get() {
            return new PureJavaLongAddable(null);
        }
    }

    static {
        AbstractC4941s<AbstractC4952g> sVar;
        try {
            new LongAdder();
            sVar = new C7384a();
        } catch (Throwable th) {
            sVar = new C7385b();
        }
        f30404a = sVar;
    }

    /* renamed from: a */
    public static AbstractC4952g m8457a() {
        return f30404a.get();
    }
}
