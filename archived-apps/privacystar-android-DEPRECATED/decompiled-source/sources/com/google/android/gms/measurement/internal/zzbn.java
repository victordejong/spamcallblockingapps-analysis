package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.support.annotation.WorkerThread;
import android.support.p001v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzfu;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzfw;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzga;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgc;
import com.google.android.gms.internal.measurement.zzyx;
import com.google.android.gms.internal.measurement.zzyy;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbn.class */
public final class zzbn extends zzez implements zzp {
    @VisibleForTesting
    private static int zzaon = 65535;
    @VisibleForTesting
    private static int zzaoo = 2;
    private final Map<String, Map<String, String>> zzaop = new ArrayMap();
    private final Map<String, Map<String, Boolean>> zzaoq = new ArrayMap();
    private final Map<String, Map<String, Boolean>> zzaor = new ArrayMap();
    private final Map<String, zzgb> zzaos = new ArrayMap();
    private final Map<String, String> zzaou = new ArrayMap();
    private final Map<String, Map<String, Integer>> zzaot = new ArrayMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbn(zzfa zzfaVar) {
        super(zzfaVar);
    }

    @WorkerThread
    private final zzgb zza(String str, byte[] bArr) {
        if (bArr == null) {
            return new zzgb();
        }
        zzyx zzj = zzyx.zzj(bArr, 0, bArr.length);
        zzgb zzgbVar = new zzgb();
        try {
            zzgbVar.zza(zzj);
            zzgo().zzjl().zze("Parsed config. version, gmp_app_id", zzgbVar.zzawe, zzgbVar.zzafx);
            return zzgbVar;
        } catch (IOException e) {
            zzgo().zzjg().zze("Unable to merge remote config. appId", zzap.zzbv(str), e);
            return new zzgb();
        }
    }

    private static Map<String, String> zza(zzgb zzgbVar) {
        zzgc[] zzgcVarArr;
        ArrayMap arrayMap = new ArrayMap();
        if (!(zzgbVar == null || zzgbVar.zzawg == null)) {
            for (zzgc zzgcVar : zzgbVar.zzawg) {
                if (zzgcVar != null) {
                    arrayMap.put(zzgcVar.zzoj, zzgcVar.value);
                }
            }
        }
        return arrayMap;
    }

    private final void zza(String str, zzgb zzgbVar) {
        zzga[] zzgaVarArr;
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (!(zzgbVar == null || zzgbVar.zzawh == null)) {
            for (zzga zzgaVar : zzgbVar.zzawh) {
                if (TextUtils.isEmpty(zzgaVar.name)) {
                    zzgo().zzjg().zzbx("EventConfig contained null event name");
                } else {
                    String zzal = AppMeasurement.Event.zzal(zzgaVar.name);
                    if (!TextUtils.isEmpty(zzal)) {
                        zzgaVar.name = zzal;
                    }
                    arrayMap.put(zzgaVar.name, zzgaVar.zzawb);
                    arrayMap2.put(zzgaVar.name, zzgaVar.zzawc);
                    if (zzgaVar.zzawd != null) {
                        if (zzgaVar.zzawd.intValue() < zzaoo || zzgaVar.zzawd.intValue() > zzaon) {
                            zzgo().zzjg().zze("Invalid sampling rate. Event name, sample rate", zzgaVar.name, zzgaVar.zzawd);
                        } else {
                            arrayMap3.put(zzgaVar.name, zzgaVar.zzawd);
                        }
                    }
                }
            }
        }
        this.zzaoq.put(str, arrayMap);
        this.zzaor.put(str, arrayMap2);
        this.zzaot.put(str, arrayMap3);
    }

