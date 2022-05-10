package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzaxv;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbcg;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.v4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v4.class */
public final class RunnableC4128v4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f15695a;

    /* renamed from: b */
    public final /* synthetic */ zzbcg f15696b;

    public RunnableC4128v4(zzaxv zzaxvVar, Context context, zzbcg zzbcgVar) {
        this.f15695a = context;
        this.f15696b = zzbcgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f15696b.m15835a((zzbcg) AdvertisingIdClient.getAdvertisingIdInfo(this.f15695a));
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            this.f15696b.m15834a(e);
            zzbbq.m15855b("Exception while getting advertising Id info", e);
        }
    }
}
