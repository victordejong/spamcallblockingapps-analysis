package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzza;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzza.class */
public abstract class zzza<M extends zzza<M>> extends zzzg {
    protected zzzc zzcfc;

    @Override // com.google.android.gms.internal.measurement.zzzg
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzza zzzaVar = (zzza) super.clone();
        zzze.zza(this, zzzaVar);
        return zzzaVar;
    }

    public final <T> T zza(zzzb<M, T> zzzbVar) {
        zzzd zzcb;
        if (this.zzcfc == null || (zzcb = this.zzcfc.zzcb(zzzbVar.tag >>> 3)) == null) {
            return null;
        }
        return (T) zzcb.zzb(zzzbVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public void zza(zzyy zzyyVar) throws IOException {
        if (this.zzcfc != null) {
            for (int i = 0; i < this.zzcfc.size(); i++) {
                this.zzcfc.zzcc(i).zza(zzyyVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zza(zzyx zzyxVar, int i) throws IOException {
        int position = zzyxVar.getPosition();
        if (!zzyxVar.zzao(i)) {
            return false;
        }
        int i2 = i >>> 3;
        zzzi zzziVar = new zzzi(i, zzyxVar.zzs(position, zzyxVar.getPosition() - position));
        zzzd zzzdVar = null;
        if (this.zzcfc == null) {
            this.zzcfc = new zzzc();
        } else {
            zzzdVar = this.zzcfc.zzcb(i2);
        }
        zzzd zzzdVar2 = zzzdVar;
        if (zzzdVar == null) {
            zzzdVar2 = new zzzd();
            this.zzcfc.zza(i2, zzzdVar2);
        }
        zzzdVar2.zza(zzziVar);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzzg
    public int zzf() {
        int i;
        int i2 = 0;
        if (this.zzcfc != null) {
            int i3 = 0;
            while (true) {
                i = i3;
                if (i2 >= this.zzcfc.size()) {
                    break;
                }
                i3 += this.zzcfc.zzcc(i2).zzf();
                i2++;
            }
        } else {
            i = 0;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zzyu() throws CloneNotSupportedException {
        return (zzza) clone();
    }
}
