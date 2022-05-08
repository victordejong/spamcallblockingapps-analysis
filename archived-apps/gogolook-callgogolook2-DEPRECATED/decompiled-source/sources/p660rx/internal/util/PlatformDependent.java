package p660rx.internal.util;

import com.aotter.net.trek.model.Device;
/* renamed from: rx.internal.util.PlatformDependent */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/PlatformDependent.class */
public final class PlatformDependent {
    public static final int ANDROID_API_VERSION = resolveAndroidApiVersion();
    public static final boolean IS_ANDROID;

    static {
        IS_ANDROID = ANDROID_API_VERSION != 0;
    }

    public static int getAndroidApiVersion() {
        return ANDROID_API_VERSION;
    }

    public static boolean isAndroid() {
        return IS_ANDROID;
    }

    public static int resolveAndroidApiVersion() {
        try {
            return ((Integer) Class.forName("android.os.Build$VERSION").getField(Device.DEVICE_ANDROID_KEY).get(null)).intValue();
        } catch (Exception e) {
            return 0;
        }
    }
}
