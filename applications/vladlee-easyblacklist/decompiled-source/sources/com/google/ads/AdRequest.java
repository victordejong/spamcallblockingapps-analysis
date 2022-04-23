package com.google.ads;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/ads/AdRequest.class */
public final class AdRequest {
    public static final String LOGTAG = "Ads";
    public static final String TEST_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final String VERSION = "0.0.0";

    /* loaded from: classes-dex2jar.jar:com/google/ads/AdRequest$ErrorCode.class */
    public enum ErrorCode {
        INVALID_REQUEST("Invalid Ad request."),
        NO_FILL("Ad request successful, but no ad returned due to lack of ad inventory."),
        NETWORK_ERROR("A network error occurred."),
        INTERNAL_ERROR("There was an internal error.");
        

        /* renamed from: a */
        private final String f5781a;

        ErrorCode(String str) {
            this.f5781a = str;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.f5781a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/ads/AdRequest$Gender.class */
    public enum Gender {
        UNKNOWN,
        MALE,
        FEMALE
    }

    private AdRequest() {
    }
}
