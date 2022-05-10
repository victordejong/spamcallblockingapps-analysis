package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamu.class */
public final class zzamu extends zzbit {

    /* renamed from: a */
    public final AppMeasurementSdk f24197a;

    public zzamu(AppMeasurementSdk appMeasurementSdk) {
        this.f24197a = appMeasurementSdk;
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: B */
    public final void mo15451B(String str) throws RemoteException {
        this.f24197a.m9376b(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: E1 */
    public final String mo15450E1() throws RemoteException {
        return this.f24197a.m9371d();
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: U0 */
    public final String mo15449U0() throws RemoteException {
        return this.f24197a.m9374c();
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: a */
    public final Map mo15447a(String str, String str2, boolean z) throws RemoteException {
        return this.f24197a.m9380a(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: a */
    public final void mo15448a(String str, String str2, IObjectWrapper iObjectWrapper) throws RemoteException {
        this.f24197a.m9381a(str, str2, iObjectWrapper != null ? ObjectWrapper.m17021Q(iObjectWrapper) : null);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: b */
    public final List mo15445b(String str, String str2) throws RemoteException {
        return this.f24197a.m9383a(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: b */
    public final void mo15446b(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        this.f24197a.m9389a(iObjectWrapper != null ? (Activity) ObjectWrapper.m17021Q(iObjectWrapper) : null, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: b */
    public final void mo15444b(String str, String str2, Bundle bundle) throws RemoteException {
        this.f24197a.m9375b(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        this.f24197a.m9382a(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: d1 */
    public final long mo15443d1() throws RemoteException {
        return this.f24197a.m9390a();
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: f */
    public final int mo15441f(String str) throws RemoteException {
        return this.f24197a.m9372c(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: f */
    public final void mo15442f(Bundle bundle) throws RemoteException {
        this.f24197a.m9386a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: f1 */
    public final String mo15440f1() throws RemoteException {
        return this.f24197a.m9370e();
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: h */
    public final Bundle mo15439h(Bundle bundle) throws RemoteException {
        return this.f24197a.m9377b(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: i */
    public final void mo15438i(Bundle bundle) throws RemoteException {
        this.f24197a.m9373c(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: y1 */
    public final String mo15437y1() throws RemoteException {
        return this.f24197a.m9378b();
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: z */
    public final void mo15436z(String str) throws RemoteException {
        this.f24197a.m9384a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbiq
    /* renamed from: z1 */
    public final String mo15435z1() throws RemoteException {
        return this.f24197a.m9369f();
    }
}
