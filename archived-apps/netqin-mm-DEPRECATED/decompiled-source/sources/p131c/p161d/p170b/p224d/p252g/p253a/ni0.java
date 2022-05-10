package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaaa;
import com.google.android.gms.internal.ads.zzaug;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.ni0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ni0.class */
public final class ni0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzaaa f14256a;

    public ni0(zzaaa zzaaaVar) {
        this.f14256a = zzaaaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzaug zzaugVar;
        zzaug zzaugVar2;
        zzaugVar = this.f14256a.f23622a;
        if (zzaugVar != null) {
            try {
                zzaugVar2 = this.f14256a.f23622a;
                zzaugVar2.mo16334c(1);
            } catch (RemoteException e) {
                zzbbq.m15853c("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
