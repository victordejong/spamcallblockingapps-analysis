package com.revenuecat.purchases.common;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/Config.class */
public final class Config {
    public static final Config INSTANCE = new Config();
    private static boolean debugLogsEnabled = false;
    public static final String frameworkVersion = "4.0.1";

    private Config() {
    }

    public final boolean getDebugLogsEnabled() {
        return debugLogsEnabled;
    }

    public final void setDebugLogsEnabled(boolean z) {
        debugLogsEnabled = z;
    }
}
