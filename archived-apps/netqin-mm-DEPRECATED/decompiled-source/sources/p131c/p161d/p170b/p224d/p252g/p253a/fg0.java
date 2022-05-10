package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzsw;
import com.google.android.gms.internal.ads.zztb;
/* renamed from: c.d.b.d.g.a.fg0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/fg0.class */
public final class fg0 implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a */
    public final /* synthetic */ zzsw f12968a;

    public fg0(zzsw zzswVar) {
        this.f12968a = zzswVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Object obj;
        Object obj2;
        zztb zztbVar;
        zztb zztbVar2;
        obj = this.f12968a.f28963b;
        synchronized (obj) {
            try {
                zztbVar = this.f12968a.f28964c;
                if (zztbVar != null) {
                    zzsw zzswVar = this.f12968a;
                    zztbVar2 = this.f12968a.f28964c;
                    zzswVar.f28966e = zztbVar2.m11440H();
                }
            } catch (DeadObjectException e) {
                zzbbq.m15855b("Unable to obtain a cache service instance.", e);
                this.f12968a.m11451b();
            }
            obj2 = this.f12968a.f28963b;
            obj2.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        Object obj;
        Object obj2;
        obj = this.f12968a.f28963b;
        synchronized (obj) {
            this.f12968a.f28966e = null;
            obj2 = this.f12968a.f28963b;
            obj2.notifyAll();
        }
    }
}
