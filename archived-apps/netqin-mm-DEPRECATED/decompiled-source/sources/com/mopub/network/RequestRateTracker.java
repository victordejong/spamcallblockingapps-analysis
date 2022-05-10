package com.mopub.network;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestRateTracker.class */
public class RequestRateTracker {

    /* renamed from: a */
    public Map<String, TimeRecord> f35054a = Collections.synchronizedMap(new HashMap());

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestRateTracker$TimeRecord.class */
    public static class TimeRecord {

        /* renamed from: a */
        public final long f35055a = RequestRateTracker.m3771b();
        public final int mBlockIntervalMs;
        public final String mReason;

        public TimeRecord(int i, String str) {
            this.mBlockIntervalMs = i;
            this.mReason = str == null ? "unknown" : str;
        }

        /* renamed from: a */
        public long m3769a() {
            return this.f35055a + this.mBlockIntervalMs;
        }
    }

    /* renamed from: com.mopub.network.RequestRateTracker$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestRateTracker$a.class */
    public static class C8991a {

        /* renamed from: a */
        public static RequestRateTracker f35056a = new RequestRateTracker();
    }

    /* renamed from: b */
    public static long m3771b() {
        return SystemClock.elapsedRealtime();
    }

    public static RequestRateTracker getInstance() {
        return C8991a.f35056a;
    }

    /* renamed from: a */
    public final long m3773a(String str) {
        TimeRecord timeRecord = this.f35054a.get(str);
        if (timeRecord == null) {
            return 0L;
        }
        return timeRecord.m3769a() - m3771b();
    }

    /* renamed from: a */
    public void m3772a(String str, Integer num, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (num == null || num.intValue() <= 0) {
                this.f35054a.remove(str);
            } else {
                this.f35054a.put(str, new TimeRecord(num.intValue(), str2));
            }
        }
    }

    /* renamed from: b */
    public boolean m3770b(String str) {
        return m3773a(str) > 0;
    }

    public TimeRecord getRecordForAdUnit(String str) {
        return this.f35054a.get(str);
    }
}
