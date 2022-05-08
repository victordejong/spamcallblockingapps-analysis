package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzm.class */
public interface zzm extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void endAdUnitExposure(String str, long j);

    void generateEventId(zzn zznVar);

    void getAppInstanceId(zzn zznVar);

    void getCachedAppInstanceId(zzn zznVar);

    void getConditionalUserProperties(String str, String str2, zzn zznVar);

    void getCurrentScreenClass(zzn zznVar);

    void getCurrentScreenName(zzn zznVar);

    void getGmpAppId(zzn zznVar);

    void getMaxUserProperties(String str, zzn zznVar);

    void getTestFlag(zzn zznVar, int i);

    void getUserProperties(String str, String str2, boolean z, zzn zznVar);

    void initForTests(Map map);

    void initialize(IObjectWrapper iObjectWrapper, zzv zzvVar, long j);

    void isDataCollectionEnabled(zzn zznVar);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, zzn zznVar, long j);

    void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3);

    void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j);

    void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j);

    void onActivityPaused(IObjectWrapper iObjectWrapper, long j);

    void onActivityResumed(IObjectWrapper iObjectWrapper, long j);

    void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzn zznVar, long j);

    void onActivityStarted(IObjectWrapper iObjectWrapper, long j);

    void onActivityStopped(IObjectWrapper iObjectWrapper, long j);

    void performAction(Bundle bundle, zzn zznVar, long j);

    void registerOnMeasurementEventListener(zzs zzsVar);

    void resetAnalyticsData(long j);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setEventInterceptor(zzs zzsVar);

    void setInstanceIdProvider(zzt zztVar);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j);

    void unregisterOnMeasurementEventListener(zzs zzsVar);
}
