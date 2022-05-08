package com.mopub.mobileads.factories;

import com.mopub.mobileads.CustomEventInterstitial;
import java.lang.reflect.Constructor;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/CustomEventInterstitialFactory.class */
public class CustomEventInterstitialFactory {

    /* renamed from: a */
    public static CustomEventInterstitialFactory f8844a = new CustomEventInterstitialFactory();

    public static CustomEventInterstitial create(String str) throws Exception {
        return f8844a.m30346a(str);
    }

    @Deprecated
    public static void setInstance(CustomEventInterstitialFactory customEventInterstitialFactory) {
        f8844a = customEventInterstitialFactory;
    }

    /* renamed from: a */
    public CustomEventInterstitial m30346a(String str) throws Exception {
        Constructor declaredConstructor = Class.forName(str).asSubclass(CustomEventInterstitial.class).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventInterstitial) declaredConstructor.newInstance(new Object[0]);
    }
}