    @WorkerThread
    private final void zzce(String str) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        if (this.zzaos.get(str) == null) {
            byte[] zzbn = zzjq().zzbn(str);
            if (zzbn == null) {
                this.zzaop.put(str, null);
                this.zzaoq.put(str, null);
                this.zzaor.put(str, null);
                this.zzaos.put(str, null);
                this.zzaou.put(str, null);
                this.zzaot.put(str, null);
                return;
            }
            zzgb zza = zza(str, zzbn);
            this.zzaop.put(str, zza(zza));
            zza(str, zza);
            this.zzaos.put(str, zza);
            this.zzaou.put(str, null);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final boolean zza(String str, byte[] bArr, String str2) {
        ContentValues contentValues;
        zzfv[] zzfvVarArr;
        zzfy[] zzfyVarArr;
        zzfw[] zzfwVarArr;
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        zzgb zza = zza(str, bArr);
        if (zza == null) {
            return false;
        }
        zza(str, zza);
        this.zzaos.put(str, zza);
        this.zzaou.put(str, str2);
        this.zzaop.put(str, zza(zza));
        zzj zzjp = zzjp();
        zzfu[] zzfuVarArr = zza.zzawi;
        Preconditions.checkNotNull(zzfuVarArr);
        for (zzfu zzfuVar : zzfuVarArr) {
            for (zzfv zzfvVar : zzfuVar.zzava) {
                String zzal = AppMeasurement.Event.zzal(zzfvVar.zzavf);
                if (zzal != null) {
                    zzfvVar.zzavf = zzal;
                }
                for (zzfw zzfwVar : zzfvVar.zzavg) {
                    String zzal2 = AppMeasurement.Param.zzal(zzfwVar.zzavn);
                    if (zzal2 != null) {
                        zzfwVar.zzavn = zzal2;
                    }
                }
            }
            for (zzfy zzfyVar : zzfuVar.zzauz) {
                String zzal3 = AppMeasurement.UserProperty.zzal(zzfyVar.zzavu);
                if (zzal3 != null) {
                    zzfyVar.zzavu = zzal3;
                }
            }
        }
        zzjp.zzjq().zza(str, zzfuVarArr);
        try {
            zza.zzawi = null;
            byte[] bArr2 = new byte[zza.zzvu()];
            zza.zza(zzyy.zzk(bArr2, 0, bArr2.length));
            bArr = bArr2;
        } catch (IOException e) {
            zzgo().zzjg().zze("Unable to serialize reduced-size config. Storing full config instead. appId", zzap.zzbv(str), e);
        }
        zzq zzjq = zzjq();
        Preconditions.checkNotEmpty(str);
        zzjq.zzaf();
        zzjq.zzcl();
        new ContentValues().put("remote_config", bArr);
        try {
            if (zzjq.getWritableDatabase().update("apps", contentValues, "app_id = ?", new String[]{str}) != 0) {
                return true;
            }
            zzjq.zzgo().zzjd().zzg("Failed to update remote config (got 0). appId", zzap.zzbv(str));
            return true;
        } catch (SQLiteException e2) {
            zzjq.zzgo().zzjd().zze("Error storing remote config. appId", zzap.zzbv(str), e2);
            return true;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final zzgb zzcf(String str) {
        zzcl();
        zzaf();
        Preconditions.checkNotEmpty(str);
        zzce(str);
        return this.zzaos.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final String zzcg(String str) {
        zzaf();
        return this.zzaou.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final void zzch(String str) {
        zzaf();
        this.zzaou.put(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzci(String str) {
        zzaf();
        this.zzaos.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final long zzcj(String str) {
        String zzf = zzf(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(zzf)) {
            return 0L;
        }
        try {
            return Long.parseLong(zzf);
        } catch (NumberFormatException e) {
            zzgo().zzjg().zze("Unable to parse timezone offset. appId", zzap.zzbv(str), e);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzck(String str) {
        return "1".equals(zzf(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzcl(String str) {
        return "1".equals(zzf(str, "measurement.upload.blacklist_public"));
    }

    @Override // com.google.android.gms.measurement.internal.zzp
    @WorkerThread
    public final String zzf(String str, String str2) {
        zzaf();
        zzce(str);
        Map<String, String> map = this.zzaop.get(str);
        if (map != null) {
            return map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzez
    protected final boolean zzgt() {
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzfg zzjo() {
        return super.zzjo();
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzj zzjp() {
        return super.zzjp();
    }

    @Override // com.google.android.gms.measurement.internal.zzey
    public final /* bridge */ /* synthetic */ zzq zzjq() {
        return super.zzjq();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean zzo(String str, String str2) {
        Boolean bool;
        zzaf();
        zzce(str);
        if (zzck(str) && zzfk.zzcv(str2)) {
            return true;
        }
        if (zzcl(str) && zzfk.zzcq(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzaoq.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean zzp(String str, String str2) {
        Boolean bool;
        zzaf();
        zzce(str);
        if (FirebaseAnalytics.Event.ECOMMERCE_PURCHASE.equals(str2)) {
            return true;
        }
        Map<String, Boolean> map = this.zzaor.get(str);
        if (map == null || (bool = map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final int zzq(String str, String str2) {
        Integer num;
        zzaf();
        zzce(str);
        Map<String, Integer> map = this.zzaot.get(str);
        if (map == null || (num = map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }
}
