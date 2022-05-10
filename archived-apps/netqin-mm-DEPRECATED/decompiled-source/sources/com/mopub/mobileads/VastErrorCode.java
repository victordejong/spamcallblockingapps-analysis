package com.mopub.mobileads;

import com.mopub.common.Preconditions;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastErrorCode.class */
public enum VastErrorCode {
    XML_PARSING_ERROR("100"),
    WRAPPER_TIMEOUT("301"),
    NO_ADS_VAST_RESPONSE("303"),
    GENERAL_LINEAR_AD_ERROR("400"),
    GENERAL_COMPANION_AD_ERROR("600"),
    UNDEFINED_ERROR("900");
    
    public final String mErrorCode;

    VastErrorCode(String str) {
        Preconditions.checkNotNull(str, "errorCode cannot be null");
        this.mErrorCode = str;
    }

    public String getErrorCode() {
        return this.mErrorCode;
    }
}
