package com.mopub.common;

import android.content.Context;
import android.graphics.Point;
import android.location.Location;
import android.text.TextUtils;
import android.view.WindowInsets;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.C2041o;
import com.mopub.common.ClientMetadata;
import com.mopub.common.privacy.ConsentData;
import com.mopub.common.privacy.PersonalInfoManager;
import com.mopub.common.util.DateAndTime;
import com.mopub.network.RequestRateTracker;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/AdUrlGenerator.class */
public abstract class AdUrlGenerator extends BaseUrlGenerator {

    /* renamed from: e */
    public Context f7975e;

    /* renamed from: f */
    public String f7976f;

    /* renamed from: g */
    public String f7977g;

    /* renamed from: h */
    public String f7978h;

    /* renamed from: i */
    public Location f7979i;

    /* renamed from: j */
    public Point f7980j;

    /* renamed from: k */
    public WindowInsets f7981k;
    @Nullable

    /* renamed from: l */
    public final PersonalInfoManager f7982l = MoPub.getPersonalInformationManager();
    @Nullable

    /* renamed from: m */
    public final ConsentData f7983m;

    public AdUrlGenerator(Context context) {
        this.f7975e = context;
        PersonalInfoManager personalInfoManager = this.f7982l;
        if (personalInfoManager == null) {
            this.f7983m = null;
        } else {
            this.f7983m = personalInfoManager.getConsentData();
        }
    }

    /* renamed from: b */
    public static int m30898b(Location location) {
        Preconditions.checkNotNull(location);
        return (int) (System.currentTimeMillis() - location.getTime());
    }

    /* renamed from: a */
    public void m30903a(float f) {
        m30868a("sc", "" + f);
    }

