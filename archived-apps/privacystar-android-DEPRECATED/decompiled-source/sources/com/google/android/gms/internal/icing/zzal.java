package com.google.android.gms.internal.icing;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzal.class */
public final class zzal extends zzfu<zzal> {
    private static volatile zzal[] zzaz;
    public String zzba = "";
    public String zzbb = "";
    public int viewId = 0;

    public zzal() {
        this.zznv = null;
        this.zzoe = -1;
    }

    public static zzal[] zzf() {
        if (zzaz == null) {
            synchronized (zzfy.zzod) {
                if (zzaz == null) {
                    zzaz = new zzal[0];
                }
            }
        }
        return zzaz;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzal)) {
            return false;
        }
        zzal zzalVar = (zzal) obj;
        if (this.zzba == null) {
            if (zzalVar.zzba != null) {
                return false;
            }
        } else if (!this.zzba.equals(zzalVar.zzba)) {
            return false;
        }
        if (this.zzbb == null) {
            if (zzalVar.zzbb != null) {
                return false;
            }
        } else if (!this.zzbb.equals(zzalVar.zzbb)) {
            return false;
        }
        if (this.viewId != zzalVar.viewId) {
            return false;
        }
        return (this.zznv == null || this.zznv.isEmpty()) ? zzalVar.zznv == null || zzalVar.zznv.isEmpty() : this.zznv.equals(zzalVar.zznv);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzba == null ? 0 : this.zzba.hashCode();
        int hashCode3 = this.zzbb == null ? 0 : this.zzbb.hashCode();
        int i = this.viewId;
        int i2 = 0;
        if (this.zznv != null) {
            i2 = this.zznv.isEmpty() ? 0 : this.zznv.hashCode();
        }
        return ((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + i) * 31) + i2;
    }

    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final void zza(zzfs zzfsVar) throws IOException {
        if (this.zzba != null && !this.zzba.equals("")) {
            zzfsVar.zza(1, this.zzba);
        }
        if (this.zzbb != null && !this.zzbb.equals("")) {
            zzfsVar.zza(2, this.zzbb);
        }
        if (this.viewId != 0) {
            int i = this.viewId;
            zzfsVar.zzb(3, 0);
            if (i >= 0) {
                zzfsVar.zzak(i);
            } else {
                zzfsVar.zzl(i);
            }
        }
        super.zza(zzfsVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.icing.zzfu, com.google.android.gms.internal.icing.zzfz
    public final int zze() {
        int zze = super.zze();
        int i = zze;
        if (this.zzba != null) {
            i = zze;
            if (!this.zzba.equals("")) {
                i = zze + zzfs.zzb(1, this.zzba);
            }
        }
        int i2 = i;
        if (this.zzbb != null) {
            i2 = i;
            if (!this.zzbb.equals("")) {
                i2 = i + zzfs.zzb(2, this.zzbb);
            }
        }
        int i3 = i2;
        if (this.viewId != 0) {
            int i4 = this.viewId;
            i3 = i2 + zzfs.zzp(3) + (i4 >= 0 ? zzfs.zzx(i4) : 10);
        }
        return i3;
    }
}
