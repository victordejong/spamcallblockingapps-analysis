package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzsy;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.sn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sn.class */
public final class C2227sn implements zzdgt<Bundle> {

    /* renamed from: a */
    final /* synthetic */ zzcid f10464a;

    /* renamed from: b */
    private final /* synthetic */ boolean f10465b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2227sn(zzcid zzcidVar, boolean z) {
        this.f10464a = zzcidVar;
        this.f10465b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(Bundle bundle) {
        final zzsy.zzj.zzc zzcVar;
        zzcht zzchtVar;
        Bundle bundle2 = bundle;
        final ArrayList a = zzcid.m3768a(bundle2);
        zzcVar = zzcid.f13171g.get(zzdaa.zza(zzdaa.zza(bundle2, "device"), "network").getInt("active_network_state", -1), zzsy.zzj.zzc.UNSPECIFIED);
        final zzsy.zzh a2 = zzcid.m3766a(this.f10464a, bundle2);
        zzchtVar = this.f10464a.f13176e;
        final boolean z = this.f10465b;
        zzchtVar.zza(new zzdby(this, z, a, a2, zzcVar) { // from class: com.google.android.gms.internal.ads.sm

            /* renamed from: a */
            private final C2227sn f10459a;

            /* renamed from: b */
            private final boolean f10460b;

            /* renamed from: c */
            private final ArrayList f10461c;

            /* renamed from: d */
            private final zzsy.zzh f10462d;

            /* renamed from: e */
            private final zzsy.zzj.zzc f10463e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10459a = this;
                this.f10460b = z;
                this.f10461c = a;
                this.f10462d = a2;
                this.f10463e = zzcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdby
            public final Object apply(Object obj) {
                C2227sn snVar = this.f10459a;
                boolean z2 = this.f10460b;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                byte[] a3 = zzcid.m3765a(snVar.f10464a, z2, this.f10461c, this.f10462d, this.f10463e);
                ContentValues contentValues = new ContentValues();
                contentValues.put("timestamp", Long.valueOf(zzq.zzkx().currentTimeMillis()));
                contentValues.put("serialized_proto_data", a3);
                sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
                sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
                if (z2) {
                    return null;
                }
                sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        zzavs.zzex("Failed to get signals bundle");
    }
}
