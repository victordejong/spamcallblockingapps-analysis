package com.google.common.hash;

import java.util.concurrent.atomic.AtomicLong;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p270d.AbstractC5050i;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/LongAddables.class */
public final class LongAddables {

    /* renamed from: a */
    public static final AbstractC4941s<AbstractC5050i> f30832a;

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/LongAddables$PureJavaLongAddable.class */
    public static final class PureJavaLongAddable extends AtomicLong implements AbstractC5050i {
        public PureJavaLongAddable() {
        }

        public /* synthetic */ PureJavaLongAddable(C7690a aVar) {
            this();
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5050i
        public void add(long j) {
            getAndAdd(j);
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5050i
        public void increment() {
            getAndIncrement();
        }

        @Override // p131c.p161d.p266c.p270d.AbstractC5050i
        public long sum() {
            return get();
        }
    }

    /* renamed from: com.google.common.hash.LongAddables$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/LongAddables$a.class */
    public static final class C7690a implements AbstractC4941s<AbstractC5050i> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public AbstractC5050i get() {
            return new LongAdder();
        }
    }

    /* renamed from: com.google.common.hash.LongAddables$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/LongAddables$b.class */
    public static final class C7691b implements AbstractC4941s<AbstractC5050i> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public AbstractC5050i get() {
            return new PureJavaLongAddable(null);
        }
    }

    static {
        AbstractC4941s<AbstractC5050i> sVar;
        try {
            new LongAdder();
            sVar = new C7690a();
        } catch (Throwable th) {
            sVar = new C7691b();
        }
        f30832a = sVar;
    }

    /* renamed from: a */
    public static AbstractC5050i m7943a() {
        return f30832a.get();
    }
}
