package androidx.databinding;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/databinding/CallbackRegistry.class */
public class CallbackRegistry<C, T, A> implements Cloneable {

    /* renamed from: f */
    private List<C> f3512f = new ArrayList();

    /* renamed from: g */
    private long f3513g = 0;

    /* renamed from: h */
    private long[] f3514h;

    /* renamed from: i */
    private int f3515i;

    /* renamed from: j */
    private final NotifierCallback<C, T, A> f3516j;

    /* loaded from: classes-dex2jar.jar:androidx/databinding/CallbackRegistry$NotifierCallback.class */
    public static abstract class NotifierCallback<C, T, A> {
        /* renamed from: a */
        public abstract void mo18605a(C c, T t, int i, A a);
    }

    public CallbackRegistry(NotifierCallback<C, T, A> notifierCallback) {
        this.f3516j = notifierCallback;
    }

    /* renamed from: b */
    private boolean m18688b(int i) {
        int i2;
        boolean z = true;
        boolean z2 = true;
        if (i < 64) {
            if (((1 << i) & this.f3513g) == 0) {
                z2 = false;
            }
            return z2;
        }
        long[] jArr = this.f3514h;
        if (jArr == null || (i2 = (i / 64) - 1) >= jArr.length) {
            return false;
        }
        if (((1 << (i % 64)) & jArr[i2]) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    private void m18687d(T t, int i, A a, int i2, int i3, long j) {
        long j2 = 1;
        while (i2 < i3) {
            if ((j & j2) == 0) {
                this.f3516j.mo18605a(this.f3512f.get(i2), t, i, a);
            }
            j2 <<= 1;
            i2++;
        }
    }

    /* renamed from: f */
    private void m18686f(T t, int i, A a) {
        m18687d(t, i, a, 0, Math.min(64, this.f3512f.size()), this.f3513g);
    }

    /* renamed from: g */
    private void m18685g(T t, int i, A a) {
        int size = this.f3512f.size();
        long[] jArr = this.f3514h;
        int length = jArr == null ? -1 : jArr.length - 1;
        m18684i(t, i, a, length);
        m18687d(t, i, a, (length + 2) * 64, size, 0L);
    }

    /* renamed from: i */
    private void m18684i(T t, int i, A a, int i2) {
        if (i2 < 0) {
            m18686f(t, i, a);
            return;
        }
        long j = this.f3514h[i2];
        int i3 = (i2 + 1) * 64;
        int min = Math.min(this.f3512f.size(), i3 + 64);
        m18684i(t, i, a, i2 - 1);
        m18687d(t, i, a, i3, min, j);
    }

    /* renamed from: l */
    private void m18682l(int i, long j) {
        long j2 = Long.MIN_VALUE;
        for (int i2 = (i + 64) - 1; i2 >= i; i2--) {
            if ((j & j2) != 0) {
                this.f3512f.remove(i2);
            }
            j2 >>>= 1;
        }
    }

    /* renamed from: m */
    private void m18681m(int i) {
        if (i < 64) {
            this.f3513g = (1 << i) | this.f3513g;
            return;
        }
        int i2 = (i / 64) - 1;
        long[] jArr = this.f3514h;
        if (jArr == null) {
            this.f3514h = new long[this.f3512f.size() / 64];
        } else if (jArr.length <= i2) {
            long[] jArr2 = new long[this.f3512f.size() / 64];
            long[] jArr3 = this.f3514h;
            System.arraycopy(jArr3, 0, jArr2, 0, jArr3.length);
            this.f3514h = jArr2;
        }
        long[] jArr4 = this.f3514h;
        jArr4[i2] = (1 << (i % 64)) | jArr4[i2];
    }

    /* renamed from: a */
    public CallbackRegistry<C, T, A> clone() {
        CallbackRegistry<C, T, A> callbackRegistry;
        CloneNotSupportedException e;
        synchronized (this) {
            try {
                callbackRegistry = (CallbackRegistry) super.clone();
                try {
                    callbackRegistry.f3513g = 0L;
                    callbackRegistry.f3514h = null;
                    int i = 0;
                    callbackRegistry.f3515i = 0;
                    callbackRegistry.f3512f = new ArrayList();
                    int size = this.f3512f.size();
                    while (true) {
                        callbackRegistry = callbackRegistry;
                        if (i >= size) {
                            break;
                        }
                        if (!m18688b(i)) {
                            callbackRegistry.f3512f.add(this.f3512f.get(i));
                        }
                        i++;
                    }
                } catch (CloneNotSupportedException e2) {
                    e = e2;
                    e.printStackTrace();
                    return callbackRegistry;
                }
            } catch (CloneNotSupportedException e3) {
                e = e3;
                callbackRegistry = null;
            }
        }
        return callbackRegistry;
    }

    /* renamed from: c */
    public void mo18672c(T t, int i, A a) {
        synchronized (this) {
            this.f3515i++;
            m18685g(t, i, a);
            int i2 = this.f3515i - 1;
            this.f3515i = i2;
            if (i2 == 0) {
                if (this.f3514h != null) {
                    for (int length = this.f3514h.length - 1; length >= 0; length--) {
                        long j = this.f3514h[length];
                        if (j != 0) {
                            m18682l((length + 1) * 64, j);
                            this.f3514h[length] = 0;
                        }
                    }
                }
                if (this.f3513g != 0) {
                    m18682l(0, this.f3513g);
                    this.f3513g = 0L;
                }
            }
        }
    }

    /* renamed from: j */
    public void m18683j(C c) {
        synchronized (this) {
            if (this.f3515i == 0) {
                this.f3512f.remove(c);
            } else {
                int lastIndexOf = this.f3512f.lastIndexOf(c);
                if (lastIndexOf >= 0) {
                    m18681m(lastIndexOf);
                }
            }
        }
    }
}
