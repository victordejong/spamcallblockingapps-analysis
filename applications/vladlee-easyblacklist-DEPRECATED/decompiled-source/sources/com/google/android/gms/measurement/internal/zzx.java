package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.ProcessUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzx.class */
public final class zzx extends C2761eo {

    /* renamed from: a */
    private Boolean f17313a;

    /* renamed from: b */
    private AbstractC2855ia f17314b = C2665b.f16580a;

    /* renamed from: c */
    private Boolean f17315c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* renamed from: a */
    private final String m1598a(String str, String str2) {
        zzey zzeyVar;
        Object e;
        String str3;
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, str2);
        } catch (ClassNotFoundException e2) {
            e = e2;
            zzeyVar = zzr().zzf();
            str3 = "Could not find SystemProperties class";
            zzeyVar.zza(str3, e);
            return str2;
        } catch (IllegalAccessException e3) {
            e = e3;
            zzeyVar = zzr().zzf();
            str3 = "Could not access SystemProperties.get()";
            zzeyVar.zza(str3, e);
            return str2;
        } catch (NoSuchMethodException e4) {
            e = e4;
            zzeyVar = zzr().zzf();
            str3 = "Could not find SystemProperties.get() method";
            zzeyVar.zza(str3, e);
            return str2;
        } catch (InvocationTargetException e5) {
            e = e5;
            zzeyVar = zzr().zzf();
            str3 = "SystemProperties.get() threw an exception";
            zzeyVar.zza(str3, e);
            return str2;
        }
    }

    /* renamed from: b */
    private final Bundle m1597b() {
        try {
            if (zzn().getPackageManager() == null) {
                zzr().zzf().zza("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = Wrappers.packageManager(zzn()).getApplicationInfo(zzn().getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            zzr().zzf().zza("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            zzr().zzf().zza("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public static long zzj() {
        return zzap.zzad.zza(null).longValue();
    }

    public static long zzk() {
        return zzap.zzd.zza(null).longValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Boolean m1599a(String str) {
        Preconditions.checkNotEmpty(str);
        Bundle b = m1597b();
        if (b == null) {
            zzr().zzf().zza("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (!b.containsKey(str)) {
            return null;
        } else {
            return Boolean.valueOf(b.getBoolean(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1600a(AbstractC2855ia iaVar) {
        this.f17314b = iaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m1601a() {
        if (this.f17313a == null) {
            this.f17313a = m1599a("app_measurement_lite");
            if (this.f17313a == null) {
                this.f17313a = Boolean.FALSE;
            }
        }
        return this.f17313a.booleanValue() || !this.f16804x.zzt();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0037 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> m1596b(java.lang.String r5) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r0 = com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r0)
            r0 = r4
            android.os.Bundle r0 = r0.m1597b()
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x001f
            r0 = r4
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()
            java.lang.String r1 = "Failed to load metadata: Metadata bundle is null"
            r0.zza(r1)
        L_0x001a:
            r0 = 0
            r5 = r0
            goto L_0x0033
        L_0x001f:
            r0 = r6
            r1 = r5
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x002a
            goto L_0x001a
        L_0x002a:
            r0 = r6
            r1 = r5
            int r0 = r0.getInt(r1)
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r5 = r0
        L_0x0033:
            r0 = r5
            if (r0 != 0) goto L_0x0039
            r0 = 0
            return r0
        L_0x0039:
            r0 = r4
            android.content.Context r0 = r0.zzn()     // Catch: NotFoundException -> 0x0055
            android.content.res.Resources r0 = r0.getResources()     // Catch: NotFoundException -> 0x0055
            r1 = r5
            int r1 = r1.intValue()     // Catch: NotFoundException -> 0x0055
            java.lang.String[] r0 = r0.getStringArray(r1)     // Catch: NotFoundException -> 0x0055
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L_0x004e
            r0 = 0
            return r0
        L_0x004e:
            r0 = r5
            java.util.List r0 = java.util.Arrays.asList(r0)     // Catch: NotFoundException -> 0x0055
            r5 = r0
            r0 = r5
            return r0
        L_0x0055:
            r5 = move-exception
            r0 = r4
            com.google.android.gms.measurement.internal.zzew r0 = r0.zzr()
            com.google.android.gms.measurement.internal.zzey r0 = r0.zzf()
            java.lang.String r1 = "Failed to load string array from metadata: resource not found"
            r2 = r5
            r0.zza(r1, r2)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzx.m1596b(java.lang.String):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final String m1595c(String str) {
        zzel<String> zzelVar = zzap.zzai;
        return zzelVar.zza(str == null ? null : this.f17314b.zza(str, zzelVar.zza()));
    }

    public final int zza(String str) {
        return zzb(str, zzap.zzo);
    }

    public final long zza(String str, zzel<Long> zzelVar) {
        if (str != null) {
            String zza = this.f17314b.zza(str, zzelVar.zza());
            if (!TextUtils.isEmpty(zza)) {
                try {
                    return zzelVar.zza(Long.valueOf(Long.parseLong(zza))).longValue();
                } catch (NumberFormatException e) {
                }
            }
        }
        return zzelVar.zza(null).longValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L_0x003d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zza(com.google.android.gms.measurement.internal.C2744dy r6) {
        /*
            r5 = this;
            android.net.Uri$Builder r0 = new android.net.Uri$Builder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            java.lang.String r0 = r0.m2096e()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0043
            boolean r0 = com.google.android.gms.internal.measurement.zzle.zzb()
            if (r0 == 0) goto L_0x003d
            r0 = r5
            com.google.android.gms.measurement.internal.zzx r0 = r0.zzt()
            r1 = r6
            java.lang.String r1 = r1.m2103c()
            com.google.android.gms.measurement.internal.zzel<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.zzap.zzcc
            boolean r0 = r0.zzd(r1, r2)
            if (r0 == 0) goto L_0x003d
            r0 = r6
            java.lang.String r0 = r0.m2090g()
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x0043
        L_0x003d:
            r0 = r6
            java.lang.String r0 = r0.m2093f()
            r9 = r0
        L_0x0043:
            r0 = r7
            com.google.android.gms.measurement.internal.zzel<java.lang.String> r1 = com.google.android.gms.measurement.internal.zzap.zze
            r2 = 0
            java.lang.Object r1 = r1.zza(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.scheme(r1)
            com.google.android.gms.measurement.internal.zzel<java.lang.String> r1 = com.google.android.gms.measurement.internal.zzap.zzf
            r2 = 0
            java.lang.Object r1 = r1.zza(r2)
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri$Builder r0 = r0.encodedAuthority(r1)
            r8 = r0
            r0 = r9
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r9 = r0
            r0 = r9
            int r0 = r0.length()
            if (r0 == 0) goto L_0x007b
            java.lang.String r0 = "config/app/"
            r1 = r9
            java.lang.String r0 = r0.concat(r1)
            r9 = r0
            goto L_0x0087
        L_0x007b:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            java.lang.String r2 = "config/app/"
            r1.<init>(r2)
            r9 = r0
        L_0x0087:
            r0 = r8
            r1 = r9
            android.net.Uri$Builder r0 = r0.path(r1)
            java.lang.String r1 = "app_instance_id"
            r2 = r6
            java.lang.String r2 = r2.m2099d()
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "platform"
            java.lang.String r2 = "android"
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            java.lang.String r1 = "gmp_version"
            r2 = r5
            long r2 = r2.zze()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)
            r0 = r7
            android.net.Uri r0 = r0.build()
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzx.zza(com.google.android.gms.measurement.internal.dy):java.lang.String");
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final boolean zza(zzel<Boolean> zzelVar) {
        return zzd(null, zzelVar);
    }

    public final int zzb(String str, zzel<Integer> zzelVar) {
        if (str != null) {
            String zza = this.f17314b.zza(str, zzelVar.zza());
            if (!TextUtils.isEmpty(zza)) {
                try {
                    return zzelVar.zza(Integer.valueOf(Integer.parseInt(zza))).intValue();
                } catch (NumberFormatException e) {
                }
            }
        }
        return zzelVar.zza(null).intValue();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final double zzc(String str, zzel<Double> zzelVar) {
        if (str != null) {
            String zza = this.f17314b.zza(str, zzelVar.zza());
            if (!TextUtils.isEmpty(zza)) {
                try {
                    return zzelVar.zza(Double.valueOf(Double.parseDouble(zza))).doubleValue();
                } catch (NumberFormatException e) {
                }
            }
        }
        return zzelVar.zza(null).doubleValue();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final boolean zzd(String str) {
        return "1".equals(this.f17314b.zza(str, "gaia_collection_enabled"));
    }

    public final boolean zzd(String str, zzel<Boolean> zzelVar) {
        Boolean zza;
        if (str != null) {
            String zza2 = this.f17314b.zza(str, zzelVar.zza());
            if (!TextUtils.isEmpty(zza2)) {
                zza = zzelVar.zza(Boolean.valueOf(Boolean.parseBoolean(zza2)));
                return zza.booleanValue();
            }
        }
        zza = zzelVar.zza(null);
        return zza.booleanValue();
    }

    public final long zze() {
        zzu();
        return 19000L;
    }

    public final boolean zze(String str) {
        return "1".equals(this.f17314b.zza(str, "measurement.event_sampling_enabled"));
    }

    public final boolean zze(String str, zzel<Boolean> zzelVar) {
        return zzd(str, zzelVar);
    }

    public final boolean zzf() {
        if (this.f17315c == null) {
            synchronized (this) {
                if (this.f17315c == null) {
                    ApplicationInfo applicationInfo = zzn().getApplicationInfo();
                    String myProcessName = ProcessUtils.getMyProcessName();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f17315c = Boolean.valueOf(str != null && str.equals(myProcessName));
                    }
                    if (this.f17315c == null) {
                        this.f17315c = Boolean.TRUE;
                        zzr().zzf().zza("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f17315c.booleanValue();
    }

    public final boolean zzg() {
        zzu();
        Boolean a = m1599a("firebase_analytics_collection_deactivated");
        return a != null && a.booleanValue();
    }

    public final Boolean zzh() {
        zzu();
        return m1599a("firebase_analytics_collection_enabled");
    }

    public final Boolean zzi() {
        zzb();
        Boolean a = m1599a("google_analytics_adid_collection_enabled");
        return Boolean.valueOf(a == null || a.booleanValue());
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

    public final String zzv() {
        return m1598a("debug.firebase.analytics.app", "");
    }

    public final String zzw() {
        return m1598a("debug.deferred.deeplink", "");
    }
}
