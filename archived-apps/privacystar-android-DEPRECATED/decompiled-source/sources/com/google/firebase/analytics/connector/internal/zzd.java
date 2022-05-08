package com.google.firebase.analytics.connector.internal;

import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/zzd.class */
public final class zzd implements zza {
    private AppMeasurement zzbsg;
    private AnalyticsConnector.AnalyticsConnectorListener zzbst;
    private zze zzbsu = new zze(this);
    Set<String> zzbss = new HashSet();

    public zzd(AppMeasurement appMeasurement, AnalyticsConnector.AnalyticsConnectorListener analyticsConnectorListener) {
        this.zzbst = analyticsConnectorListener;
        this.zzbsg = appMeasurement;
        this.zzbsg.registerOnMeasurementEventListener(this.zzbsu);
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void registerEventNames(Set<String> set) {
        this.zzbss.clear();
        Set<String> set2 = this.zzbss;
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (hashSet.size() >= 50) {
                break;
            } else if (zzc.zzfr(str) && zzc.zzfq(str)) {
                hashSet.add(zzc.zzft(str));
            }
        }
        set2.addAll(hashSet);
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final void unregisterEventNames() {
        this.zzbss.clear();
    }

    @Override // com.google.firebase.analytics.connector.internal.zza
    public final AnalyticsConnector.AnalyticsConnectorListener zztl() {
        return this.zzbst;
    }
}
