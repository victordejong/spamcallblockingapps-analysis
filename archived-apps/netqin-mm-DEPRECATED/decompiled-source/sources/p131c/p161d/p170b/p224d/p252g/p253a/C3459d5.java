package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.internal.ads.zzayl;
import com.google.android.gms.internal.ads.zzbbk;
import com.google.android.gms.internal.ads.zzbbq;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.d5 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d5.class */
public final class C3459d5 extends zzayl {

    /* renamed from: c */
    public Context f12609c;

    public C3459d5(Context context) {
        this.f12609c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    /* renamed from: a */
    public final void mo15673a() {
        boolean z;
        try {
            z = AdvertisingIdClient.getIsAdIdFakeForDebugLogging(this.f12609c);
        } catch (GooglePlayServicesNotAvailableException | GooglePlayServicesRepairableException | IOException | IllegalStateException e) {
            zzbbq.m15855b("Fail to get isAdIdFakeForDebugLogging", e);
            z = false;
        }
        zzbbk.m15868a(z);
        StringBuilder sb = new StringBuilder(43);
        sb.append("Update ad debug logging enablement as ");
        sb.append(z);
        zzbbq.m15852d(sb.toString());
    }
}
