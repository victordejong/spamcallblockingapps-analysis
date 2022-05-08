package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzdx;
import com.privacystar.core.util.DateUtil;
import com.privacystar.core.util.pdus.PduHeaders;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeq.class */
public final class zzeq extends zzf {
    private Handler handler;
    private final zzv zzasx = new zzer(this, this.zzadj);
    private final zzv zzasy = new zzes(this, this.zzadj);
    @VisibleForTesting
    private long zzasw = zzbx().elapsedRealtime();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeq(zzbt zzbtVar) {
        super(zzbtVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzal(long j) {
        zzaf();
        zzli();
        zzgo().zzjl().zzg("Activity resumed, time", Long.valueOf(j));
        this.zzasw = j;
        if (zzgq().zzbj(zzgf().zzal())) {
            zzam(zzbx().currentTimeMillis());
            return;
        }
        this.zzasx.cancel();
        this.zzasy.cancel();
        if (zzbx().currentTimeMillis() - zzgp().zzanq.get() > zzgp().zzant.get()) {
            zzgp().zzanr.set(true);
            zzgp().zzanu.set(0L);
        }
        if (zzgp().zzanr.get()) {
            this.zzasx.zzh(Math.max(0L, zzgp().zzanp.get() - zzgp().zzanu.get()));
        } else {
            this.zzasy.zzh(Math.max(0L, DateUtil.HOUR_IN_MILLIS - zzgp().zzanu.get()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzan(long j) {
        zzaf();
        zzli();
        this.zzasx.cancel();
        this.zzasy.cancel();
        zzgo().zzjl().zzg("Activity paused, time", Long.valueOf(j));
        if (this.zzasw != 0) {
            zzgp().zzanu.set(zzgp().zzanu.get() + (j - this.zzasw));
        }
    }

    @WorkerThread
    private final void zzao(long j) {
        zzaf();
        zzgo().zzjl().zzg("Session started, time", Long.valueOf(zzbx().elapsedRealtime()));
        if (zzgq().zzbi(zzgf().zzal())) {
            zzge().zza(PduHeaders.MESSAGE_CLASS_AUTO_STR, "_sid", Long.valueOf(j / 1000), j);
        } else {
            zzge().zza(PduHeaders.MESSAGE_CLASS_AUTO_STR, "_sid", (Object) null, j);
        }
        zzgp().zzanr.set(false);
        Bundle bundle = new Bundle();
        if (zzgq().zzbi(zzgf().zzal())) {
            bundle.putLong("_sid", j / 1000);
        }
        zzge().zza(PduHeaders.MESSAGE_CLASS_AUTO_STR, "_s", j, bundle);
        zzgp().zzant.set(j);
    }

    private final void zzli() {
        synchronized (this) {
            if (this.handler == null) {
                this.handler = new zzdx(Looper.getMainLooper());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void zzll() {
        zzaf();
        zzn(false);
        zzgd().zzq(zzbx().elapsedRealtime());
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzaf() {
        super.zzaf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void zzam(long j) {
        zzaf();
        zzli();
        this.zzasx.cancel();
        this.zzasy.cancel();
        if (j - zzgp().zzanq.get() > zzgp().zzant.get()) {
            zzgp().zzanr.set(true);
            zzgp().zzanu.set(0L);
        }
        if (zzgp().zzanr.get()) {
            zzao(j);
        } else {
            this.zzasy.zzh(Math.max(0L, DateUtil.HOUR_IN_MILLIS - zzgp().zzanu.get()));
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zze, com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgc() {
        super.zzgc();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zza zzgd() {
        return super.zzgd();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzcs zzge() {
        return super.zzge();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzaj zzgf() {
        return super.zzgf();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdr zzgg() {
        return super.zzgg();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzdo zzgh() {
        return super.zzgh();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzal zzgi() {
        return super.zzgi();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    public final /* bridge */ /* synthetic */ zzeq zzgj() {
        return super.zzgj();
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

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzgt() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzlj() {
        this.zzasx.cancel();
        this.zzasy.cancel();
        this.zzasw = 0L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    @VisibleForTesting
    public final void zzlk() {
        zzaf();
        zzao(zzbx().currentTimeMillis());
    }

    @WorkerThread
    public final boolean zzn(boolean z) {
        zzaf();
        zzcl();
        long elapsedRealtime = zzbx().elapsedRealtime();
        zzgp().zzant.set(zzbx().currentTimeMillis());
        long j = elapsedRealtime - this.zzasw;
        if (z || j >= 1000) {
            zzgp().zzanu.set(j);
            zzgo().zzjl().zzg("Recording user engagement, ms", Long.valueOf(j));
            Bundle bundle = new Bundle();
            bundle.putLong("_et", j);
            zzdo.zza(zzgh().zzla(), bundle, true);
            zzge().logEvent(PduHeaders.MESSAGE_CLASS_AUTO_STR, "_e", bundle);
            this.zzasw = elapsedRealtime;
            this.zzasy.cancel();
            this.zzasy.zzh(Math.max(0L, DateUtil.HOUR_IN_MILLIS - zzgp().zzanu.get()));
            return true;
        }
        zzgo().zzjl().zzg("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j));
        return false;
    }
}
