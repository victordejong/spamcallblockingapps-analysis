package com.aotter.net.trek.ads;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/AdError.class */
public class AdError {
    public static final int INTERNAL_ERROR_CODE = 2001;
    public static final int LOAD_TOO_FREQUENTLY_ERROR_CODE = 1002;
    public static final int NETWORK_ERROR_CODE = 1000;
    public static final int NO_FILL_ERROR_CODE = 1001;
    public static final int SERVER_ERROR_CODE = 2000;

    /* renamed from: a */
    public final int f1154a;

    /* renamed from: b */
    public final String f1155b;
    public static final AdError NETWORK_ERROR = new AdError(1000, "Network Error");
    public static final AdError NO_FILL = new AdError(1001, "No Fill");
    public static final AdError LOAD_TOO_FREQUENTLY = new AdError(1002, "Ad was re-loaded too frequently");
    public static final AdError SERVER_ERROR = new AdError(2000, "Server Error");
    public static final AdError INTERNAL_ERROR = new AdError(2001, "Internal Error");
    @Deprecated
    public static final AdError MISSING_PROPERTIES = new AdError(com.facebook.ads.AdError.CACHE_ERROR_CODE, "Native ad failed to load due to missing properties");

    public AdError(int i, String str) {
        this.f1154a = i;
        this.f1155b = str;
    }

    public int getErrorCode() {
        return this.f1154a;
    }

    public String getErrorMessage() {
        return this.f1155b;
    }
}
