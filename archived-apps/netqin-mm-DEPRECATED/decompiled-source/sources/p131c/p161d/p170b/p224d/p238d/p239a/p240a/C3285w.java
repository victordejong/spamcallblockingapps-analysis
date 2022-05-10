package p131c.p161d.p170b.p224d.p238d.p239a.p240a;

import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.internal.BaseGmsClient;
/* renamed from: c.d.b.d.d.a.a.w */
/* loaded from: classes-dex2jar.jar:c/d/b/d/d/a/a/w.class */
public final class C3285w implements BaseGmsClient.SignOutCallbacks {

    /* renamed from: a */
    public final /* synthetic */ GoogleApiManager.zaa f12001a;

    public C3285w(GoogleApiManager.zaa zaaVar) {
        this.f12001a = zaaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.SignOutCallbacks
    /* renamed from: a */
    public final void mo17342a() {
        GoogleApiManager.this.f23128m.post(new RunnableC3284v(this));
    }
}
