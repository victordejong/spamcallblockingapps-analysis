package com.flurry.sdk;
/* renamed from: com.flurry.sdk.bg */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/bg.class */
public enum EnumC2872bg {
    AC_UNKNOWN("unknown"),
    AC_NOTIFY_USER("notifyUser"),
    AC_LOG_EVENT("logEvent"),
    AC_PROCESS_REDIRECT("processRedirect"),
    AC_NEXT_FRAME("nextFrame"),
    AC_NEXT_AD_UNIT("nextAdUnit"),
    AC_CLOSE_AD("closeAd"),
    AC_VERIFY_URL("verifyUrl"),
    AC_VERIFY_PACKAGE("verifyPackage"),
    AC_SEND_URL_ASYNC("sendUrlAsync"),
    AC_SEND_AD_LOGS("sendAdLogs"),
    AC_LOAD_AD_COMPONENTS("loadAdComponents"),
    AC_DIRECT_OPEN("directOpen"),
    AC_LOAD_COMPLETE("adFullyLoaded"),
    AC_DELETE("delete"),
    AC_CHECK_CAP("checkCap"),
    AC_UPDATE_VIEW_COUNT("updateViewCount"),
    AC_LAUNCH_PACKAGE("launchPackage"),
    AC_MRAID_DO_EXPAND("doExpand"),
    AC_MRAID_DO_COLLAPSE("doCollapse"),
    AC_MRAID_PLAY_VIDEO("MRAIDplayVideo"),
    AC_MRAID_OPEN("MRAIDOpen");
    

    /* renamed from: w */
    public final String f4195w;

    EnumC2872bg(String str) {
        this.f4195w = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f4195w;
    }
}
