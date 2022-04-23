package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakr.class */
public final class zzakr extends zzbft {

    /* renamed from: a */
    private final AppMeasurementSdk f10978a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakr(AppMeasurementSdk appMeasurementSdk) {
        this.f10978a = appMeasurementSdk;
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void beginAdUnitExposure(String str) {
        this.f10978a.beginAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f10978a.clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void endAdUnitExposure(String str) {
        this.f10978a.endAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final long generateEventId() {
        return this.f10978a.generateEventId();
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final String getAppIdOrigin() {
        return this.f10978a.getAppIdOrigin();
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final String getAppInstanceId() {
        return this.f10978a.getAppInstanceId();
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final List getConditionalUserProperties(String str, String str2) {
        return this.f10978a.getConditionalUserProperties(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final String getCurrentScreenClass() {
        return this.f10978a.getCurrentScreenClass();
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final String getCurrentScreenName() {
        return this.f10978a.getCurrentScreenName();
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final String getGmpAppId() {
        return this.f10978a.getGmpAppId();
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final int getMaxUserProperties(String str) {
        return this.f10978a.getMaxUserProperties(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final Map getUserProperties(String str, String str2, boolean z) {
        return this.f10978a.getUserProperties(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void logEvent(String str, String str2, Bundle bundle) {
        this.f10978a.logEvent(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void performAction(Bundle bundle) {
        this.f10978a.performAction(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final Bundle performActionWithResponse(Bundle bundle) {
        return this.f10978a.performActionWithResponse(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void setConditionalUserProperty(Bundle bundle) {
        this.f10978a.setConditionalUserProperty(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void zza(String str, String str2, IObjectWrapper iObjectWrapper) {
        this.f10978a.setUserProperty(str, str2, iObjectWrapper != null ? ObjectWrapper.unwrap(iObjectWrapper) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzbfq
    public final void zzb(IObjectWrapper iObjectWrapper, String str, String str2) {
        this.f10978a.setCurrentScreen(iObjectWrapper != null ? (Activity) ObjectWrapper.unwrap(iObjectWrapper) : null, str, str2);
    }
}
