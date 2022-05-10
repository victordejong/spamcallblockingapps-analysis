package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnCanceledListener;
/* renamed from: c.d.b.d.m.f */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/f.class */
public final class RunnableC4891f implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C4892g f17511a;

    public RunnableC4891f(C4892g gVar) {
        this.f17511a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        OnCanceledListener onCanceledListener;
        OnCanceledListener onCanceledListener2;
        obj = this.f17511a.f17513b;
        synchronized (obj) {
            onCanceledListener = this.f17511a.f17514c;
            if (onCanceledListener != null) {
                onCanceledListener2 = this.f17511a.f17514c;
                onCanceledListener2.mo8584a();
            }
        }
    }
}
