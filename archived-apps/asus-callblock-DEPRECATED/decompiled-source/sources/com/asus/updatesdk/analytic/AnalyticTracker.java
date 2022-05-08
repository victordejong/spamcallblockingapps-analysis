package com.asus.updatesdk.analytic;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.analytics.ExceptionParser;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/analytic/AnalyticTracker.class */
public abstract class AnalyticTracker {

    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/analytic/AnalyticTracker$AnalyticsExceptionParser.class */
    public static class AnalyticsExceptionParser implements ExceptionParser {
        private static String a(Throwable th) {
            StringBuilder sb = new StringBuilder();
            sb.append(th.toString());
            sb.append(",\n");
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                sb.append(stackTraceElement.toString());
                sb.append(",\n");
            }
            return sb.toString();
        }

        @Override // com.google.android.gms.analytics.ExceptionParser
        public String getDescription(String str, Throwable th) {
            return "Description: " + str + ", Exception: " + a(th);
        }
    }

    public abstract void activityStart(Activity activity);

    public abstract void activityStop(Activity activity);

    public abstract void sendEvents(Context context, String str, String str2, String str3, Long l);

    public abstract void sendException(Context context, String str, Throwable th, boolean z);

    public abstract void sendTiming(Context context, String str, long j, String str2, String str3);

    public abstract void sendView(Context context, String str);
}
