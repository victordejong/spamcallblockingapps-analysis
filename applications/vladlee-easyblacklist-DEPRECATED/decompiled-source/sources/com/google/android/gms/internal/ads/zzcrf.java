package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrf.class */
public final class zzcrf implements zzcub<zzcrc> {

    /* renamed from: a */
    private final zzdhd f13777a;

    /* renamed from: b */
    private final Context f13778b;

    public zzcrf(zzdhd zzdhdVar, Context context) {
        this.f13777a = zzdhdVar;
        this.f13778b = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcrc m3702a() {
        AudioManager audioManager = (AudioManager) this.f13778b.getSystemService("audio");
        return new zzcrc(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzq.zzkv().zzpe(), zzq.zzkv().zzpf());
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcrc> zzanc() {
        return this.f13777a.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.vz

            /* renamed from: a */
            private final zzcrf f10639a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10639a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10639a.m3702a();
            }
        });
    }
}
