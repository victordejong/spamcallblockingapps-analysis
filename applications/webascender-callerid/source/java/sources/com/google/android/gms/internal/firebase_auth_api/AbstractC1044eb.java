package com.google.android.gms.internal.firebase_auth_api;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.eb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/eb.class */
abstract class AbstractC1044eb<T> implements Iterator<T> {

    /* renamed from: f */
    private T f3692f;

    /* renamed from: g */
    private int f3693g = 2;

    protected AbstractC1044eb() {
    }

    /* renamed from: a */
    protected abstract T m2944a();

    /* renamed from: b */
    protected final T m2943b() {
        this.f3693g = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f3693g;
        if (i != 4) {
            int i2 = i - 1;
            if (i == 0) {
                throw null;
            }
            if (i2 == 0) {
                return true;
            }
            if (i2 == 2) {
                return false;
            }
            this.f3693g = 4;
            this.f3692f = m2944a();
            if (this.f3693g == 3) {
                return false;
            }
            this.f3693g = 1;
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.f3693g = 2;
            T t = this.f3692f;
            this.f3692f = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
