package androidx.core.p004os;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import androidx.annotation.NonNull;
/* renamed from: androidx.core.os.TraceCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/TraceCompat.class */
public final class TraceCompat {
    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18 && i < 29) {
            try {
                Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Trace.class.getMethod("isTagEnabled", Long.TYPE);
                Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
                Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
                Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
            } catch (Exception e) {
                Log.i("TraceCompat", "Unable to initialize via reflection.", e);
            }
        }
    }

    private TraceCompat() {
    }

    /* renamed from: a */
    public static void m19438a(@NonNull String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    /* renamed from: b */
    public static void m19437b() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
