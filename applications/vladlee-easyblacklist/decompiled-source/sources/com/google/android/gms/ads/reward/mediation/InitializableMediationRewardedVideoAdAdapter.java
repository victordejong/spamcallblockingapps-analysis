package com.google.android.gms.ads.reward.mediation;

import android.content.Context;
import android.os.Bundle;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/reward/mediation/InitializableMediationRewardedVideoAdAdapter.class */
public interface InitializableMediationRewardedVideoAdAdapter extends MediationRewardedVideoAdAdapter {
    void initialize(Context context, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, List<Bundle> list);
}
