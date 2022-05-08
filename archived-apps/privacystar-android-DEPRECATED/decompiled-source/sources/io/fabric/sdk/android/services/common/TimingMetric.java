package io.fabric.sdk.android.services.common;

import android.os.SystemClock;
import android.util.Log;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/common/TimingMetric.class */
public class TimingMetric {
    private final boolean disabled;
    private long duration;
    private final String eventName;
    private long start;
    private final String tag;

    public TimingMetric(String str, String str2) {
        this.eventName = str;
        this.tag = str2;
        this.disabled = !Log.isLoggable(str2, 2);
    }

    private void reportToLog() {
        String str = this.tag;
        Log.v(str, this.eventName + ": " + this.duration + "ms");
    }

    public long getDuration() {
        return this.duration;
    }

    public void startMeasuring() {
        synchronized (this) {
            if (!this.disabled) {
                this.start = SystemClock.elapsedRealtime();
                this.duration = 0L;
            }
        }
    }

    public void stopMeasuring() {
        synchronized (this) {
            if (!this.disabled) {
                if (this.duration == 0) {
                    this.duration = SystemClock.elapsedRealtime() - this.start;
                    reportToLog();
                }
            }
        }
    }
}
