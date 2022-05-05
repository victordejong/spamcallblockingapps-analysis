package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.p026b.C0529a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzii.class */
public final class zzii extends AbstractC2713cu {

    /* renamed from: a */
    protected zzif f17250a;

    /* renamed from: b */
    private volatile zzif f17251b;

    /* renamed from: c */
    private zzif f17252c;

    /* renamed from: d */
    private final Map<Activity, zzif> f17253d = new C0529a();

    /* renamed from: e */
    private zzif f17254e;

    /* renamed from: f */
    private String f17255f;

    public zzii(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* renamed from: a */
    private final zzif m1774a(Activity activity) {
        Preconditions.checkNotNull(activity);
        zzif zzifVar = this.f17253d.get(activity);
        zzif zzifVar2 = zzifVar;
        if (zzifVar == null) {
            zzifVar2 = new zzif(null, m1771a(activity.getClass().getCanonicalName()), zzp().zzg());
            this.f17253d.put(activity, zzifVar2);
        }
        return zzifVar2;
    }

    /* renamed from: a */
    private static String m1771a(String str) {
        String[] split = str.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        String str3 = str2;
        if (str2.length() > 100) {
            str3 = str2.substring(0, 100);
        }
        return str3;
    }

    /* renamed from: a */
    private final void m1773a(Activity activity, zzif zzifVar, boolean z) {
        zzif zzifVar2 = this.f17251b == null ? this.f17252c : this.f17251b;
        zzif zzifVar3 = zzifVar;
        if (zzifVar.zzb == null) {
            zzifVar3 = new zzif(zzifVar.zza, m1771a(activity.getClass().getCanonicalName()), zzifVar.zzc);
        }
        this.f17252c = this.f17251b;
        this.f17251b = zzifVar3;
        zzq().zza(new RunnableC2794fu(this, z, zzifVar2, zzifVar3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m1772a(zzii zziiVar, zzif zzifVar, boolean z) {
        zziiVar.zze().zza(zziiVar.zzm().elapsedRealtime());
        if (zziiVar.zzk().zza(zzifVar.f17249a, z)) {
            zzifVar.f17249a = false;
        }
    }

    public static void zza(zzif zzifVar, Bundle bundle, boolean z) {
        if (bundle != null && zzifVar != null && (!bundle.containsKey("_sc") || z)) {
            if (zzifVar.zza != null) {
                bundle.putString("_sn", zzifVar.zza);
            } else {
                bundle.remove("_sn");
            }
            bundle.putString("_sc", zzifVar.zzb);
            bundle.putLong("_si", zzifVar.zzc);
        } else if (bundle != null && zzifVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2713cu
    /* renamed from: c */
    protected final boolean mo1734c() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(Activity activity) {
        m1773a(activity, m1774a(activity), false);
        zzb zze = zze();
        zze.zzq().zza(new RunnableC2657as(zze, zze.zzm().elapsedRealtime()));
    }

    public final void zza(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.f17253d.put(activity, new zzif(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), bundle2.getString("referrer_name"), bundle2.getLong("id")));
        }
    }

    public final void zza(Activity activity, String str, String str2) {
        if (this.f17251b == null) {
            zzr().zzk().zza("setCurrentScreen cannot be called while no activity active");
        } else if (this.f17253d.get(activity) == null) {
            zzr().zzk().zza("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            String str3 = str2;
            if (str2 == null) {
                str3 = m1771a(activity.getClass().getCanonicalName());
            }
            boolean equals = this.f17251b.zzb.equals(str3);
            boolean c = zzkm.m1609c(this.f17251b.zza, str);
            if (equals && c) {
                zzr().zzk().zza("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                zzr().zzk().zza("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str3 == null || (str3.length() > 0 && str3.length() <= 100)) {
                zzr().zzx().zza("Setting current screen to name, class", str == null ? "null" : str, str3);
                zzif zzifVar = new zzif(str, str3, zzp().zzg());
                this.f17253d.put(activity, zzifVar);
                m1773a(activity, zzifVar, true);
            } else {
                zzr().zzk().zza("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str3.length()));
            }
        }
    }

    public final void zza(String str, zzif zzifVar) {
        zzd();
        synchronized (this) {
            if (this.f17255f == null || this.f17255f.equals(str) || zzifVar != null) {
                this.f17255f = str;
                this.f17254e = zzifVar;
            }
        }
    }

    public final zzif zzab() {
        m2146b();
        zzd();
        return this.f17250a;
    }

    public final zzif zzac() {
        zzb();
        return this.f17251b;
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final void zzb(Activity activity) {
        zzif a = m1774a(activity);
        this.f17252c = this.f17251b;
        this.f17251b = null;
        zzq().zza(new RunnableC2795fv(this, a));
    }

    public final void zzb(Activity activity, Bundle bundle) {
        zzif zzifVar;
        if (bundle != null && (zzifVar = this.f17253d.get(activity)) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("id", zzifVar.zzc);
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, zzifVar.zza);
            bundle2.putString("referrer_name", zzifVar.zzb);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    public final void zzc(Activity activity) {
        this.f17253d.remove(activity);
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj, com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.C2729dj
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
