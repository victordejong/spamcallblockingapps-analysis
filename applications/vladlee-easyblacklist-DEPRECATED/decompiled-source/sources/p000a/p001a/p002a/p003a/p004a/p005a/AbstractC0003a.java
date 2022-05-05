package p000a.p001a.p002a.p003a.p004a.p005a;

import android.content.Context;
/* renamed from: a.a.a.a.a.a.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/a/a.class */
public abstract class AbstractC0003a<T> implements AbstractC0005c<T> {

    /* renamed from: a */
    private final AbstractC0005c<T> f4a = null;

    /* renamed from: a */
    protected abstract T mo10406a();

    @Override // p000a.p001a.p002a.p003a.p004a.p005a.AbstractC0005c
    /* renamed from: a */
    public final T mo10404a(Context context, AbstractC0006d<T> dVar) {
        T t;
        synchronized (this) {
            T a = mo10406a();
            t = a;
            if (a == null) {
                T a2 = this.f4a != null ? this.f4a.mo10404a(context, dVar) : dVar.load(context);
                if (a2 != null) {
                    mo10405a(a2);
                    t = a2;
                } else {
                    throw new NullPointerException();
                }
            }
        }
        return t;
    }

    /* renamed from: a */
    protected abstract void mo10405a(T t);
}
