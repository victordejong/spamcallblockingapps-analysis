package p530d.p531a.p532v0;

import io.grpc.Context;
/* renamed from: d.a.v0.u */
/* loaded from: classes2-dex2jar.jar:d/a/v0/u.class */
public abstract class AbstractRunnableC9505u implements Runnable {

    /* renamed from: a */
    public final Context f36337a;

    public AbstractRunnableC9505u(Context context) {
        this.f36337a = context;
    }

    /* renamed from: a */
    public abstract void mo2581a();

    @Override // java.lang.Runnable
    public final void run() {
        Context a = this.f36337a.mo678a();
        try {
            mo2581a();
        } finally {
            this.f36337a.mo677a(a);
        }
    }
}
