package com.google.android.gms.ads;

import com.google.android.gms.internal.ads.zzayu;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration.class */
public class RequestConfiguration {
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;
    public static final List<String> zzabs = Arrays.asList("MA", "T", "PG", "G");

    /* renamed from: a */
    private final int f5829a;

    /* renamed from: b */
    private final int f5830b;

    /* renamed from: c */
    private final String f5831c;

    /* renamed from: d */
    private final List<String> f5832d;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private int f5833a = -1;

        /* renamed from: b */
        private int f5834b = -1;

        /* renamed from: c */
        private String f5835c = null;

        /* renamed from: d */
        private final List<String> f5836d = new ArrayList();

        public RequestConfiguration build() {
            return new RequestConfiguration(this.f5833a, this.f5834b, this.f5835c, this.f5836d, (byte) 0);
        }

        public Builder setMaxAdContentRating(String str) {
            String str2;
            if (str == null || "".equals(str)) {
                str2 = null;
            } else {
                str2 = str;
                if (!"G".equals(str)) {
                    str2 = str;
                    if (!"PG".equals(str)) {
                        str2 = str;
                        if (!"T".equals(str)) {
                            if ("MA".equals(str)) {
                                str2 = str;
                            } else {
                                String valueOf = String.valueOf(str);
                                zzayu.zzez(valueOf.length() != 0 ? "Invalid value passed to setMaxAdContentRating: ".concat(valueOf) : new String("Invalid value passed to setMaxAdContentRating: "));
                                return this;
                            }
                        }
                    }
                }
            }
            this.f5835c = str2;
            return this;
        }

        public Builder setTagForChildDirectedTreatment(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.f5833a = i;
            } else {
                StringBuilder sb = new StringBuilder(68);
                sb.append("Invalid value passed to setTagForChildDirectedTreatment: ");
                sb.append(i);
                zzayu.zzez(sb.toString());
            }
            return this;
        }

        public Builder setTagForUnderAgeOfConsent(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.f5834b = i;
            } else {
                StringBuilder sb = new StringBuilder(63);
                sb.append("Invalid value passed to setTagForUnderAgeOfConsent: ");
                sb.append(i);
                zzayu.zzez(sb.toString());
            }
            return this;
        }

        public Builder setTestDeviceIds(@Nullable List<String> list) {
            this.f5836d.clear();
            if (list != null) {
                this.f5836d.addAll(list);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$MaxAdContentRating.class */
    public @interface MaxAdContentRating {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$TagForChildDirectedTreatment.class */
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/RequestConfiguration$TagForUnderAgeOfConsent.class */
    public @interface TagForUnderAgeOfConsent {
    }

    private RequestConfiguration(int i, int i2, String str, List<String> list) {
        this.f5829a = i;
        this.f5830b = i2;
        this.f5831c = str;
        this.f5832d = list;
    }

    /* synthetic */ RequestConfiguration(int i, int i2, String str, List list, byte b) {
        this(i, i2, str, list);
    }

    public String getMaxAdContentRating() {
        String str = this.f5831c;
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    public int getTagForChildDirectedTreatment() {
        return this.f5829a;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.f5830b;
    }

    public List<String> getTestDeviceIds() {
        return new ArrayList(this.f5832d);
    }

    public Builder toBuilder() {
        return new Builder().setTagForChildDirectedTreatment(this.f5829a).setTagForUnderAgeOfConsent(this.f5830b).setMaxAdContentRating(this.f5831c).setTestDeviceIds(this.f5832d);
    }
}
