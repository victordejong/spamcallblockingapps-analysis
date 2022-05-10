package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zztk;
/* renamed from: c.d.b.d.g.a.ng0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ng0.class */
public final class ng0 implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a */
    public final /* synthetic */ zzbcg f14247a;

    /* renamed from: b */
    public final /* synthetic */ zztk f14248b;

    public ng0(zztk zztkVar, zzbcg zzbcgVar) {
        this.f14248b = zztkVar;
        this.f14247a = zzbcgVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Object obj;
        obj = this.f14248b.f28980d;
        synchronized (obj) {
            this.f14247a.m15834a((Throwable) new RuntimeException("Connection failed."));
        }
    }
}
