package com.applovin.sdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdkSettings.class */
public class AppLovinSdkSettings {

    /* renamed from: a */
    public boolean f21839a;

    /* renamed from: b */
    public long f21840b;

    /* renamed from: c */
    public boolean f21841c;

    /* renamed from: d */
    public List<String> f21842d;
    public final Map<String, Object> localSettings;

    public AppLovinSdkSettings() {
        this(null);
    }

    public AppLovinSdkSettings(Context context) {
        this.localSettings = new HashMap();
        new HashMap();
        this.f21842d = Collections.emptyList();
        this.f21839a = AbstractC2426r.m29825a(context);
        this.f21840b = -1L;
    }

    @Deprecated
    public long getBannerAdRefreshSeconds() {
        return this.f21840b;
    }

    public List<String> getTestDeviceAdvertisingIds() {
        return this.f21842d;
    }

    public boolean isMuted() {
        return this.f21841c;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.f21839a;
    }

    @Deprecated
    public void setBannerAdRefreshSeconds(long j) {
        this.f21840b = j;
    }

    public void setMuted(boolean z) {
        this.f21841c = z;
    }

    public void setTestDeviceAdvertisingIds(List<String> list) {
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            for (String str : list) {
                if (str == null || str.length() != 36) {
                    C2374t.m30034j("AppLovinSdkSettings", "Unable to set test device advertising id (" + str + ") - please make sure it is in the format of xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
                } else {
                    arrayList.add(str);
                }
            }
            this.f21842d = arrayList;
            return;
        }
        this.f21842d = Collections.emptyList();
    }

    public void setVerboseLogging(boolean z) {
        if (AbstractC2426r.m29829a()) {
            C2374t.m30034j("AppLovinSdkSettings", "Ignoring setting of verbose logging - it is configured from Android manifest already or AppLovinSdkSettings was initialized without a context.");
        } else {
            this.f21839a = z;
        }
    }

    public String toString() {
        return "AppLovinSdkSettings{isVerboseLoggingEnabled=" + this.f21839a + ", muted=" + this.f21841c + ", testDeviceAdvertisingIds=" + this.f21842d.toString() + '}';
    }
}
