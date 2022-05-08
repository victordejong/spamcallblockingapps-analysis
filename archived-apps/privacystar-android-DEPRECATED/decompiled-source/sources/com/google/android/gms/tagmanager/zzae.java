package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.measurement.zzo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzae.class */
public final class zzae implements zzdh<zzo> {
    private final /* synthetic */ zzy zzbai;

    private zzae(zzy zzyVar) {
        this.zzbai = zzyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzae(zzy zzyVar, zzz zzzVar) {
        this(zzyVar);
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final /* synthetic */ void onSuccess(zzo zzoVar) {
        zzai zzaiVar;
        Clock clock;
        long j;
        boolean zznn;
        zzo zzoVar2;
        zzo zzoVar3;
        zzai zzaiVar2;
        zzo zzoVar4 = zzoVar;
        zzaiVar = this.zzbai.zzazz;
        zzaiVar.zznt();
        synchronized (this.zzbai) {
            if (zzoVar4.zzqg == null) {
                zzoVar2 = this.zzbai.zzbae;
                if (zzoVar2.zzqg == null) {
                    zzdi.m329e("Current resource is null; network resource is also null");
                    zzaiVar2 = this.zzbai.zzazz;
                    this.zzbai.zzap(zzaiVar2.zznr());
                    return;
                }
                zzoVar3 = this.zzbai.zzbae;
                zzoVar4.zzqg = zzoVar3.zzqg;
            }
            zzy zzyVar = this.zzbai;
            clock = this.zzbai.zzrz;
            zzyVar.zza(zzoVar4, clock.currentTimeMillis(), false);
            j = this.zzbai.zzazk;
            StringBuilder sb = new StringBuilder(58);
            sb.append("setting refresh time to current time: ");
            sb.append(j);
            zzdi.m328v(sb.toString());
            zznn = this.zzbai.zznn();
            if (!zznn) {
                this.zzbai.zza(zzoVar4);
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final void zzno() {
    }

    @Override // com.google.android.gms.tagmanager.zzdh
    public final void zzt(int i) {
        zzai zzaiVar;
        zzv zzvVar;
        zzv zzvVar2;
        zzai zzaiVar2;
        if (i == zzcz.zzbcx) {
            zzaiVar2 = this.zzbai.zzazz;
            zzaiVar2.zzns();
        }
        synchronized (this.zzbai) {
            if (!this.zzbai.isReady()) {
                zzvVar = this.zzbai.zzbac;
                if (zzvVar != null) {
                    zzy zzyVar = this.zzbai;
                    zzvVar2 = this.zzbai.zzbac;
                    zzyVar.setResult(zzvVar2);
                } else {
                    this.zzbai.setResult(this.zzbai.createFailedResult(Status.RESULT_TIMEOUT));
                }
            }
        }
        zzaiVar = this.zzbai.zzazz;
        this.zzbai.zzap(zzaiVar.zznr());
    }
}
