package com.mopub.common.privacy;

import androidx.annotation.NonNull;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/PrivacyKey.class */
public enum PrivacyKey {
    IS_GDPR_REGION("is_gdpr_region"),
    IS_WHITELISTED("is_whitelisted"),
    FORCE_GDPR_APPLIES("force_gdpr_applies"),
    FORCE_EXPLICIT_NO("force_explicit_no"),
    INVALIDATE_CONSENT("invalidate_consent"),
    REACQUIRE_CONSENT("reacquire_consent"),
    EXTRAS("extras"),
    CURRENT_VENDOR_LIST_VERSION("current_vendor_list_version"),
    CURRENT_VENDOR_LIST_LINK("current_vendor_list_link"),
    CURRENT_PRIVACY_POLICY_VERSION("current_privacy_policy_version"),
    CURRENT_PRIVACY_POLICY_LINK("current_privacy_policy_link"),
    CURRENT_VENDOR_LIST_IAB_FORMAT("current_vendor_list_iab_format"),
    CURRENT_VENDOR_LIST_IAB_HASH("current_vendor_list_iab_hash"),
    CALL_AGAIN_AFTER_SECS("call_again_after_secs"),
    CONSENT_CHANGE_REASON("consent_change_reason");
    
    @NonNull

    /* renamed from: a */
    public final String f8280a;

    PrivacyKey(@NonNull String str) {
        this.f8280a = str;
    }

    @NonNull
    public String getKey() {
        return this.f8280a;
    }
}
