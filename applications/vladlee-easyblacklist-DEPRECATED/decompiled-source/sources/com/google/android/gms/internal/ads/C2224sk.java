package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: com.google.android.gms.internal.ads.sk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/sk.class */
final class C2224sk implements zzdgt<SQLiteDatabase> {

    /* renamed from: a */
    private final /* synthetic */ zzdby f10457a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2224sk(zzdby zzdbyVar) {
        this.f10457a = zzdbyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final /* synthetic */ void onSuccess(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f10457a.apply(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzavs.zzex(valueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(valueOf) : new String("Error executing function on offline signal database: "));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgt
    public final void zzb(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        zzavs.zzex(valueOf.length() != 0 ? "Failed to get offline signal database: ".concat(valueOf) : new String("Failed to get offline signal database: "));
    }
}
