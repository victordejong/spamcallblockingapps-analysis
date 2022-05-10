package com.inmobi.ads;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiAdRequestStatus.class */
public final class InMobiAdRequestStatus {

    /* renamed from: a */
    public static final String f31295a = "InMobiAdRequestStatus";

    /* renamed from: b */
    public StatusCode f31296b;

    /* renamed from: c */
    public String f31297c;

    /* renamed from: com.inmobi.ads.InMobiAdRequestStatus$1 */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiAdRequestStatus$1.class */
    public static final /* synthetic */ class C80081 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31298a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0125 -> B:85:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0129 -> B:79:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x012d -> B:97:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0131 -> B:91:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0135 -> B:109:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0139 -> B:103:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x013d -> B:121:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0141 -> B:113:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0145 -> B:83:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0149 -> B:77:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x014d -> B:95:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0151 -> B:89:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0155 -> B:107:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0159 -> B:101:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x015d -> B:119:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x0161 -> B:111:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0165 -> B:81:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0169 -> B:75:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x016d -> B:93:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0171 -> B:87:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0175 -> B:105:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x0179 -> B:99:0x010c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x017d -> B:117:0x0118). Please submit an issue!!! */
        static {
            int[] iArr = new int[StatusCode.values().length];
            f31298a = iArr;
            try {
                iArr[StatusCode.INTERNAL_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31298a[StatusCode.NETWORK_UNREACHABLE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31298a[StatusCode.REQUEST_INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31298a[StatusCode.REQUEST_PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31298a[StatusCode.REQUEST_TIMED_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31298a[StatusCode.SERVER_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31298a[StatusCode.NO_FILL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31298a[StatusCode.AD_ACTIVE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31298a[StatusCode.EARLY_REFRESH_REQUEST.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f31298a[StatusCode.AD_NO_LONGER_AVAILABLE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f31298a[StatusCode.MISSING_REQUIRED_DEPENDENCIES.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f31298a[StatusCode.REPETITIVE_LOAD.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f31298a[StatusCode.GDPR_COMPLIANCE_ENFORCED.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f31298a[StatusCode.GET_SIGNALS_NOT_CALLED_FOR_LOAD_WITH_RESPONSE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f31298a[StatusCode.GET_SIGNALS_CALLED_WHILE_LOADING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f31298a[StatusCode.FETCHING_SIGNALS_STATE_ERROR.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f31298a[StatusCode.LOAD_WITH_RESPONSE_CALLED_WHILE_LOADING.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f31298a[StatusCode.LOAD_CALLED_AFTER_GET_SIGNALS.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f31298a[StatusCode.GET_SIGNALS_CALLED_AFTER_LOAD.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f31298a[StatusCode.LOAD_WITH_RESPONSE_CALLED_AFTER_LOAD.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                f31298a[StatusCode.INVALID_RESPONSE_IN_LOAD.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                f31298a[StatusCode.MONETIZATION_DISABLED.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                f31298a[StatusCode.CALLED_FROM_WRONG_THREAD.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
            try {
                f31298a[StatusCode.INVALID_SIZE.ordinal()] = 24;
            } catch (NoSuchFieldError e24) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiAdRequestStatus$StatusCode.class */
    public enum StatusCode {
        NO_ERROR,
        NETWORK_UNREACHABLE,
        NO_FILL,
        REQUEST_INVALID,
        REQUEST_PENDING,
        REQUEST_TIMED_OUT,
        INTERNAL_ERROR,
        SERVER_ERROR,
        AD_ACTIVE,
        EARLY_REFRESH_REQUEST,
        AD_NO_LONGER_AVAILABLE,
        MISSING_REQUIRED_DEPENDENCIES,
        REPETITIVE_LOAD,
        GDPR_COMPLIANCE_ENFORCED,
        LOAD_CALLED_AFTER_GET_SIGNALS,
        GET_SIGNALS_NOT_CALLED_FOR_LOAD_WITH_RESPONSE,
        GET_SIGNALS_CALLED_WHILE_LOADING,
        FETCHING_SIGNALS_STATE_ERROR,
        LOAD_WITH_RESPONSE_CALLED_WHILE_LOADING,
        GET_SIGNALS_CALLED_AFTER_LOAD,
        LOAD_WITH_RESPONSE_CALLED_AFTER_LOAD,
        INVALID_RESPONSE_IN_LOAD,
        MONETIZATION_DISABLED,
        CALLED_FROM_WRONG_THREAD,
        INVALID_SIZE
    }

    public InMobiAdRequestStatus(StatusCode statusCode) {
        this.f31296b = statusCode;
        switch (C80081.f31298a[statusCode.ordinal()]) {
            case 1:
                this.f31297c = "The InMobi SDK encountered an internal error.";
                return;
            case 2:
                this.f31297c = "The Internet is unreachable. Please check your Internet connection.";
                return;
            case 3:
                this.f31297c = "An invalid ad request was sent and was rejected by the Ad Network. Please validate the ad request and try again";
                return;
            case 4:
                this.f31297c = "The SDK is pending response to a previous ad request. Please wait for the previous ad request to complete before requesting for another ad.";
                return;
            case 5:
                this.f31297c = "The Ad Request timed out waiting for a response from the network. This can be caused due to a bad network connection. Please try again after a few minutes.";
                return;
            case 6:
                this.f31297c = "The Ad Server encountered an error when processing the ad request. This may be a transient issue. Please try again in a few minutes";
                return;
            case 7:
                this.f31297c = "Ad request successful but no ad served.";
                return;
            case 8:
                this.f31297c = "The Ad Request could not be submitted as the user is viewing another Ad.";
                return;
            case 9:
                this.f31297c = "The Ad Request cannot be done so frequently. Please wait for some time before loading another ad.";
                return;
            case 10:
                this.f31297c = "An ad is no longer available. Please call load() to fetch a fresh ad.";
                return;
            case 11:
                this.f31297c = "The SDK rejected the ad request as one or more required dependencies could not be found. Please ensure you have included the required dependencies.";
                return;
            case 12:
                this.f31297c = "The SDK rejected the ad load request. Multiple load() call on the same object is not allowed if the previous ad request was successful.";
                return;
            case 13:
                this.f31297c = "Network Request dropped as current request is not GDPR compliant.";
                return;
            case 14:
                this.f31297c = "getSignals() must be called before calling load(response).";
                return;
            case 15:
                this.f31297c = "An ad load is already in progress, getSignals() call in this state is not allowed.";
                return;
            case 16:
                this.f31297c = "One getSignals request is already been processed, please wait for the result and try again.";
                return;
            case 17:
                this.f31297c = "An ad load is already in progress, load(response) call in this state is not allowed.";
                return;
            case 18:
                this.f31297c = "The load() API cannot be called once the getSignals(Bundle) has been called. Call load(byte[]) to render ad, if getSignals(Bundle) was called.";
                return;
            case 19:
                this.f31297c = "The getSignals() API cannot be called once the load() has been called.";
                return;
            case 20:
                this.f31297c = "The load(byte[]) API cannot be called once the load() has been called.";
                return;
            case 21:
                this.f31297c = "Null or empty response as parameter is not allowed in load(response).";
                return;
            case 22:
                this.f31297c = "The Ad Request is terminated because monetization is disabled.";
                return;
            case 23:
                this.f31297c = "An API call is made from non-UI thread.";
                return;
            case 24:
                this.f31297c = "The height or width of the banner can not be determined";
                return;
            default:
                StringBuilder sb = new StringBuilder("Unhandled statusCode ( ");
                sb.append(this.f31296b);
                sb.append(" ) on AdFetchFailed");
                return;
        }
    }

    public final String getMessage() {
        return this.f31297c;
    }

    public final StatusCode getStatusCode() {
        return this.f31296b;
    }

    public final InMobiAdRequestStatus setCustomMessage(String str) {
        if (str != null) {
            this.f31297c = str;
        }
        return this;
    }
}
