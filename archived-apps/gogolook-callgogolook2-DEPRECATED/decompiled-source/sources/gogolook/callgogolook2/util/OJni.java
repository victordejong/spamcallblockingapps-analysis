package gogolook.callgogolook2.util;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/util/OJni.class */
public class OJni {
    static {
        System.loadLibrary("o-jni");
    }

    public static native String getApiKey(Context context);

    public static native String getDevPwd(Context context);

    public static native String getEncryptKey(Context context);

    public static native String getSmsAnalyticsKey(Context context);
}
