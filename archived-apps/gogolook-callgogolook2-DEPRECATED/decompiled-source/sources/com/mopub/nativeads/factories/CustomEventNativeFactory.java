package com.mopub.nativeads.factories;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubCustomEventNative;
import java.lang.reflect.Constructor;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/factories/CustomEventNativeFactory.class */
public class CustomEventNativeFactory {

    /* renamed from: a */
    public static CustomEventNativeFactory f9342a = new CustomEventNativeFactory();

    public static CustomEventNative create(@Nullable String str) throws Exception {
        if (str == null) {
            return new MoPubCustomEventNative();
        }
        return f9342a.m30045a(Class.forName(str).asSubclass(CustomEventNative.class));
    }

    @Deprecated
    public static void setInstance(@NonNull CustomEventNativeFactory customEventNativeFactory) {
        Preconditions.checkNotNull(customEventNativeFactory);
        f9342a = customEventNativeFactory;
    }

    @NonNull
    /* renamed from: a */
    public CustomEventNative m30045a(@NonNull Class<? extends CustomEventNative> cls) throws Exception {
        Preconditions.checkNotNull(cls);
        Constructor<? extends CustomEventNative> declaredConstructor = cls.getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (CustomEventNative) declaredConstructor.newInstance(new Object[0]);
    }
}
