package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzco;
import java.lang.Thread;
import java.util.ArrayList;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/ExceptionReporter.class */
public class ExceptionReporter implements Thread.UncaughtExceptionHandler {
    private final Thread.UncaughtExceptionHandler zzrg;
    private final Tracker zzrh;
    private final Context zzri;
    private ExceptionParser zzrj;
    private GoogleAnalytics zzrk;

    public ExceptionReporter(Tracker tracker, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (tracker == null) {
            throw new NullPointerException("tracker cannot be null");
        } else if (context == null) {
            throw new NullPointerException("context cannot be null");
        } else {
            this.zzrg = uncaughtExceptionHandler;
            this.zzrh = tracker;
            this.zzrj = new StandardExceptionParser(context, new ArrayList());
            this.zzri = context.getApplicationContext();
            String valueOf = String.valueOf(uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName());
            zzco.m333v(valueOf.length() != 0 ? "ExceptionReporter created, original handler is ".concat(valueOf) : new String("ExceptionReporter created, original handler is "));
        }
    }

    public ExceptionParser getExceptionParser() {
        return this.zzrj;
    }

    public void setExceptionParser(ExceptionParser exceptionParser) {
        this.zzrj = exceptionParser;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        String str = "UncaughtException";
        if (this.zzrj != null) {
            str = this.zzrj.getDescription(thread != null ? thread.getName() : null, th);
        }
        String valueOf = String.valueOf(str);
        zzco.m333v(valueOf.length() != 0 ? "Reporting uncaught exception: ".concat(valueOf) : new String("Reporting uncaught exception: "));
        this.zzrh.send(new HitBuilders.ExceptionBuilder().setDescription(str).setFatal(true).build());
        if (this.zzrk == null) {
            this.zzrk = GoogleAnalytics.getInstance(this.zzri);
        }
        GoogleAnalytics googleAnalytics = this.zzrk;
        googleAnalytics.dispatchLocalHits();
        googleAnalytics.zzl().zzcc().zzbt();
        if (this.zzrg != null) {
            zzco.m333v("Passing exception to the original handler");
            this.zzrg.uncaughtException(thread, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Thread.UncaughtExceptionHandler zzp() {
        return this.zzrg;
    }
}
