package com.google.android.gms.ads.mediation;

import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdLoadCallback.class */
public interface MediationAdLoadCallback<MediationAdT, MediationAdCallbackT> {
    void onFailure(String str);

    MediationAdCallbackT onSuccess(MediationAdT mediationadt);
}
