package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/asr.class */
public final class asr implements zzabo {

    /* renamed from: a */
    private final /* synthetic */ zzzj f8263a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public asr(zzzj zzzjVar) {
        this.f8263a = zzzjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final String get(String str, String str2) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f8263a.f15706e;
        return sharedPreferences.getString(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final Long getLong(String str, long j) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        try {
            sharedPreferences2 = this.f8263a.f15706e;
            return Long.valueOf(sharedPreferences2.getLong(str, j));
        } catch (ClassCastException e) {
            sharedPreferences = this.f8263a.f15706e;
            return Long.valueOf(sharedPreferences.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final Double zza(String str, double d) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f8263a.f15706e;
        return Double.valueOf(sharedPreferences.getFloat(str, (float) d));
    }

    @Override // com.google.android.gms.internal.ads.zzabo
    public final Boolean zze(String str, boolean z) {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f8263a.f15706e;
        return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
    }
}
