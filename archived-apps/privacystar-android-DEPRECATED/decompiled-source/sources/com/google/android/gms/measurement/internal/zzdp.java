package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.privacystar.core.util.pdus.PduHeaders;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdp.class */
public final class zzdp implements Runnable {
    private final /* synthetic */ boolean zzaru;
    private final /* synthetic */ zzdn zzarv;
    private final /* synthetic */ zzdn zzarw;
    private final /* synthetic */ zzdo zzarx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdp(zzdo zzdoVar, boolean z, zzdn zzdnVar, zzdn zzdnVar2) {
        this.zzarx = zzdoVar;
        this.zzaru = z;
        this.zzarv = zzdnVar;
        this.zzarw = zzdnVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzaru && this.zzarx.zzaro != null) {
            this.zzarx.zza(this.zzarx.zzaro);
        }
        if (this.zzarv == null || this.zzarv.zzarm != this.zzarw.zzarm || !zzfk.zzu(this.zzarv.zzarl, this.zzarw.zzarl) || !zzfk.zzu(this.zzarv.zzuw, this.zzarw.zzuw)) {
            Bundle bundle = new Bundle();
            zzdo.zza(this.zzarw, bundle, true);
            if (this.zzarv != null) {
                if (this.zzarv.zzuw != null) {
                    bundle.putString("_pn", this.zzarv.zzuw);
                }
                bundle.putString("_pc", this.zzarv.zzarl);
                bundle.putLong("_pi", this.zzarv.zzarm);
            }
            this.zzarx.zzge().zza(PduHeaders.MESSAGE_CLASS_AUTO_STR, "_vs", bundle);
        }
        this.zzarx.zzaro = this.zzarw;
        this.zzarx.zzgg().zzb(this.zzarw);
    }
}