    /* renamed from: a */
    public void m30902a(@Nullable Location location) {
        if (MoPub.canCollectPersonalInformation()) {
            Location lastKnownLocation = LocationService.getLastKnownLocation(this.f7975e, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
            if (lastKnownLocation != null) {
                location = lastKnownLocation;
            }
            if (location != null) {
                m30868a("ll", location.getLatitude() + "," + location.getLongitude());
                m30868a("lla", String.valueOf((int) location.getAccuracy()));
                m30868a("llf", String.valueOf(m30898b(location)));
                if (location == lastKnownLocation) {
                    m30868a("llsdk", "1");
                }
            }
        }
    }

    /* renamed from: a */
    public void m30901a(ClientMetadata.MoPubNetworkType moPubNetworkType) {
        m30899a("ct", moPubNetworkType);
    }

    /* renamed from: a */
    public void m30900a(ClientMetadata clientMetadata) {
        m30894e(this.f7976f);
        m30879m(clientMetadata.getSdkVersion());
        m30865b();
        m30862c();
        m30866a(clientMetadata.getDeviceManufacturer(), clientMetadata.getDeviceModel(), clientMetadata.getDeviceProduct());
        m30892f(clientMetadata.getAppPackageName());
        m30886i(this.f7977g);
        if (MoPub.canCollectPersonalInformation()) {
            m30877o(this.f7978h);
            m30902a(this.f7979i);
        }
        m30878n(DateAndTime.getTimeZoneOffsetString());
        m30880l(clientMetadata.getOrientationString());
        m30871a(clientMetadata.getDeviceDimensions(), this.f7980j, this.f7981k);
        m30903a(clientMetadata.getDensity());
        String networkOperatorForUrl = clientMetadata.getNetworkOperatorForUrl();
        m30884j(networkOperatorForUrl);
        m30882k(networkOperatorForUrl);
        m30888h(clientMetadata.getIsoCountryCode());
        m30890g(clientMetadata.getNetworkOperatorName());
        m30901a(clientMetadata.getActiveNetworkType());
        m30864b(clientMetadata.getAppVersion());
        m30891g();
        m30872a();
        m30881l();
        m30883k();
        m30885j();
        m30889h();
        m30887i();
        m30893f();
    }

    /* renamed from: a */
    public final void m30899a(String str, ClientMetadata.MoPubNetworkType moPubNetworkType) {
        m30868a(str, moPubNetworkType.toString());
    }

    /* renamed from: b */
    public void m30897b(boolean z) {
        if (z) {
            m30868a("mr", "1");
        }
    }

    /* renamed from: c */
    public void m30896c(@NonNull String str) {
        Preconditions.checkNotNull(str);
        m30868a("vv", str);
    }

    /* renamed from: d */
    public final int m30895d(String str) {
        return Math.min(3, str.length());
    }

    /* renamed from: e */
    public void m30894e(String str) {
        m30868a("id", str);
    }

    /* renamed from: f */
    public final void m30893f() {
        int i;
        RequestRateTracker.TimeRecord recordForAdUnit = RequestRateTracker.getInstance().getRecordForAdUnit(this.f7976f);
        if (recordForAdUnit != null && (i = recordForAdUnit.mBlockIntervalMs) >= 1) {
            m30868a("backoff_ms", String.valueOf(i));
            m30868a("backoff_reason", recordForAdUnit.mReason);
        }
    }

    /* renamed from: f */
    public void m30892f(String str) {
        if (!TextUtils.isEmpty(str)) {
            m30868a("bundle", str);
        }
    }

    /* renamed from: g */
    public void m30891g() {
        m30868a("abt", MoPub.m30781a(this.f7975e));
    }

    /* renamed from: g */
    public void m30890g(String str) {
        m30868a("cn", str);
    }

    /* renamed from: h */
    public void m30889h() {
        ConsentData consentData = this.f7983m;
        if (consentData != null) {
            m30868a("consented_privacy_policy_version", consentData.getConsentedPrivacyPolicyVersion());
        }
    }

    /* renamed from: h */
    public void m30888h(String str) {
        m30868a("iso", str);
    }

    /* renamed from: i */
    public void m30887i() {
        ConsentData consentData = this.f7983m;
        if (consentData != null) {
            m30868a("consented_vendor_list_version", consentData.getConsentedVendorListVersion());
        }
    }

    /* renamed from: i */
    public void m30886i(String str) {
        m30868a("q", str);
    }

    /* renamed from: j */
    public void m30885j() {
        PersonalInfoManager personalInfoManager = this.f7982l;
        if (personalInfoManager != null) {
            m30868a("current_consent_status", personalInfoManager.getPersonalInfoConsentStatus().getValue());
        }
    }

    /* renamed from: j */
    public void m30884j(String str) {
        m30868a("mcc", str == null ? "" : str.substring(0, m30895d(str)));
    }

    /* renamed from: k */
    public void m30883k() {
        ConsentData consentData = this.f7983m;
        if (consentData != null) {
            m30869a("force_gdpr_applies", Boolean.valueOf(consentData.isForceGdprApplies()));
        }
    }

    /* renamed from: k */
    public void m30882k(String str) {
        m30868a("mnc", str == null ? "" : str.substring(m30895d(str)));
    }

    /* renamed from: l */
    public void m30881l() {
        PersonalInfoManager personalInfoManager = this.f7982l;
        if (personalInfoManager != null) {
            m30869a("gdpr_applies", personalInfoManager.gdprApplies());
        }
    }

    /* renamed from: l */
    public void m30880l(String str) {
        m30868a(C2041o.f2249c, str);
    }

    /* renamed from: m */
    public void m30879m(String str) {
        m30868a("nv", str);
    }

    /* renamed from: n */
    public void m30878n(String str) {
        m30868a("z", str);
    }

    /* renamed from: o */
    public void m30877o(String str) {
        if (MoPub.canCollectPersonalInformation()) {
            m30868a("user_data_q", str);
        }
    }

    public AdUrlGenerator withAdUnitId(String str) {
        this.f7976f = str;
        return this;
    }

    @Deprecated
    public AdUrlGenerator withFacebookSupported(boolean z) {
        return this;
    }

    public AdUrlGenerator withKeywords(String str) {
        this.f7977g = str;
        return this;
    }

    public AdUrlGenerator withLocation(Location location) {
        this.f7979i = location;
        return this;
    }

    public AdUrlGenerator withRequestedAdSize(Point point) {
        this.f7980j = point;
        return this;
    }

    public AdUrlGenerator withUserDataKeywords(String str) {
        this.f7978h = str;
        return this;
    }

    public AdUrlGenerator withWindowInsets(WindowInsets windowInsets) {
        this.f7981k = windowInsets;
        return this;
    }
}
