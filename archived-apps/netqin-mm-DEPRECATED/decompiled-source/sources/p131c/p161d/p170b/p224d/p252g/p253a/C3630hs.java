package p131c.p161d.p170b.p224d.p252g.p253a;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzart;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzdaq;
import com.google.android.gms.internal.ads.zzdyr;
import java.util.ArrayList;
/* renamed from: c.d.b.d.g.a.hs */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/hs.class */
public final class C3630hs implements zzdyr<ArrayList<Uri>> {

    /* renamed from: a */
    public final /* synthetic */ zzart f13475a;

    public C3630hs(zzdaq zzdaqVar, zzart zzartVar) {
        this.f13475a = zzartVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        try {
            zzart zzartVar = this.f13475a;
            String valueOf = String.valueOf(th.getMessage());
            zzartVar.mo16391h(valueOf.length() != 0 ? "Internal error: ".concat(valueOf) : new String("Internal error: "));
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(ArrayList<Uri> arrayList) {
        try {
            this.f13475a.mo16392b(arrayList);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
