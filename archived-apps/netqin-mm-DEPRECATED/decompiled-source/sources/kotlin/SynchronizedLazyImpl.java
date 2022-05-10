package kotlin;

import java.io.Serializable;
import p573f.AbstractC9907c;
import p573f.C9941m;
import p573f.p590w.p591b.AbstractC10020a;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/SynchronizedLazyImpl.class */
public final class SynchronizedLazyImpl<T> implements AbstractC9907c<T>, Serializable {
    public volatile Object _value;
    public AbstractC10020a<? extends T> initializer;
    public final Object lock;

    public SynchronizedLazyImpl(AbstractC10020a<? extends T> aVar, Object obj) {
        C10059q.m1637b(aVar, "initializer");
        this.initializer = aVar;
        this._value = C9941m.f37133a;
        this.lock = obj == null ? this : obj;
    }

    public /* synthetic */ SynchronizedLazyImpl(AbstractC10020a aVar, Object obj, int i, C10057o oVar) {
        this(aVar, (i & 2) != 0 ? null : obj);
    }

    private final Object writeReplace() {
        return new InitializedLazyImpl(getValue());
    }

    @Override // p573f.AbstractC9907c
    public T getValue() {
        T t;
        T t2 = (T) this._value;
        if (t2 != C9941m.f37133a) {
            return t2;
        }
        synchronized (this.lock) {
            t = (T) this._value;
            if (t == C9941m.f37133a) {
                AbstractC10020a<? extends T> aVar = this.initializer;
                if (aVar != null) {
                    t = (T) aVar.invoke();
                    this._value = t;
                    this.initializer = null;
                } else {
                    C10059q.m1646a();
                    throw null;
                }
            }
        }
        return t;
    }

    public boolean isInitialized() {
        return this._value != C9941m.f37133a;
    }

    public String toString() {
        return isInitialized() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
