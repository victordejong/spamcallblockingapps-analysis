package com.google.android.gms.ads.mediation;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter.class */
public interface MediationAdapter extends MediationExtrasReceiver {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter$zza.class */
    public static final class zza {

        /* renamed from: a */
        private int f6012a;

        public final Bundle zzaby() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.f6012a);
            return bundle;
        }

        public final zza zzdf(int i) {
            this.f6012a = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
