package com.google.firebase.iid;

import android.content.Intent;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzc.class */
final class zzc implements Runnable {
    private final /* synthetic */ Intent zzm;
    private final /* synthetic */ Intent zzn;
    private final /* synthetic */ zzb zzo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(zzb zzbVar, Intent intent, Intent intent2) {
        this.zzo = zzbVar;
        this.zzm = intent;
        this.zzn = intent2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzo.zzd(this.zzm);
        this.zzo.zza(this.zzn);
    }
}
