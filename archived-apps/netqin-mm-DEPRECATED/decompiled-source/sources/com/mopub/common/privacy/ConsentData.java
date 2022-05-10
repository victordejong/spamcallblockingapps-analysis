package com.mopub.common.privacy;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentData.class */
public interface ConsentData {
    String getConsentedPrivacyPolicyVersion();

    String getConsentedVendorListVersion();

    boolean isForceGdprApplies();
}
