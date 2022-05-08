package com.adbert.p009a.p012c;

import com.adbert.p009a.C1402g;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
/* renamed from: com.adbert.a.c.c */
/* loaded from: classes-dex2jar.jar:com/adbert/a/c/c.class */
public enum EnumC1383c {
    appId,
    appKey,
    mediaType,
    pid,
    responseCode,
    responseStr,
    Version,
    vibrate,
    album,
    camera,
    shake,
    distance,
    adbertcamera,
    adbertalbum,
    adbertbrowser,
    goWhere,
    COMMON_AD,
    INSERT_AD,
    SDKVersion,
    permission,
    orientation,
    sharetype,
    uuid,
    APPID,
    APPKEY,
    UUID,
    AD_MODE,
    ADURL("sdk_api_v2/auth/"),
    is("="),
    and(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR),
    FIRST_REQUEST("APP_REQUEST=Y"),
    pageInfo,
    pageInfo_inters,
    actiontype,
    build,
    lightSensor,
    device,
    macAddress,
    OSVersion,
    GPS,
    timestamp,
    operatorName,
    connectType,
    seconds,
    Infos,
    reciprocal("5YCS5pW456eS"),
    host("https://www.adbert.com.tw/portal/"),
    country,
    language,
    bannerID("ca-app-pub-1993641140901979/6895071609"),
    intersID("ca-app-pub-1993641140901979/2928616873"),
    nativeADURL("sdk_api_v3/auth/"),
    packageName;
    

    /* renamed from: ab */
    public String f528ab;

    EnumC1383c() {
        this.f528ab = "";
        this.f528ab = toString();
    }

    EnumC1383c(String str) {
        this.f528ab = "";
        this.f528ab = str;
    }

    /* renamed from: a */
    public String m37192a() {
        if (this != ADURL && this != nativeADURL) {
            return this.f528ab;
        }
        return host.m37192a() + this.f528ab;
    }

    /* renamed from: a */
    public String m37191a(String str) {
        String str2;
        String str3 = host.m37192a() + this.f528ab;
        try {
            str2 = str3 + "?ac=" + C1402g.m37124g(str);
        } catch (Exception e) {
            e.printStackTrace();
            str2 = str3;
        }
        return str2;
    }

    /* renamed from: b */
    public String m37190b(String str) {
        return toString() + is.m37192a() + str;
    }

    /* renamed from: c */
    public String m37189c(String str) {
        return and.m37192a() + toString() + is.m37192a() + str;
    }

    @Override // java.lang.Enum
    public String toString() {
        if (this == Version) {
            return super.toString() + " : 3.2.1n";
        } else if (this != adbertcamera && this != adbertalbum && this != adbertbrowser) {
            return super.toString();
        } else {
            return super.toString() + " : ";
        }
    }
}
