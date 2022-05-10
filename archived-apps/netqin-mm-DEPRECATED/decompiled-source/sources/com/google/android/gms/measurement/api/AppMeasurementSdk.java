package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzag;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzgz;
import java.util.List;
import java.util.Map;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk.class */
public class AppMeasurementSdk {

    /* renamed from: a */
    public final zzag f29778a;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$ConditionalUserProperty.class */
    public static final class ConditionalUserProperty {
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$EventInterceptor.class */
    public interface EventInterceptor extends zzgw {
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/api/AppMeasurementSdk$OnEventListener.class */
    public interface OnEventListener extends zzgz {
    }

    public AppMeasurementSdk(zzag zzagVar) {
        this.f29778a = zzagVar;
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public static AppMeasurementSdk m9388a(Context context) {
        return zzag.m10475a(context).m10478a();
    }

    @KeepForSdk
    /* renamed from: a */
    public static AppMeasurementSdk m9387a(Context context, String str, String str2, String str3, Bundle bundle) {
        return zzag.m10473a(context, str, str2, str3, bundle).m10478a();
    }

    @KeepForSdk
    /* renamed from: a */
    public long m9390a() {
        return this.f29778a.m10444d();
    }

    @KeepForSdk
    /* renamed from: a */
    public List<Bundle> m9383a(String str, String str2) {
        return this.f29778a.m10460a(str, str2);
    }

    @KeepForSdk
    /* renamed from: a */
    public Map<String, Object> m9380a(String str, String str2, boolean z) {
        return this.f29778a.m10456a(str, str2, z);
    }

    @KeepForSdk
    /* renamed from: a */
    public void m9389a(Activity activity, String str, String str2) {
        this.f29778a.m10476a(activity, str, str2);
    }

    @KeepForSdk
    /* renamed from: a */
    public void m9386a(Bundle bundle) {
        this.f29778a.m10470a(bundle, false);
    }

    @ShowFirstParty
    @KeepForSdk
    /* renamed from: a */
    public void m9385a(OnEventListener onEventListener) {
        this.f29778a.m10463a(onEventListener);
    }

    @KeepForSdk
    /* renamed from: a */
    public void m9384a(String str) {
        this.f29778a.m10461a(str);
    }

    @KeepForSdk
    /* renamed from: a */
    public void m9382a(String str, String str2, Bundle bundle) {
        this.f29778a.m10449b(str, str2, bundle);
    }

    @KeepForSdk
    /* renamed from: a */
    public void m9381a(String str, String str2, Object obj) {
        this.f29778a.m10457a(str, str2, obj, true);
    }

    /* renamed from: a */
    public final void m9379a(boolean z) {
        this.f29778a.m10455a(z);
    }

    @KeepForSdk
    /* renamed from: b */
    public Bundle m9377b(Bundle bundle) {
        return this.f29778a.m10470a(bundle, true);
    }

    @KeepForSdk
    /* renamed from: b */
    public String m9378b() {
        return this.f29778a.m10438g();
    }

    @KeepForSdk
    /* renamed from: b */
    public void m9376b(String str) {
        this.f29778a.m10451b(str);
    }

    @KeepForSdk
    /* renamed from: b */
    public void m9375b(String str, String str2, Bundle bundle) {
        this.f29778a.m10459a(str, str2, bundle);
    }

    @KeepForSdk
    /* renamed from: c */
    public int m9372c(String str) {
        return this.f29778a.m10445c(str);
    }

    @KeepForSdk
    /* renamed from: c */
    public String m9374c() {
        return this.f29778a.m10448c();
    }

    @KeepForSdk
    /* renamed from: c */
    public void m9373c(Bundle bundle) {
        this.f29778a.m10471a(bundle);
    }

    @KeepForSdk
    /* renamed from: d */
    public String m9371d() {
        return this.f29778a.m10440f();
    }

    @KeepForSdk
    /* renamed from: e */
    public String m9370e() {
        return this.f29778a.m10442e();
    }

    @KeepForSdk
    /* renamed from: f */
    public String m9369f() {
        return this.f29778a.m10454b();
    }
}
