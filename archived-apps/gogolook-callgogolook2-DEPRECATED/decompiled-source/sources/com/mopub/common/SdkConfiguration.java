package com.mopub.common;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mopub.common.logging.MoPubLog;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/SdkConfiguration.class */
public class SdkConfiguration {
    @NonNull

    /* renamed from: a */
    public final String f8132a;
    @NonNull

    /* renamed from: b */
    public final Set<String> f8133b;
    @NonNull

    /* renamed from: c */
    public final MediationSettings[] f8134c;
    @NonNull

    /* renamed from: d */
    public final Map<String, Map<String, String>> f8135d;
    @NonNull

    /* renamed from: e */
    public final Map<String, Map<String, String>> f8136e;
    @NonNull

    /* renamed from: f */
    public final MoPubLog.LogLevel f8137f;

    /* renamed from: g */
    public final boolean f8138g;

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/SdkConfiguration$Builder.class */
    public static class Builder {
        @NonNull

        /* renamed from: a */
        public String f8139a;
        @NonNull

        /* renamed from: b */
        public final Set<String> f8140b;
        @NonNull

        /* renamed from: c */
        public MediationSettings[] f8141c;
        @NonNull

        /* renamed from: d */
        public MoPubLog.LogLevel f8142d = MoPubLog.LogLevel.NONE;
        @NonNull

        /* renamed from: e */
        public final Map<String, Map<String, String>> f8143e;
        @NonNull

        /* renamed from: f */
        public final Map<String, Map<String, String>> f8144f;

        /* renamed from: g */
        public boolean f8145g;

        public Builder(@NonNull String str) {
            if (TextUtils.isEmpty(str)) {
                IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Ad unit cannot be empty at initialization");
                MoPubLog.setLogLevel(MoPubLog.getLogLevel());
                MoPubLog.log(MoPubLog.SdkLogEvent.INIT_FAILED, "Pass in an ad unit used by this app", illegalArgumentException);
            }
            this.f8139a = str;
            this.f8140b = DefaultAdapterClasses.getClassNamesSet();
            this.f8141c = new MediationSettings[0];
            this.f8143e = new HashMap();
            this.f8144f = new HashMap();
            this.f8145g = false;
        }

        public SdkConfiguration build() {
            return new SdkConfiguration(this.f8139a, this.f8140b, this.f8141c, this.f8142d, this.f8143e, this.f8144f, this.f8145g);
        }

        public Builder withAdditionalNetwork(@NonNull String str) {
            Preconditions.checkNotNull(str);
            this.f8140b.add(str);
            return this;
        }

        public Builder withLegitimateInterestAllowed(boolean z) {
            this.f8145g = z;
            return this;
        }

        public Builder withLogLevel(@NonNull MoPubLog.LogLevel logLevel) {
            Preconditions.checkNotNull(logLevel);
            this.f8142d = logLevel;
            return this;
        }

        public Builder withMediatedNetworkConfiguration(@NonNull String str, @NonNull Map<String, String> map) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(map);
            this.f8143e.put(str, map);
            return this;
        }

        public Builder withMediationSettings(@NonNull MediationSettings... mediationSettingsArr) {
            Preconditions.checkNotNull(mediationSettingsArr);
            this.f8141c = mediationSettingsArr;
            return this;
        }

        public Builder withMoPubRequestOptions(@NonNull String str, @NonNull Map<String, String> map) {
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(map);
            this.f8144f.put(str, map);
            return this;
        }
    }

    public SdkConfiguration(@NonNull String str, @NonNull Set<String> set, @NonNull MediationSettings[] mediationSettingsArr, @NonNull MoPubLog.LogLevel logLevel, @NonNull Map<String, Map<String, String>> map, @NonNull Map<String, Map<String, String>> map2, boolean z) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        this.f8132a = str;
        this.f8133b = set;
        this.f8134c = mediationSettingsArr;
        this.f8137f = logLevel;
        this.f8135d = map;
        this.f8136e = map2;
        this.f8138g = z;
    }

    @NonNull
    /* renamed from: a */
    public MoPubLog.LogLevel m30759a() {
        return this.f8137f;
    }

    @NonNull
    public String getAdUnitId() {
        return this.f8132a;
    }

    @NonNull
    public Set<String> getAdapterConfigurationClasses() {
        return Collections.unmodifiableSet(this.f8133b);
    }

    public boolean getLegitimateInterestAllowed() {
        return this.f8138g;
    }

    public Map<String, Map<String, String>> getMediatedNetworkConfigurations() {
        return Collections.unmodifiableMap(this.f8135d);
    }

    @NonNull
    public MediationSettings[] getMediationSettings() {
        MediationSettings[] mediationSettingsArr = this.f8134c;
        return (MediationSettings[]) Arrays.copyOf(mediationSettingsArr, mediationSettingsArr.length);
    }

    @NonNull
    public Map<String, Map<String, String>> getMoPubRequestOptions() {
        return Collections.unmodifiableMap(this.f8136e);
    }
}
