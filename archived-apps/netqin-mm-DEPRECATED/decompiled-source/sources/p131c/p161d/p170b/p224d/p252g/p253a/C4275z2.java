package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzanh;
import com.google.android.gms.internal.ads.zzaov;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.z2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/z2.class */
public final class C4275z2 implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {

    /* renamed from: a */
    public final /* synthetic */ zzaov f16247a;

    /* renamed from: b */
    public final /* synthetic */ zzanh f16248b;

    public C4275z2(zzapq zzapqVar, zzaov zzaovVar, zzanh zzanhVar) {
        this.f16247a = zzaovVar;
        this.f16248b = zzanhVar;
    }

    /* renamed from: a */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        if (mediationBannerAd == null) {
            zzbbq.m15852d("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f16247a.mo16497b("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzbbq.m15855b("", e);
                return null;
            }
        } else {
            try {
                this.f16247a.mo16496t(ObjectWrapper.m17020a(mediationBannerAd.getView()));
            } catch (RemoteException e2) {
                zzbbq.m15855b("", e2);
            }
            return new C3494e3(this.f16248b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* renamed from: a */
    public final void mo17937a(String str) {
        try {
            this.f16247a.mo16497b(str);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
