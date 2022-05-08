package com.google.android.gms.ads.mediation;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter.class */
public interface MediationAdapter {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter$zza.class */
    public static final class zza {
        public int zzdjf;

        public final zza zzaq(int i) {
            this.zzdjf = 1;
            return this;
        }

        public final Bundle zzxq() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.zzdjf);
            return bundle;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
