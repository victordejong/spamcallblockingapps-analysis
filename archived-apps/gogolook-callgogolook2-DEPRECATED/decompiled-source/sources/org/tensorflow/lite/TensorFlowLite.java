package org.tensorflow.lite;
/* loaded from: classes3-dex2jar.jar:org/tensorflow/lite/TensorFlowLite.class */
public final class TensorFlowLite {

    /* renamed from: a */
    public static final Throwable f33452a;

    /* renamed from: b */
    public static volatile boolean f33453b = false;

    static {
        UnsatisfiedLinkError e;
        try {
            System.loadLibrary("tensorflowlite_jni");
            e = null;
        } catch (UnsatisfiedLinkError e2) {
            e = e2;
        }
        f33452a = e;
    }

    /* renamed from: a */
    public static void m12a() {
        if (!f33453b) {
            try {
                nativeRuntimeVersion();
                f33453b = true;
            } catch (UnsatisfiedLinkError e) {
                e = e;
                Object obj = f33452a;
                if (obj != null) {
                    e = obj;
                }
                throw new UnsatisfiedLinkError("Failed to load native TensorFlow Lite methods. Check that the correct native libraries are present, and, if using a custom native library, have been properly loaded via System.loadLibrary():\n  " + e);
            }
        }
    }

    /* renamed from: b */
    public static String m11b() {
        m12a();
        return nativeRuntimeVersion();
    }

    /* renamed from: c */
    public static String m10c() {
        m12a();
        return nativeSchemaVersion();
    }

    @Deprecated
    /* renamed from: d */
    public static String m9d() {
        return m10c();
    }

    public static native String nativeRuntimeVersion();

    public static native String nativeSchemaVersion();
}
