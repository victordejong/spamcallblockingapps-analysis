package com.applovin.mediation.adapter;

import p131c.p135b.p136a.p143d.C2172g;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/adapter/MaxAdapterError.class */
public class MaxAdapterError extends C2172g {
    public static final int ERROR_CODE_INVALID_LOAD_STATE = -5201;
    public static final int ERROR_CODE_NO_FILL = 204;
    public final int thirdPartySdkErrorCode;
    public final String thirdPartySdkErrorMessage;
    public static final MaxAdapterError NO_FILL = new MaxAdapterError(204);
    public static final int ERROR_CODE_UNSPECIFIED = -5200;
    public static final MaxAdapterError UNSPECIFIED = new MaxAdapterError(ERROR_CODE_UNSPECIFIED);
    public static final MaxAdapterError INVALID_LOAD_STATE = new MaxAdapterError(-5201);
    public static final int ERROR_CODE_INVALID_CONFIGURATION = -5202;
    public static final MaxAdapterError INVALID_CONFIGURATION = new MaxAdapterError(ERROR_CODE_INVALID_CONFIGURATION);
    public static final int ERROR_CODE_BAD_REQUEST = -5203;
    public static final MaxAdapterError BAD_REQUEST = new MaxAdapterError(ERROR_CODE_BAD_REQUEST);
    public static final int ERROR_CODE_NOT_INITIALIZED = -5204;
    public static final MaxAdapterError NOT_INITIALIZED = new MaxAdapterError(ERROR_CODE_NOT_INITIALIZED);
    public static final int ERROR_CODE_AD_NOT_READY = -5205;
    public static final MaxAdapterError AD_NOT_READY = new MaxAdapterError(ERROR_CODE_AD_NOT_READY);
    public static final int ERROR_CODE_TIMEOUT = -5206;
    public static final MaxAdapterError TIMEOUT = new MaxAdapterError(ERROR_CODE_TIMEOUT);
    public static final int ERROR_CODE_NO_CONNECTION = -5207;
    public static final MaxAdapterError NO_CONNECTION = new MaxAdapterError(ERROR_CODE_NO_CONNECTION);
    public static final int ERROR_CODE_SERVER_ERROR = -5208;
    public static final MaxAdapterError SERVER_ERROR = new MaxAdapterError(ERROR_CODE_SERVER_ERROR);
    public static final int ERROR_CODE_INTERNAL_ERROR = -5209;
    public static final MaxAdapterError INTERNAL_ERROR = new MaxAdapterError(ERROR_CODE_INTERNAL_ERROR);
    public static final int ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT = -5210;
    public static final MaxAdapterError SIGNAL_COLLECTION_TIMEOUT = new MaxAdapterError(ERROR_CODE_SIGNAL_COLLECTION_TIMEOUT);
    public static final int ERROR_CODE_SIGNAL_COLLECTION_NOT_SUPPORTED = -5211;
    public static final MaxAdapterError SIGNAL_COLLECTION_NOT_SUPPORTED = new MaxAdapterError(ERROR_CODE_SIGNAL_COLLECTION_NOT_SUPPORTED);
    public static final int ERROR_CODE_WEBVIEW_ERROR = -5212;
    public static final MaxAdapterError WEBVIEW_ERROR = new MaxAdapterError(ERROR_CODE_WEBVIEW_ERROR);
    public static final int ERROR_CODE_AD_EXPIRED = -5213;
    public static final MaxAdapterError AD_EXPIRED = new MaxAdapterError(ERROR_CODE_AD_EXPIRED);
    public static final int ERROR_CODE_AD_FREQUENCY_CAPPED = -5214;
    public static final MaxAdapterError AD_FREQUENCY_CAPPED = new MaxAdapterError(ERROR_CODE_AD_FREQUENCY_CAPPED);
    public static final int ERROR_CODE_REWARD_ERROR = -5302;
    public static final MaxAdapterError REWARD_ERROR = new MaxAdapterError(ERROR_CODE_REWARD_ERROR);

    public MaxAdapterError(int i) {
        this(i, "", 0, "");
    }

    public MaxAdapterError(int i, int i2) {
        this(i, "", i2, "");
    }

    public MaxAdapterError(int i, String str) {
        this(i, str, 0, "");
    }

    public MaxAdapterError(int i, String str, int i2, String str2) {
        super(i, str);
        this.thirdPartySdkErrorCode = i2;
        this.thirdPartySdkErrorMessage = C2422o.m29849c(str2);
    }

    public int getThirdPartySdkErrorCode() {
        return this.thirdPartySdkErrorCode;
    }

    public String getThirdPartySdkErrorMessage() {
        return this.thirdPartySdkErrorMessage;
    }

    @Override // p131c.p135b.p136a.p143d.C2172g
    public String toString() {
        return "MaxAdapterError{errorCode=" + getErrorCode() + ", errorMessage='" + getErrorMessage() + "', thirdPartySdkErrorCode=" + this.thirdPartySdkErrorCode + ", thirdPartySdkErrorMessage='" + this.thirdPartySdkErrorMessage + "'}";
    }
}
