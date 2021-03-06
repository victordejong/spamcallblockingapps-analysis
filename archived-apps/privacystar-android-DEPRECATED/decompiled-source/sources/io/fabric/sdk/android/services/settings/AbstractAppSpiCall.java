package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.Kit;
import io.fabric.sdk.android.KitInfo;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import io.fabric.sdk.android.services.common.ResponseParser;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.HttpRequestFactory;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/settings/AbstractAppSpiCall.class */
public abstract class AbstractAppSpiCall extends AbstractSpiCall implements AppSpiCall {
    public static final String APP_BUILD_VERSION_PARAM = "app[build_version]";
    public static final String APP_BUILT_SDK_VERSION_PARAM = "app[built_sdk_version]";
    public static final String APP_DISPLAY_VERSION_PARAM = "app[display_version]";
    public static final String APP_ICON_DATA_PARAM = "app[icon][data]";
    public static final String APP_ICON_HASH_PARAM = "app[icon][hash]";
    public static final String APP_ICON_HEIGHT_PARAM = "app[icon][height]";
    public static final String APP_ICON_PRERENDERED_PARAM = "app[icon][prerendered]";
    public static final String APP_ICON_WIDTH_PARAM = "app[icon][width]";
    public static final String APP_IDENTIFIER_PARAM = "app[identifier]";
    public static final String APP_INSTANCE_IDENTIFIER_PARAM = "app[instance_identifier]";
    public static final String APP_MIN_SDK_VERSION_PARAM = "app[minimum_sdk_version]";
    public static final String APP_NAME_PARAM = "app[name]";
    public static final String APP_SDK_MODULES_PARAM_BUILD_TYPE = "app[build][libraries][%s][type]";
    public static final String APP_SDK_MODULES_PARAM_PREFIX = "app[build][libraries][%s]";
    public static final String APP_SDK_MODULES_PARAM_VERSION = "app[build][libraries][%s][version]";
    public static final String APP_SOURCE_PARAM = "app[source]";
    static final String ICON_CONTENT_TYPE = "application/octet-stream";
    static final String ICON_FILE_NAME = "icon.png";

    public AbstractAppSpiCall(Kit kit, String str, String str2, HttpRequestFactory httpRequestFactory, HttpMethod httpMethod) {
        super(kit, str, str2, httpRequestFactory, httpMethod);
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, AppRequestData appRequestData) {
        return httpRequest.header(AbstractSpiCall.HEADER_API_KEY, appRequestData.apiKey).header(AbstractSpiCall.HEADER_CLIENT_TYPE, AbstractSpiCall.ANDROID_CLIENT_TYPE).header(AbstractSpiCall.HEADER_CLIENT_VERSION, this.kit.getVersion());
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private io.fabric.sdk.android.services.network.HttpRequest applyMultipartDataTo(io.fabric.sdk.android.services.network.HttpRequest r7, io.fabric.sdk.android.services.settings.AppRequestData r8) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.fabric.sdk.android.services.settings.AbstractAppSpiCall.applyMultipartDataTo(io.fabric.sdk.android.services.network.HttpRequest, io.fabric.sdk.android.services.settings.AppRequestData):io.fabric.sdk.android.services.network.HttpRequest");
    }

    String getKitBuildTypeKey(KitInfo kitInfo) {
        return String.format(Locale.US, APP_SDK_MODULES_PARAM_BUILD_TYPE, kitInfo.getIdentifier());
    }

    String getKitVersionKey(KitInfo kitInfo) {
        return String.format(Locale.US, APP_SDK_MODULES_PARAM_VERSION, kitInfo.getIdentifier());
    }

    @Override // io.fabric.sdk.android.services.settings.AppSpiCall
    public boolean invoke(AppRequestData appRequestData) {
        HttpRequest applyMultipartDataTo = applyMultipartDataTo(applyHeadersTo(getHttpRequest(), appRequestData), appRequestData);
        Logger logger = Fabric.getLogger();
        logger.mo288d(Fabric.TAG, "Sending app info to " + getUrl());
        if (appRequestData.icon != null) {
            Logger logger2 = Fabric.getLogger();
            logger2.mo288d(Fabric.TAG, "App icon hash is " + appRequestData.icon.hash);
            Logger logger3 = Fabric.getLogger();
            logger3.mo288d(Fabric.TAG, "App icon size is " + appRequestData.icon.width + "x" + appRequestData.icon.height);
        }
        int code = applyMultipartDataTo.code();
        String str = HttpRequest.METHOD_POST.equals(applyMultipartDataTo.method()) ? "Create" : "Update";
        Logger logger4 = Fabric.getLogger();
        logger4.mo288d(Fabric.TAG, str + " app request ID: " + applyMultipartDataTo.header(AbstractSpiCall.HEADER_REQUEST_ID));
        Logger logger5 = Fabric.getLogger();
        logger5.mo288d(Fabric.TAG, "Result was " + code);
        return ResponseParser.parse(code) == 0;
    }
}
