package com.google.android.gms.analytics.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.a.d;
import com.google.android.gms.common.a.e;
import com.google.android.gms.common.internal.b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzg.class */
public class zzg {

    /* renamed from: a  reason: collision with root package name */
    private final Context f3859a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3860b;

    public zzg(Context context) {
        b.a(context);
        Context applicationContext = context.getApplicationContext();
        b.a(applicationContext, "Application context can't be null");
        this.f3859a = applicationContext;
        this.f3860b = applicationContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a b(zzf zzfVar) {
        return new a(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final e a(zzf zzfVar) {
        return new e(zzfVar, this);
    }

    public Context getApplicationContext() {
        return this.f3859a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzi zzY(Context context) {
        return zzi.zzW(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzu zza(zzf zzfVar) {
        return new zzu(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzk zzb(zzf zzfVar) {
        return new zzk(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zza zzc(zzf zzfVar) {
        return new zza(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzn zzd(zzf zzfVar) {
        return new zzn(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzap zze(zzf zzfVar) {
        return new zzap(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaf zzf(zzf zzfVar) {
        return new zzaf(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzr zzg(zzf zzfVar) {
        return new zzr(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d zzh(zzf zzfVar) {
        return e.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GoogleAnalytics zzi(zzf zzfVar) {
        return new GoogleAnalytics(zzfVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzb zzl(zzf zzfVar) {
        return new zzb(zzfVar, this);
    }

    public d zzm(zzf zzfVar) {
        return new d(zzfVar);
    }

    public Context zzmc() {
        return this.f3860b;
    }

    public b zzn(zzf zzfVar) {
        return new b(zzfVar);
    }

    public zzi zzo(zzf zzfVar) {
        return new zzi(zzfVar);
    }

    public zzv zzp(zzf zzfVar) {
        return new zzv(zzfVar);
    }

    public zzai zzq(zzf zzfVar) {
        return new zzai(zzfVar);
    }
}
