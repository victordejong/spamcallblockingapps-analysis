package com.revenuecat.purchases.common;

import java.net.URL;
import java.util.Objects;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/AppConfig.class */
public final class AppConfig {
    private final URL baseURL;
    private boolean finishTransactions;
    private final String languageTag;
    private final PlatformInfo platformInfo;
    private final String versionName;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0060, code lost:
        if (r8 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0028, code lost:
        if (r7 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppConfig(android.content.Context r5, boolean r6, com.revenuecat.purchases.common.PlatformInfo r7, java.net.URL r8) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "context"
            kotlin.w.c.k.f(r0, r1)
            r0 = r7
            java.lang.String r1 = "platformInfo"
            kotlin.w.c.k.f(r0, r1)
            r0 = r4
            r0.<init>()
            r0 = r4
            r1 = r7
            r0.platformInfo = r1
            r0 = r5
            java.util.Locale r0 = com.revenuecat.purchases.common.UtilsKt.getLocale(r0)
            r7 = r0
            java.lang.String r0 = ""
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L2e
            r0 = r7
            java.lang.String r0 = com.revenuecat.purchases.common.UtilsKt.toBCP47(r0)
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L2e
            goto L31
        L2e:
            java.lang.String r0 = ""
            r7 = r0
        L31:
            r0 = r4
            r1 = r7
            r0.languageTag = r1
            r0 = r5
            java.lang.String r0 = com.revenuecat.purchases.common.UtilsKt.getVersionName(r0)
            r7 = r0
            r0 = r9
            r5 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r7
            r5 = r0
        L44:
            r0 = r4
            r1 = r5
            r0.versionName = r1
            r0 = r4
            r1 = r6
            r2 = 1
            r1 = r1 ^ r2
            r0.finishTransactions = r1
            r0 = r8
            if (r0 == 0) goto L66
            java.lang.String r0 = "Purchases is being configured using a proxy for RevenueCat"
            com.revenuecat.purchases.common.LogUtilsKt.debugLog(r0)
            kotlin.r r0 = kotlin.r.a
            r5 = r0
            r0 = r8
            if (r0 == 0) goto L66
            goto L71
        L66:
            java.net.URL r0 = new java.net.URL
            r1 = r0
            java.lang.String r2 = "https://api.revenuecat.com/"
            r1.<init>(r2)
            r8 = r0
        L71:
            r0 = r4
            r1 = r8
            r0.baseURL = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.revenuecat.purchases.common.AppConfig.<init>(android.content.Context, boolean, com.revenuecat.purchases.common.PlatformInfo, java.net.URL):void");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!k.b(AppConfig.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.revenuecat.purchases.common.AppConfig");
        AppConfig appConfig = (AppConfig) obj;
        return !(k.b(this.platformInfo, appConfig.platformInfo) ^ true) && !(k.b(this.languageTag, appConfig.languageTag) ^ true) && !(k.b(this.versionName, appConfig.versionName) ^ true) && this.finishTransactions == appConfig.finishTransactions && !(k.b(this.baseURL, appConfig.baseURL) ^ true);
    }

    public final URL getBaseURL() {
        return this.baseURL;
    }

    public final boolean getFinishTransactions() {
        return this.finishTransactions;
    }

    public final String getLanguageTag() {
        return this.languageTag;
    }

    public final PlatformInfo getPlatformInfo() {
        return this.platformInfo;
    }

    public final String getVersionName() {
        return this.versionName;
    }

    public int hashCode() {
        return (((((((this.platformInfo.hashCode() * 31) + this.languageTag.hashCode()) * 31) + this.versionName.hashCode()) * 31) + Boolean.valueOf(this.finishTransactions).hashCode()) * 31) + this.baseURL.hashCode();
    }

    public final void setFinishTransactions(boolean z) {
        this.finishTransactions = z;
    }

    public String toString() {
        return "AppConfig(platformInfo=" + this.platformInfo + ", languageTag='" + this.languageTag + "', versionName='" + this.versionName + "', finishTransactions=" + this.finishTransactions + ", baseURL=" + this.baseURL + ')';
    }
}
