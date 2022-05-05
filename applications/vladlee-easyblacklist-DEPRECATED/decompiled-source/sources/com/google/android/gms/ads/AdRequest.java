package com.google.android.gms.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.ads.query.AdData;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzxj;
import com.google.android.gms.internal.ads.zzxm;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Date;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest.class */
public final class AdRequest {
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    @Deprecated
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;

    /* renamed from: a */
    private final zzxj f5817a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private final zzxm f5818a = new zzxm();

        public Builder() {
            this.f5818a.zzcg("B3EEABB8EE11C2BE770B684D95219ECB");
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.f5818a.zzb(cls, bundle);
            return this;
        }

        public final Builder addKeyword(String str) {
            this.f5818a.zzcf(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.f5818a.zza(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.f5818a.zza(cls, bundle);
            if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
                this.f5818a.zzch("B3EEABB8EE11C2BE770B684D95219ECB");
            }
            return this;
        }

        public final Builder addTestDevice(String str) {
            this.f5818a.zzcg(str);
            return this;
        }

        public final AdRequest build() {
            return new AdRequest(this, (byte) 0);
        }

        public final Builder setAdData(AdData adData) {
            this.f5818a.zza(adData);
            return this;
        }

        @Deprecated
        public final Builder setBirthday(Date date) {
            this.f5818a.zza(date);
            return this;
        }

        public final Builder setContentUrl(String str) {
            Preconditions.checkNotNull(str, "Content URL must be non-null.");
            Preconditions.checkNotEmpty(str, "Content URL must be non-empty.");
            Preconditions.checkArgument(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", Integer.valueOf((int) AdRequest.MAX_CONTENT_URL_LENGTH), Integer.valueOf(str.length()));
            this.f5818a.zzci(str);
            return this;
        }

        @Deprecated
        public final Builder setGender(int i) {
            this.f5818a.zzcl(i);
            return this;
        }

        @Deprecated
        public final Builder setIsDesignedForFamilies(boolean z) {
            this.f5818a.zzaa(z);
            return this;
        }

        public final Builder setLocation(Location location) {
            this.f5818a.zza(location);
            return this;
        }

        @Deprecated
        public final Builder setMaxAdContentRating(String str) {
            this.f5818a.zzcm(str);
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.f5818a.zzck(str);
            return this;
        }

        @Deprecated
        public final Builder setTagForUnderAgeOfConsent(int i) {
            this.f5818a.zzcm(i);
            return this;
        }

        @Deprecated
        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.f5818a.zzz(z);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdRequest$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    private AdRequest(Builder builder) {
        this.f5817a = new zzxj(builder.f5818a);
    }

    /* synthetic */ AdRequest(Builder builder, byte b) {
        this(builder);
    }

    @Deprecated
    public final Date getBirthday() {
        return this.f5817a.getBirthday();
    }

    public final String getContentUrl() {
        return this.f5817a.getContentUrl();
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.f5817a.getCustomEventExtrasBundle(cls);
    }

    @Deprecated
    public final int getGender() {
        return this.f5817a.getGender();
    }

    public final Set<String> getKeywords() {
        return this.f5817a.getKeywords();
    }

    public final Location getLocation() {
        return this.f5817a.getLocation();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.f5817a.getNetworkExtras(cls);
    }

    public final <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.f5817a.getNetworkExtrasBundle(cls);
    }

    public final boolean isTestDevice(Context context) {
        return this.f5817a.isTestDevice(context);
    }

    public final zzxj zzdg() {
        return this.f5817a;
    }
}
