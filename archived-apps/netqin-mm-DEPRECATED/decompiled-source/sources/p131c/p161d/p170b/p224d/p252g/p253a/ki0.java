package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzwt;
import com.google.android.gms.internal.ads.zzzs;
/* renamed from: c.d.b.d.g.a.ki0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ki0.class */
public final class ki0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzzs f13891a;

    public ki0(zzzs zzzsVar) {
        this.f13891a = zzzsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzwt zzwtVar;
        zzwt zzwtVar2;
        zzwtVar = this.f13891a.f29173a;
        if (zzwtVar != null) {
            try {
                zzwtVar2 = this.f13891a.f29173a;
                zzwtVar2.mo11157a(1);
            } catch (RemoteException e) {
                zzbbq.m15853c("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
