package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzx;
import com.google.android.gms.measurement.internal.zzgz;
import com.google.android.gms.measurement.internal.zzha;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk.class */
public class AppMeasurementSdk {

    /* renamed from: a */
    private final zzx f16543a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty.class */
    public static final class ConditionalUserProperty {
        public static final String ACTIVE = "active";
        public static final String CREATION_TIMESTAMP = "creation_timestamp";
        public static final String EXPIRED_EVENT_NAME = "expired_event_name";
        public static final String EXPIRED_EVENT_PARAMS = "expired_event_params";
        public static final String NAME = "name";
        public static final String ORIGIN = "origin";
        public static final String TIMED_OUT_EVENT_NAME = "timed_out_event_name";
        public static final String TIMED_OUT_EVENT_PARAMS = "timed_out_event_params";
        public static final String TIME_TO_LIVE = "time_to_live";
        public static final String TRIGGERED_EVENT_NAME = "triggered_event_name";
        public static final String TRIGGERED_EVENT_PARAMS = "triggered_event_params";
        public static final String TRIGGERED_TIMESTAMP = "triggered_timestamp";
        public static final String TRIGGER_EVENT_NAME = "trigger_event_name";
        public static final String TRIGGER_TIMEOUT = "trigger_timeout";
        public static final String VALUE = "value";

        private ConditionalUserProperty() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$EventInterceptor.class */
    public interface EventInterceptor extends zzha {
        @Override // com.google.android.gms.measurement.internal.zzha
        void interceptEvent(String str, String str2, Bundle bundle, long j);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener.class */
    public interface OnEventListener extends zzgz {
        @Override // com.google.android.gms.measurement.internal.zzgz
        void onEvent(String str, String str2, Bundle bundle, long j);
    }

    public AppMeasurementSdk(zzx zzxVar) {
        this.f16543a = zzxVar;
    }

    public static AppMeasurementSdk getInstance(Context context) {
        return zzx.zza(context).zza();
    }

    public static AppMeasurementSdk getInstance(Context context, String str, String str2, String str3, Bundle bundle) {
        return zzx.zza(context, str, str2, str3, bundle).zza();
    }

    public void beginAdUnitExposure(String str) {
        this.f16543a.zzb(str);
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f16543a.zzb(str, str2, bundle);
    }

    public void endAdUnitExposure(String str) {
        this.f16543a.zzc(str);
    }

    public long generateEventId() {
        return this.f16543a.zze();
    }

    public String getAppIdOrigin() {
        return this.f16543a.zzi();
    }

    public String getAppInstanceId() {
        return this.f16543a.zzd();
    }

    public List<Bundle> getConditionalUserProperties(String str, String str2) {
        return this.f16543a.zzb(str, str2);
    }

    public String getCurrentScreenClass() {
        return this.f16543a.zzg();
    }

    public String getCurrentScreenName() {
        return this.f16543a.zzf();
    }

    public String getGmpAppId() {
        return this.f16543a.zzc();
    }

    public int getMaxUserProperties(String str) {
        return this.f16543a.zzd(str);
    }

    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f16543a.zza(str, str2, z);
    }

    public void logEvent(String str, String str2, Bundle bundle) {
        this.f16543a.zza(str, str2, bundle);
    }

    public void logEventNoInterceptor(String str, String str2, Bundle bundle, long j) {
        this.f16543a.zza(str, str2, bundle, j);
    }

    public void performAction(Bundle bundle) {
        this.f16543a.zza(bundle, false);
    }

    public Bundle performActionWithResponse(Bundle bundle) {
        return this.f16543a.zza(bundle, true);
    }

    public void registerOnMeasurementEventListener(OnEventListener onEventListener) {
        this.f16543a.zza(onEventListener);
    }

    public void setConditionalUserProperty(Bundle bundle) {
        this.f16543a.zza(bundle);
    }

    public void setCurrentScreen(Activity activity, String str, String str2) {
        this.f16543a.zza(activity, str, str2);
    }

    public void setEventInterceptor(EventInterceptor eventInterceptor) {
        this.f16543a.zza(eventInterceptor);
    }

    public void setMeasurementEnabled(boolean z) {
        this.f16543a.zza(z);
    }

    public void setUserProperty(String str, String str2, Object obj) {
        this.f16543a.zza(str, str2, obj);
    }

    public void unregisterOnMeasurementEventListener(OnEventListener onEventListener) {
        this.f16543a.zzb(onEventListener);
    }
}
