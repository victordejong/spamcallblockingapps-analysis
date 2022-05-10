package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzx.class */
public final class zzx extends zza implements zzv {
    public zzx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void beginAdUnitExposure(String str, long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeLong(j);
        m10479b(23, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10427a(W, bundle);
        m10479b(9, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void clearMeasurementEnabled(long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeLong(j);
        m10479b(43, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void endAdUnitExposure(String str, long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeLong(j);
        m10479b(24, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void generateEventId(zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzwVar);
        m10479b(22, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getAppInstanceId(zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzwVar);
        m10479b(20, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getCachedAppInstanceId(zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzwVar);
        m10479b(19, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getConditionalUserProperties(String str, String str2, zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10429a(W, zzwVar);
        m10479b(10, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getCurrentScreenClass(zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzwVar);
        m10479b(17, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getCurrentScreenName(zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzwVar);
        m10479b(16, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getGmpAppId(zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzwVar);
        m10479b(21, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getMaxUserProperties(String str, zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        zzb.m10429a(W, zzwVar);
        m10479b(6, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getTestFlag(zzw zzwVar, int i) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzwVar);
        W.writeInt(i);
        m10479b(38, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void getUserProperties(String str, String str2, boolean z, zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10426a(W, z);
        zzb.m10429a(W, zzwVar);
        m10479b(5, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void initForTests(Map map) throws RemoteException {
        Parcel W = m10481W();
        W.writeMap(map);
        m10479b(37, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void initialize(IObjectWrapper iObjectWrapper, zzae zzaeVar, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        zzb.m10427a(W, zzaeVar);
        W.writeLong(j);
        m10479b(1, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void isDataCollectionEnabled(zzw zzwVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzwVar);
        m10479b(40, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10427a(W, bundle);
        zzb.m10426a(W, z);
        zzb.m10426a(W, z2);
        W.writeLong(j);
        m10479b(2, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzw zzwVar, long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10427a(W, bundle);
        zzb.m10429a(W, zzwVar);
        W.writeLong(j);
        m10479b(3, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel W = m10481W();
        W.writeInt(i);
        W.writeString(str);
        zzb.m10429a(W, iObjectWrapper);
        zzb.m10429a(W, iObjectWrapper2);
        zzb.m10429a(W, iObjectWrapper3);
        m10479b(33, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        zzb.m10427a(W, bundle);
        W.writeLong(j);
        m10479b(27, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        W.writeLong(j);
        m10479b(28, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        W.writeLong(j);
        m10479b(29, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        W.writeLong(j);
        m10479b(30, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzw zzwVar, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        zzb.m10429a(W, zzwVar);
        W.writeLong(j);
        m10479b(31, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        W.writeLong(j);
        m10479b(25, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        W.writeLong(j);
        m10479b(26, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void performAction(Bundle bundle, zzw zzwVar, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, bundle);
        zzb.m10429a(W, zzwVar);
        W.writeLong(j);
        m10479b(32, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void registerOnMeasurementEventListener(zzab zzabVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzabVar);
        m10479b(35, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void resetAnalyticsData(long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeLong(j);
        m10479b(12, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, bundle);
        W.writeLong(j);
        m10479b(8, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setConsent(Bundle bundle, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, bundle);
        W.writeLong(j);
        m10479b(44, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, bundle);
        W.writeLong(j);
        m10479b(45, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, iObjectWrapper);
        W.writeString(str);
        W.writeString(str2);
        W.writeLong(j);
        m10479b(15, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setDataCollectionEnabled(boolean z) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10426a(W, z);
        m10479b(39, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setDefaultEventParameters(Bundle bundle) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10427a(W, bundle);
        m10479b(42, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setEventInterceptor(zzab zzabVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzabVar);
        m10479b(34, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setInstanceIdProvider(zzac zzacVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzacVar);
        m10479b(18, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10426a(W, z);
        W.writeLong(j);
        m10479b(11, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setMinimumSessionDuration(long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeLong(j);
        m10479b(13, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setSessionTimeoutDuration(long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeLong(j);
        m10479b(14, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setUserId(String str, long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeLong(j);
        m10479b(7, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        Parcel W = m10481W();
        W.writeString(str);
        W.writeString(str2);
        zzb.m10429a(W, iObjectWrapper);
        zzb.m10426a(W, z);
        W.writeLong(j);
        m10479b(4, W);
    }

    @Override // com.google.android.gms.internal.measurement.zzv
    public final void unregisterOnMeasurementEventListener(zzab zzabVar) throws RemoteException {
        Parcel W = m10481W();
        zzb.m10429a(W, zzabVar);
        m10479b(36, W);
    }
}
