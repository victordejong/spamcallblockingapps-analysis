package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzso;
import com.google.android.gms.internal.ads.zzsy;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcik.class */
public final class zzcik {

    /* renamed from: a */
    private zzsm f13183a;

    /* renamed from: b */
    private Context f13184b;

    /* renamed from: c */
    private zzcht f13185c;

    /* renamed from: d */
    private zzazb f13186d;

    public zzcik(Context context, zzazb zzazbVar, zzsm zzsmVar, zzcht zzchtVar) {
        this.f13184b = context;
        this.f13186d = zzazbVar;
        this.f13183a = zzsmVar;
        this.f13185c = zzchtVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ Void m3761a(SQLiteDatabase sQLiteDatabase) {
        ArrayList<zzsy.zzj.zza> zza = zzcih.zza(sQLiteDatabase);
        int i = 0;
        final zzsy.zzj zzjVar = (zzsy.zzj) ((zzdrt) zzsy.zzj.zzno().zzca(this.f13184b.getPackageName()).zzcb(Build.MODEL).zzcd(zzcih.zza(sQLiteDatabase, 0)).zzc(zza).zzce(zzcih.zza(sQLiteDatabase, 1)).zzes(zzq.zzkx().currentTimeMillis()).zzet(zzcih.zzb(sQLiteDatabase, 2)).zzbaf());
        ArrayList<zzsy.zzj.zza> arrayList = zza;
        int size = arrayList.size();
        int i2 = 0;
        long j = 0;
        while (i2 < size) {
            zzsy.zzj.zza zzaVar = arrayList.get(i2);
            int i3 = i2 + 1;
            zzsy.zzj.zza zzaVar2 = zzaVar;
            i2 = i3;
            if (zzaVar2.zznq() == zzte.ENUM_TRUE) {
                i2 = i3;
                if (zzaVar2.getTimestamp() > j) {
                    j = zzaVar2.getTimestamp();
                    i2 = i3;
                }
            }
        }
        if (j != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, Long.valueOf(j));
            sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = 'last_successful_request_time'", null);
        }
        this.f13183a.zza(new zzsp(zzjVar) { // from class: com.google.android.gms.internal.ads.sq

            /* renamed from: a */
            private final zzsy.zzj f10468a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10468a = zzjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                zztuVar.zzcaz = this.f10468a;
            }
        });
        final zztt zzttVar = new zztt();
        zzttVar.zzcam = Integer.valueOf(this.f13186d.zzdvz);
        zzttVar.zzcan = Integer.valueOf(this.f13186d.zzdwa);
        if (!this.f13186d.zzdwb) {
            i = 2;
        }
        zzttVar.zzcao = Integer.valueOf(i);
        this.f13183a.zza(new zzsp(zzttVar) { // from class: com.google.android.gms.internal.ads.sp

            /* renamed from: a */
            private final zztt f10467a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10467a = zzttVar;
            }

            @Override // com.google.android.gms.internal.ads.zzsp
            public final void zza(zztu zztuVar) {
                zztuVar.zzcav.zzcah = this.f10467a;
            }
        });
        this.f13183a.zza(zzso.zza.EnumC3503zza.OFFLINE_UPLOAD);
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues2, "statistic_name = ?", new String[]{"failed_requests"});
        ContentValues contentValues3 = new ContentValues();
        contentValues3.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues3, "statistic_name = ?", new String[]{"total_requests"});
        return null;
    }

    public final void zzamc() {
        try {
            this.f13185c.zza(new zzdby(this) { // from class: com.google.android.gms.internal.ads.so

                /* renamed from: a */
                private final zzcik f10466a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10466a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdby
                public final Object apply(Object obj) {
                    return this.f10466a.m3761a((SQLiteDatabase) obj);
                }
            });
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzavs.zzex(valueOf.length() != 0 ? "Error in offline signals database startup: ".concat(valueOf) : new String("Error in offline signals database startup: "));
        }
    }
}
