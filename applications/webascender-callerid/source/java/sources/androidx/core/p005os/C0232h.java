package androidx.core.p005os;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
/* renamed from: androidx.core.os.h */
/* loaded from: classes-dex2jar.jar:androidx/core/os/h.class */
public final class C0232h {
    static {
        int i = Build.VERSION.SDK_INT;
        if (i < 18 || i >= 29) {
            return;
        }
        try {
            Trace.class.getField("TRACE_TAG_APP").getLong(null);
            Class cls = Long.TYPE;
            Trace.class.getMethod("isTagEnabled", cls);
            Class cls2 = Integer.TYPE;
            Trace.class.getMethod("asyncTraceBegin", cls, String.class, cls2);
            Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls2);
            Trace.class.getMethod("traceCounter", cls, String.class, cls2);
        } catch (Exception e) {
            Log.i("TraceCompat", "Unable to initialize via reflection.", e);
        }
    }

    /* renamed from: a */
    public static void m5938a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    /* renamed from: b */
    public static void m5937b() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
