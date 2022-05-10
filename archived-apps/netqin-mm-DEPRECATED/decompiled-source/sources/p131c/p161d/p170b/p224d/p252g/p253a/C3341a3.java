package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.internal.ads.zzanh;
import com.google.android.gms.internal.ads.zzaow;
import com.google.android.gms.internal.ads.zzapb;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.a3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/a3.class */
public final class C3341a3 implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {

    /* renamed from: a */
    public final /* synthetic */ zzapb f12058a;

    /* renamed from: b */
    public final /* synthetic */ zzanh f12059b;

    public C3341a3(zzapq zzapqVar, zzapb zzapbVar, zzanh zzanhVar) {
        this.f12058a = zzapbVar;
        this.f12059b = zzanhVar;
    }

    /* renamed from: a */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        if (unifiedNativeAdMapper == null) {
            zzbbq.m15852d("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f12058a.mo16490b("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzbbq.m15855b("", e);
                return null;
            }
        } else {
            try {
                this.f12058a.mo16492a(new zzaow(unifiedNativeAdMapper));
            } catch (RemoteException e2) {
                zzbbq.m15855b("", e2);
            }
            return new C3494e3(this.f12059b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* renamed from: a */
    public final void mo17937a(String str) {
        try {
            this.f12058a.mo16490b(str);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
