package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzo.class */
public final class zzo extends zza implements zzm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void beginAdUnitExposure(String str, long j) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeLong(j);
        m2470b(23, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, bundle);
        m2470b(9, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void endAdUnitExposure(String str, long j) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeLong(j);
        m2470b(24, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void generateEventId(zzn zznVar) {
        Parcel a = m2472a();
        zzb.zza(a, zznVar);
        m2470b(22, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getAppInstanceId(zzn zznVar) {
        Parcel a = m2472a();
        zzb.zza(a, zznVar);
        m2470b(20, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getCachedAppInstanceId(zzn zznVar) {
        Parcel a = m2472a();
        zzb.zza(a, zznVar);
        m2470b(19, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getConditionalUserProperties(String str, String str2, zzn zznVar) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, zznVar);
        m2470b(10, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getCurrentScreenClass(zzn zznVar) {
        Parcel a = m2472a();
        zzb.zza(a, zznVar);
        m2470b(17, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getCurrentScreenName(zzn zznVar) {
        Parcel a = m2472a();
        zzb.zza(a, zznVar);
        m2470b(16, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getGmpAppId(zzn zznVar) {
        Parcel a = m2472a();
        zzb.zza(a, zznVar);
        m2470b(21, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getMaxUserProperties(String str, zzn zznVar) {
        Parcel a = m2472a();
        a.writeString(str);
        zzb.zza(a, zznVar);
        m2470b(6, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getTestFlag(zzn zznVar, int i) {
        Parcel a = m2472a();
        zzb.zza(a, zznVar);
        a.writeInt(i);
        m2470b(38, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void getUserProperties(String str, String str2, boolean z, zzn zznVar) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, z);
        zzb.zza(a, zznVar);
        m2470b(5, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void initForTests(Map map) {
        Parcel a = m2472a();
        a.writeMap(map);
        m2470b(37, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void initialize(IObjectWrapper iObjectWrapper, zzv zzvVar, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        zzb.zza(a, zzvVar);
        a.writeLong(j);
        m2470b(1, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void isDataCollectionEnabled(zzn zznVar) {
        Parcel a = m2472a();
        zzb.zza(a, zznVar);
        m2470b(40, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, bundle);
        zzb.zza(a, z);
        zzb.zza(a, z2);
        a.writeLong(j);
        m2470b(2, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzn zznVar, long j) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, bundle);
        zzb.zza(a, zznVar);
        a.writeLong(j);
        m2470b(3, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel a = m2472a();
        a.writeInt(i);
        a.writeString(str);
        zzb.zza(a, iObjectWrapper);
        zzb.zza(a, iObjectWrapper2);
        zzb.zza(a, iObjectWrapper3);
        m2470b(33, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        zzb.zza(a, bundle);
        a.writeLong(j);
        m2470b(27, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        a.writeLong(j);
        m2470b(28, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        a.writeLong(j);
        m2470b(29, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        a.writeLong(j);
        m2470b(30, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzn zznVar, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        zzb.zza(a, zznVar);
        a.writeLong(j);
        m2470b(31, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        a.writeLong(j);
        m2470b(25, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        a.writeLong(j);
        m2470b(26, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void performAction(Bundle bundle, zzn zznVar, long j) {
        Parcel a = m2472a();
        zzb.zza(a, bundle);
        zzb.zza(a, zznVar);
        a.writeLong(j);
        m2470b(32, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void registerOnMeasurementEventListener(zzs zzsVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzsVar);
        m2470b(35, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void resetAnalyticsData(long j) {
        Parcel a = m2472a();
        a.writeLong(j);
        m2470b(12, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel a = m2472a();
        zzb.zza(a, bundle);
        a.writeLong(j);
        m2470b(8, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) {
        Parcel a = m2472a();
        zzb.zza(a, iObjectWrapper);
        a.writeString(str);
        a.writeString(str2);
        a.writeLong(j);
        m2470b(15, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setDataCollectionEnabled(boolean z) {
        Parcel a = m2472a();
        zzb.zza(a, z);
        m2470b(39, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setEventInterceptor(zzs zzsVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzsVar);
        m2470b(34, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setInstanceIdProvider(zzt zztVar) {
        Parcel a = m2472a();
        zzb.zza(a, zztVar);
        m2470b(18, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel a = m2472a();
        zzb.zza(a, z);
        a.writeLong(j);
        m2470b(11, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setMinimumSessionDuration(long j) {
        Parcel a = m2472a();
        a.writeLong(j);
        m2470b(13, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setSessionTimeoutDuration(long j) {
        Parcel a = m2472a();
        a.writeLong(j);
        m2470b(14, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setUserId(String str, long j) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeLong(j);
        m2470b(7, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) {
        Parcel a = m2472a();
        a.writeString(str);
        a.writeString(str2);
        zzb.zza(a, iObjectWrapper);
        zzb.zza(a, z);
        a.writeLong(j);
        m2470b(4, a);
    }

    @Override // com.google.android.gms.internal.measurement.zzm
    public final void unregisterOnMeasurementEventListener(zzs zzsVar) {
        Parcel a = m2472a();
        zzb.zza(a, zzsVar);
        m2470b(36, a);
    }
}
