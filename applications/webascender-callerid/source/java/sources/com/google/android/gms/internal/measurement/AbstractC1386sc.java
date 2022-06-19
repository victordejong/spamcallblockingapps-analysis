package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC0986b;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.sc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/sc.class */
public interface AbstractC1386sc extends IInterface {
    void beginAdUnitExposure(String str, long j) throws RemoteException;

    void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException;

    void clearMeasurementEnabled(long j) throws RemoteException;

    void endAdUnitExposure(String str, long j) throws RemoteException;

    void generateEventId(AbstractC1402vc abstractC1402vc) throws RemoteException;

    void getAppInstanceId(AbstractC1402vc abstractC1402vc) throws RemoteException;

    void getCachedAppInstanceId(AbstractC1402vc abstractC1402vc) throws RemoteException;

    void getConditionalUserProperties(String str, String str2, AbstractC1402vc abstractC1402vc) throws RemoteException;

    void getCurrentScreenClass(AbstractC1402vc abstractC1402vc) throws RemoteException;

    void getCurrentScreenName(AbstractC1402vc abstractC1402vc) throws RemoteException;

    void getGmpAppId(AbstractC1402vc abstractC1402vc) throws RemoteException;

    void getMaxUserProperties(String str, AbstractC1402vc abstractC1402vc) throws RemoteException;

    void getTestFlag(AbstractC1402vc abstractC1402vc, int i) throws RemoteException;

    void getUserProperties(String str, String str2, boolean z, AbstractC1402vc abstractC1402vc) throws RemoteException;

    void initForTests(Map map) throws RemoteException;

    void initialize(AbstractC0986b abstractC0986b, bd bdVar, long j) throws RemoteException;

    void isDataCollectionEnabled(AbstractC1402vc abstractC1402vc) throws RemoteException;

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException;

    void logEventAndBundle(String str, String str2, Bundle bundle, AbstractC1402vc abstractC1402vc, long j) throws RemoteException;

    void logHealthData(int i, String str, AbstractC0986b abstractC0986b, AbstractC0986b abstractC0986b2, AbstractC0986b abstractC0986b3) throws RemoteException;

    void onActivityCreated(AbstractC0986b abstractC0986b, Bundle bundle, long j) throws RemoteException;

    void onActivityDestroyed(AbstractC0986b abstractC0986b, long j) throws RemoteException;

    void onActivityPaused(AbstractC0986b abstractC0986b, long j) throws RemoteException;

    void onActivityResumed(AbstractC0986b abstractC0986b, long j) throws RemoteException;

    void onActivitySaveInstanceState(AbstractC0986b abstractC0986b, AbstractC1402vc abstractC1402vc, long j) throws RemoteException;

    void onActivityStarted(AbstractC0986b abstractC0986b, long j) throws RemoteException;

    void onActivityStopped(AbstractC0986b abstractC0986b, long j) throws RemoteException;

    void performAction(Bundle bundle, AbstractC1402vc abstractC1402vc, long j) throws RemoteException;

    void registerOnMeasurementEventListener(AbstractC1417yc abstractC1417yc) throws RemoteException;

    void resetAnalyticsData(long j) throws RemoteException;

    void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException;

    void setConsent(Bundle bundle, long j) throws RemoteException;

    void setConsentThirdParty(Bundle bundle, long j) throws RemoteException;

    void setCurrentScreen(AbstractC0986b abstractC0986b, String str, String str2, long j) throws RemoteException;

    void setDataCollectionEnabled(boolean z) throws RemoteException;

    void setDefaultEventParameters(Bundle bundle) throws RemoteException;

    void setEventInterceptor(AbstractC1417yc abstractC1417yc) throws RemoteException;

    void setInstanceIdProvider(AbstractC1290ad abstractC1290ad) throws RemoteException;

    void setMeasurementEnabled(boolean z, long j) throws RemoteException;

    void setMinimumSessionDuration(long j) throws RemoteException;

    void setSessionTimeoutDuration(long j) throws RemoteException;

    void setUserId(String str, long j) throws RemoteException;

    void setUserProperty(String str, String str2, AbstractC0986b abstractC0986b, boolean z, long j) throws RemoteException;

    void unregisterOnMeasurementEventListener(AbstractC1417yc abstractC1417yc) throws RemoteException;
}
