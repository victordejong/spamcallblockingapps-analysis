package com.appsflyer.internal;

import com.appsflyer.AFLogger;
/* renamed from: com.appsflyer.internal.ag */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag.class */
public final class C0656ag {

    /* renamed from: ɩ */
    private AbstractC0658d f2972 = new 4();

    /* renamed from: com.appsflyer.internal.ag$b */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag$b.class */
    enum EnumC0657b {
        UNITY("android_unity", "com.unity3d.player.UnityPlayer"),
        REACT_NATIVE("android_reactNative", "com.facebook.react.ReactApplication"),
        CORDOVA("android_cordova", "org.apache.cordova.CordovaActivity"),
        SEGMENT("android_segment", "com.segment.analytics.integrations.Integration"),
        COCOS2DX("android_cocos2dx", "org.cocos2dx.lib.Cocos2dxActivity"),
        DEFAULT("android_native", "android_native"),
        ADOBE_EX("android_adobe_ex", "com.appsflyer.adobeextension"),
        FLUTTER("android_flutter", "com.appsflyer.appsflyersdk.AppsflyerSdkPlugin");
        

        /* renamed from: ɹ */
        private String f2982;

        /* renamed from: І */
        private String f2983;

        EnumC0657b(String str, String str2) {
            this.f2982 = str;
            this.f2983 = str2;
        }
    }

    /* renamed from: com.appsflyer.internal.ag$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ag$d.class */
    public interface AbstractC0658d {
        /* renamed from: ι */
        Class<?> m4054(String str) throws ClassNotFoundException;
    }

    /* renamed from: ı */
    private boolean m4058(String str) {
        try {
            this.f2972.m4054(str);
            StringBuilder sb = new StringBuilder("Class: ");
            sb.append(str);
            sb.append(" is found.");
            AFLogger.afRDLog(sb.toString());
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return false;
        }
    }

    /* renamed from: ɩ */
    public final String m4057() {
        EnumC0657b[] values;
        for (EnumC0657b enumC0657b : EnumC0657b.values()) {
            if (m4058(enumC0657b.f2983)) {
                return enumC0657b.f2982;
            }
        }
        return EnumC0657b.DEFAULT.f2982;
    }
}
