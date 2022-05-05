package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.AdRequest;
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
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest.class */
public final class PublisherAdRequest {
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
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    @Deprecated
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;

    /* renamed from: a */
    private final zzxj f5848a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private final zzxm f5849a = new zzxm();

        public final Builder addCategoryExclusion(String str) {
            this.f5849a.zzcl(str);
            return this;
        }

        public final Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.f5849a.zzb(cls, bundle);
            return this;
        }

        public final Builder addCustomTargeting(String str, String str2) {
            this.f5849a.zze(str, str2);
            return this;
        }

        public final Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.f5849a.zze(str, TextUtils.join(",", list));
            }
            return this;
        }

        public final Builder addKeyword(String str) {
            this.f5849a.zzcf(str);
            return this;
        }

        public final Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.f5849a.zza(networkExtras);
            return this;
        }

        public final Builder addNetworkExtrasBundle(Class<? extends MediationExtrasReceiver> cls, Bundle bundle) {
            this.f5849a.zza(cls, bundle);
            return this;
        }

        public final Builder addTestDevice(String str) {
            this.f5849a.zzcg(str);
            return this;
        }

        public final PublisherAdRequest build() {
            return new PublisherAdRequest(this, (byte) 0);
        }

        public final Builder setAdData(AdData adData) {
            this.f5849a.zza(adData);
            return this;
        }

        @Deprecated
        public final Builder setBirthday(Date date) {
            this.f5849a.zza(date);
            return this;
        }

        public final Builder setContentUrl(String str) {
            Preconditions.checkNotNull(str, "Content URL must be non-null.");
            Preconditions.checkNotEmpty(str, "Content URL must be non-empty.");
            Preconditions.checkArgument(str.length() <= 512, "Content URL must not exceed %d in length.  Provided length was %d.", Integer.valueOf((int) AdRequest.MAX_CONTENT_URL_LENGTH), Integer.valueOf(str.length()));
            this.f5849a.zzci(str);
            return this;
        }

        @Deprecated
        public final Builder setGender(int i) {
            this.f5849a.zzcl(i);
            return this;
        }

        @Deprecated
        public final Builder setIsDesignedForFamilies(boolean z) {
            this.f5849a.zzaa(z);
            return this;
        }

        public final Builder setLocation(Location location) {
            this.f5849a.zza(location);
            return this;
        }

        @Deprecated
        public final Builder setManualImpressionsEnabled(boolean z) {
            this.f5849a.setManualImpressionsEnabled(z);
            return this;
        }

        @Deprecated
        public final Builder setMaxAdContentRating(String str) {
            this.f5849a.zzcm(str);
            return this;
        }

        public final Builder setPublisherProvidedId(String str) {
            this.f5849a.zzcj(str);
            return this;
        }

        public final Builder setRequestAgent(String str) {
            this.f5849a.zzck(str);
            return this;
        }

        @Deprecated
        public final Builder setTagForUnderAgeOfConsent(int i) {
            this.f5849a.zzcm(i);
            return this;
        }

        @Deprecated
        public final Builder tagForChildDirectedTreatment(boolean z) {
            this.f5849a.zzz(z);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/doubleclick/PublisherAdRequest$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    private PublisherAdRequest(Builder builder) {
        this.f5848a = new zzxj(builder.f5849a);
    }

    /* synthetic */ PublisherAdRequest(Builder builder, byte b) {
        this(builder);
    }

    @Deprecated
    public static void updateCorrelator() {
    }

    @Deprecated
    public final Date getBirthday() {
        return this.f5848a.getBirthday();
    }

    public final String getContentUrl() {
        return this.f5848a.getContentUrl();
    }

    public final <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.f5848a.getCustomEventExtrasBundle(cls);
    }

    public final Bundle getCustomTargeting() {
        return this.f5848a.getCustomTargeting();
    }

    @Deprecated
    public final int getGender() {
        return this.f5848a.getGender();
    }

    public final Set<String> getKeywords() {
        return this.f5848a.getKeywords();
    }

    public final Location getLocation() {
        return this.f5848a.getLocation();
    }

    public final boolean getManualImpressionsEnabled() {
        return this.f5848a.getManualImpressionsEnabled();
    }

    @Deprecated
    public final <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return (T) this.f5848a.getNetworkExtras(cls);
    }

    public final <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.f5848a.getNetworkExtrasBundle(cls);
    }

    public final String getPublisherProvidedId() {
        return this.f5848a.getPublisherProvidedId();
    }

    public final boolean isTestDevice(Context context) {
        return this.f5848a.isTestDevice(context);
    }

    public final zzxj zzdg() {
        return this.f5848a;
    }
}
