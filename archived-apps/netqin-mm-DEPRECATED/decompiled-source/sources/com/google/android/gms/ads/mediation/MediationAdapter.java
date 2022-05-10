package com.google.android.gms.ads.mediation;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter.class */
public interface MediationAdapter extends MediationExtrasReceiver {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/MediationAdapter$zza.class */
    public static final class zza {

        /* renamed from: a */
        public int f22855a;

        /* renamed from: a */
        public final Bundle m17936a() {
            Bundle bundle = new Bundle();
            bundle.putInt("capabilities", this.f22855a);
            return bundle;
        }

        /* renamed from: a */
        public final zza m17935a(int i) {
            this.f22855a = 1;
            return this;
        }
    }

    void onDestroy();

    void onPause();

    void onResume();
}
