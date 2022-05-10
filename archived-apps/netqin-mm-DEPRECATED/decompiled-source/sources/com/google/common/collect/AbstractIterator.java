package com.google.common.collect;

import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4978e1;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractIterator.class */
public abstract class AbstractIterator<T> extends AbstractC4978e1<T> {

    /* renamed from: a */
    public State f30418a = State.NOT_READY;

    /* renamed from: b */
    public T f30419b;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractIterator$State.class */
    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* renamed from: com.google.common.collect.AbstractIterator$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/AbstractIterator$a.class */
    public static /* synthetic */ class C7398a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f30420a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f30420a = iArr;
            try {
                iArr[State.DONE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30420a[State.READY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: a */
    public abstract T mo7953a();

    /* renamed from: b */
    public final T m8454b() {
        this.f30418a = State.DONE;
        return null;
    }

    /* renamed from: c */
    public final boolean m8453c() {
        this.f30418a = State.FAILED;
        this.f30419b = mo7953a();
        if (this.f30418a == State.DONE) {
            return false;
        }
        this.f30418a = State.READY;
        return true;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        C4933n.m24776b(this.f30418a != State.FAILED);
        int i = C7398a.f30420a[this.f30418a.ordinal()];
        if (i == 1) {
            return false;
        }
        if (i != 2) {
            return m8453c();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f30418a = State.NOT_READY;
            T t = this.f30419b;
            this.f30419b = null;
            return t;
        }
        throw new NoSuchElementException();
    }
}
