package com.google.common.base;

import java.util.Iterator;
import java.util.NoSuchElementException;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/AbstractIterator.class */
public abstract class AbstractIterator<T> implements Iterator<T> {

    /* renamed from: a */
    public State f30268a = State.NOT_READY;

    /* renamed from: b */
    public T f30269b;

    /* loaded from: classes2-dex2jar.jar:com/google/common/base/AbstractIterator$State.class */
    public enum State {
        READY,
        NOT_READY,
        DONE,
        FAILED
    }

    /* renamed from: com.google.common.base.AbstractIterator$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/AbstractIterator$a.class */
    public static /* synthetic */ class C7313a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f30270a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[State.values().length];
            f30270a = iArr;
            try {
                iArr[State.READY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30270a[State.DONE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: a */
    public abstract T mo8573a();

    /* renamed from: b */
    public final T m8578b() {
        this.f30268a = State.DONE;
        return null;
    }

    /* renamed from: c */
    public final boolean m8577c() {
        this.f30268a = State.FAILED;
        this.f30269b = mo8573a();
        if (this.f30268a == State.DONE) {
            return false;
        }
        this.f30268a = State.READY;
        return true;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        C4933n.m24776b(this.f30268a != State.FAILED);
        int i = C7313a.f30270a[this.f30268a.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return m8577c();
        }
        return false;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f30268a = State.NOT_READY;
            T t = this.f30269b;
            this.f30269b = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
