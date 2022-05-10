package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.GoogleApiManager;
/* renamed from: c.d.b.d.d.a.a.t */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/t.class */
public final class RunnableC3280t implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ConnectionResult f11990a;

    /* renamed from: b */
    public final /* synthetic */ GoogleApiManager.zaa f11991b;

    public RunnableC3280t(GoogleApiManager.zaa zaaVar, ConnectionResult connectionResult) {
        this.f11991b = zaaVar;
        this.f11990a = connectionResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11991b.onConnectionFailed(this.f11990a);
    }
}
