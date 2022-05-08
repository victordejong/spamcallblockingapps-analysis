package com.google.android.gms.iid;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzj.class */
public final class zzj implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzg f7786f;

    /* renamed from: g */
    private final /* synthetic */ zzi f7787g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zzi zziVar, zzg zzgVar) {
        this.f7787g = zziVar;
        this.f7786f = zzgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zze zzeVar;
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "bg processing of the intent starting now");
        }
        zzeVar = this.f7787g.f7785a;
        zzeVar.handleIntent(this.f7786f.f7779a);
        this.f7786f.m14144a();
    }
}
