package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.internal.ads.zzanh;
import com.google.android.gms.internal.ads.zzapa;
import com.google.android.gms.internal.ads.zzapq;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.b3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/b3.class */
public final class C3378b3 implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {

    /* renamed from: a */
    public final /* synthetic */ zzapa f12327a;

    /* renamed from: b */
    public final /* synthetic */ zzanh f12328b;

    /* renamed from: c */
    public final /* synthetic */ zzapq f12329c;

    public C3378b3(zzapq zzapqVar, zzapa zzapaVar, zzanh zzanhVar) {
        this.f12329c = zzapqVar;
        this.f12327a = zzapaVar;
        this.f12328b = zzanhVar;
    }

    /* renamed from: a */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        if (mediationInterstitialAd == null) {
            zzbbq.m15852d("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
            try {
                this.f12327a.mo16494b("Adapter returned null.");
                return null;
            } catch (RemoteException e) {
                zzbbq.m15855b("", e);
                return null;
            }
        } else {
            try {
                this.f12329c.f24240b = mediationInterstitialAd;
                this.f12327a.mo16493r0();
            } catch (RemoteException e2) {
                zzbbq.m15855b("", e2);
            }
            return new C3494e3(this.f12328b);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* renamed from: a */
    public final void mo17937a(String str) {
        try {
            this.f12327a.mo16494b(str);
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
