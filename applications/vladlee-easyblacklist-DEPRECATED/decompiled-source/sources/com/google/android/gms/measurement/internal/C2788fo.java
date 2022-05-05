package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzkt;
import com.google.android.gms.internal.measurement.zzlk;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fo.class */
public final class C2788fo implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final /* synthetic */ zzhb f16879a;

    private C2788fo(zzhb zzhbVar) {
        this.f16879a = zzhbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2788fo(zzhb zzhbVar, byte b) {
        this(zzhbVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x023e, code lost:
        if (r13.contains("utm_content") != false) goto L_0x0241;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d8 A[Catch: Exception -> 0x0270, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0270, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0024, B:10:0x003d, B:13:0x0051, B:15:0x005b, B:17:0x0065, B:19:0x006f, B:21:0x0079, B:22:0x0089, B:24:0x0098, B:25:0x00a4, B:27:0x00b1, B:30:0x00c4, B:34:0x00d8, B:37:0x00ed, B:39:0x0106, B:43:0x0115, B:45:0x011f, B:47:0x013a, B:50:0x014d, B:52:0x015f, B:56:0x0174, B:60:0x0182, B:63:0x018c, B:65:0x01a0, B:68:0x01a7, B:72:0x01cf, B:73:0x01de, B:75:0x01f0, B:78:0x0201, B:80:0x020b, B:82:0x0215, B:84:0x021f, B:86:0x0229, B:90:0x0237, B:96:0x0249, B:98:0x0259, B:100:0x0261), top: B:105:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015f A[Catch: Exception -> 0x0270, TRY_ENTER, TryCatch #0 {Exception -> 0x0270, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0024, B:10:0x003d, B:13:0x0051, B:15:0x005b, B:17:0x0065, B:19:0x006f, B:21:0x0079, B:22:0x0089, B:24:0x0098, B:25:0x00a4, B:27:0x00b1, B:30:0x00c4, B:34:0x00d8, B:37:0x00ed, B:39:0x0106, B:43:0x0115, B:45:0x011f, B:47:0x013a, B:50:0x014d, B:52:0x015f, B:56:0x0174, B:60:0x0182, B:63:0x018c, B:65:0x01a0, B:68:0x01a7, B:72:0x01cf, B:73:0x01de, B:75:0x01f0, B:78:0x0201, B:80:0x020b, B:82:0x0215, B:84:0x021f, B:86:0x0229, B:90:0x0237, B:96:0x0249, B:98:0x0259, B:100:0x0261), top: B:105:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01a6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a7 A[Catch: Exception -> 0x0270, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0270, blocks: (B:2:0x0000, B:4:0x0014, B:6:0x0024, B:10:0x003d, B:13:0x0051, B:15:0x005b, B:17:0x0065, B:19:0x006f, B:21:0x0079, B:22:0x0089, B:24:0x0098, B:25:0x00a4, B:27:0x00b1, B:30:0x00c4, B:34:0x00d8, B:37:0x00ed, B:39:0x0106, B:43:0x0115, B:45:0x011f, B:47:0x013a, B:50:0x014d, B:52:0x015f, B:56:0x0174, B:60:0x0182, B:63:0x018c, B:65:0x01a0, B:68:0x01a7, B:72:0x01cf, B:73:0x01de, B:75:0x01f0, B:78:0x0201, B:80:0x020b, B:82:0x0215, B:84:0x021f, B:86:0x0229, B:90:0x0237, B:96:0x0249, B:98:0x0259, B:100:0x0261), top: B:105:0x0000 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2049a(boolean r10, android.net.Uri r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2788fo.m2049a(boolean, android.net.Uri, java.lang.String, java.lang.String):void");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        Uri data;
        try {
            try {
                this.f16879a.zzr().zzx().zza("onActivityCreated");
                Intent intent = activity.getIntent();
                if (!(intent == null || (data = intent.getData()) == null || !data.isHierarchical())) {
                    this.f16879a.zzp();
                    String str = zzkm.m1641a(intent) ? "gs" : "auto";
                    String queryParameter = data.getQueryParameter("referrer");
                    boolean z = bundle == null;
                    if (!zzlk.zzb() || !zzap.zzbz.zza(null).booleanValue()) {
                        m2049a(z, data, str, queryParameter);
                    } else {
                        this.f16879a.zzq().zza(new RunnableC2787fn(this, z, data, str, queryParameter));
                    }
                }
            } catch (Exception e) {
                this.f16879a.zzr().zzf().zza("Throwable caught in onActivityCreated", e);
            }
        } finally {
            this.f16879a.zzi().zza(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f16879a.zzi().zzc(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f16879a.zzi().zzb(activity);
        zzjo zzk = this.f16879a.zzk();
        zzk.zzq().zza(new RunnableC2825gy(zzk, zzk.zzm().elapsedRealtime()));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        if (!zzkt.zzb() || !zzap.zzav.zza(null).booleanValue()) {
            this.f16879a.zzi().zza(activity);
            this.f16879a.zzk().m1733e();
            return;
        }
        this.f16879a.zzk().m1733e();
        this.f16879a.zzi().zza(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        this.f16879a.zzi().zzb(activity, bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
