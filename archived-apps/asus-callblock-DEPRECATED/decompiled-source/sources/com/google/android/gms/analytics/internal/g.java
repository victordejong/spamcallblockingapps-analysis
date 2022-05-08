package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/g.class */
final class g implements Logger {

    /* renamed from: a  reason: collision with root package name */
    private int f3813a = 2;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3814b;

    @Override // com.google.android.gms.analytics.Logger
    public final void error(Exception exc) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void error(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final int getLogLevel() {
        return this.f3813a;
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void info(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void setLogLevel(int i) {
        this.f3813a = i;
        if (!this.f3814b) {
            String str = zzy.zzXF.get();
            String str2 = zzy.zzXF.get();
            Log.i(str, new StringBuilder(String.valueOf(str2).length() + 91).append("Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.").append(str2).append(" DEBUG").toString());
            this.f3814b = true;
        }
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void verbose(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public final void warn(String str) {
    }
}
