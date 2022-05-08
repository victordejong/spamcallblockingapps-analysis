package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfq;
import com.privacystar.core.util.pdus.PduHeaders;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgi.class */
public final class zzgi extends zzza<zzgi> {
    private static volatile zzgi[] zzawz;
    public Integer zzaxa = null;
    public zzgf[] zzaxb = zzgf.zzmq();
    public zzgl[] zzaxc = zzgl.zzmu();
    public Long zzaxd = null;
    public Long zzaxe = null;
    public Long zzaxf = null;
    public Long zzaxg = null;
    public Long zzaxh = null;
    public String zzaxi = null;
    public String zzaxj = null;
    public String zzaxk = null;
    public String zzaia = null;
    public Integer zzaxl = null;
    public String zzage = null;
    public String zztt = null;
    public String zzts = null;
    public Long zzaxm = null;
    public Long zzaxn = null;
    public String zzaxo = null;
    public Boolean zzaxp = null;
    public String zzafw = null;
    public Long zzaxq = null;
    public Integer zzaxr = null;
    public String zzagv = null;
    public String zzafx = null;
    public Boolean zzaxs = null;
    public zzgd[] zzaxt = zzgd.zzmo();
    public String zzafz = null;
    public Integer zzaxu = null;
    private Integer zzaxv = null;
    private Integer zzaxw = null;
    public String zzaxx = null;
    public Long zzaxy = null;
    public Long zzaxz = null;
    public String zzaya = null;
    private String zzayb = null;
    public Integer zzayc = null;
    public String zzawj = null;
    private zzfq.zzb zzayd = null;

    public zzgi() {
        this.zzcfc = null;
        this.zzcfm = -1;
    }

    public static zzgi[] zzms() {
        if (zzawz == null) {
            synchronized (zzze.zzcfl) {
                if (zzawz == null) {
                    zzawz = new zzgi[0];
                }
            }
        }
        return zzawz;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzgi)) {
            return false;
        }
        zzgi zzgiVar = (zzgi) obj;
        if (this.zzaxa == null) {
            if (zzgiVar.zzaxa != null) {
                return false;
            }
        } else if (!this.zzaxa.equals(zzgiVar.zzaxa)) {
            return false;
        }
        if (!zzze.equals(this.zzaxb, zzgiVar.zzaxb) || !zzze.equals(this.zzaxc, zzgiVar.zzaxc)) {
            return false;
        }
        if (this.zzaxd == null) {
            if (zzgiVar.zzaxd != null) {
                return false;
            }
        } else if (!this.zzaxd.equals(zzgiVar.zzaxd)) {
            return false;
        }
        if (this.zzaxe == null) {
            if (zzgiVar.zzaxe != null) {
                return false;
            }
        } else if (!this.zzaxe.equals(zzgiVar.zzaxe)) {
            return false;
        }
        if (this.zzaxf == null) {
            if (zzgiVar.zzaxf != null) {
                return false;
            }
        } else if (!this.zzaxf.equals(zzgiVar.zzaxf)) {
            return false;
        }
        if (this.zzaxg == null) {
            if (zzgiVar.zzaxg != null) {
                return false;
            }
        } else if (!this.zzaxg.equals(zzgiVar.zzaxg)) {
            return false;
        }
        if (this.zzaxh == null) {
            if (zzgiVar.zzaxh != null) {
                return false;
            }
        } else if (!this.zzaxh.equals(zzgiVar.zzaxh)) {
            return false;
        }
        if (this.zzaxi == null) {
            if (zzgiVar.zzaxi != null) {
                return false;
            }
        } else if (!this.zzaxi.equals(zzgiVar.zzaxi)) {
            return false;
        }
        if (this.zzaxj == null) {
            if (zzgiVar.zzaxj != null) {
                return false;
            }
        } else if (!this.zzaxj.equals(zzgiVar.zzaxj)) {
            return false;
        }
        if (this.zzaxk == null) {
            if (zzgiVar.zzaxk != null) {
                return false;
            }
        } else if (!this.zzaxk.equals(zzgiVar.zzaxk)) {
            return false;
        }
        if (this.zzaia == null) {
            if (zzgiVar.zzaia != null) {
                return false;
            }
        } else if (!this.zzaia.equals(zzgiVar.zzaia)) {
            return false;
        }
        if (this.zzaxl == null) {
            if (zzgiVar.zzaxl != null) {
                return false;
            }
        } else if (!this.zzaxl.equals(zzgiVar.zzaxl)) {
            return false;
        }
        if (this.zzage == null) {
            if (zzgiVar.zzage != null) {
                return false;
            }
        } else if (!this.zzage.equals(zzgiVar.zzage)) {
            return false;
        }
        if (this.zztt == null) {
            if (zzgiVar.zztt != null) {
                return false;
            }
        } else if (!this.zztt.equals(zzgiVar.zztt)) {
            return false;
        }
        if (this.zzts == null) {
            if (zzgiVar.zzts != null) {
                return false;
            }
        } else if (!this.zzts.equals(zzgiVar.zzts)) {
            return false;
        }
        if (this.zzaxm == null) {
            if (zzgiVar.zzaxm != null) {
                return false;
            }
        } else if (!this.zzaxm.equals(zzgiVar.zzaxm)) {
            return false;
        }
        if (this.zzaxn == null) {
            if (zzgiVar.zzaxn != null) {
                return false;
            }
        } else if (!this.zzaxn.equals(zzgiVar.zzaxn)) {
            return false;
        }
        if (this.zzaxo == null) {
            if (zzgiVar.zzaxo != null) {
                return false;
            }
        } else if (!this.zzaxo.equals(zzgiVar.zzaxo)) {
            return false;
        }
        if (this.zzaxp == null) {
            if (zzgiVar.zzaxp != null) {
                return false;
            }
        } else if (!this.zzaxp.equals(zzgiVar.zzaxp)) {
            return false;
        }
        if (this.zzafw == null) {
            if (zzgiVar.zzafw != null) {
                return false;
            }
        } else if (!this.zzafw.equals(zzgiVar.zzafw)) {
            return false;
        }
        if (this.zzaxq == null) {
            if (zzgiVar.zzaxq != null) {
                return false;
            }
        } else if (!this.zzaxq.equals(zzgiVar.zzaxq)) {
            return false;
        }
        if (this.zzaxr == null) {
            if (zzgiVar.zzaxr != null) {
                return false;
            }
        } else if (!this.zzaxr.equals(zzgiVar.zzaxr)) {
            return false;
        }
        if (this.zzagv == null) {
            if (zzgiVar.zzagv != null) {
                return false;
            }
        } else if (!this.zzagv.equals(zzgiVar.zzagv)) {
            return false;
        }
        if (this.zzafx == null) {
            if (zzgiVar.zzafx != null) {
                return false;
            }
        } else if (!this.zzafx.equals(zzgiVar.zzafx)) {
            return false;
        }
        if (this.zzaxs == null) {
            if (zzgiVar.zzaxs != null) {
                return false;
            }
        } else if (!this.zzaxs.equals(zzgiVar.zzaxs)) {
            return false;
        }
        if (!zzze.equals(this.zzaxt, zzgiVar.zzaxt)) {
            return false;
        }
        if (this.zzafz == null) {
            if (zzgiVar.zzafz != null) {
                return false;
            }
        } else if (!this.zzafz.equals(zzgiVar.zzafz)) {
            return false;
        }
        if (this.zzaxu == null) {
            if (zzgiVar.zzaxu != null) {
                return false;
            }
        } else if (!this.zzaxu.equals(zzgiVar.zzaxu)) {
            return false;
        }
        if (this.zzaxv == null) {
            if (zzgiVar.zzaxv != null) {
                return false;
            }
        } else if (!this.zzaxv.equals(zzgiVar.zzaxv)) {
            return false;
        }
        if (this.zzaxw == null) {
            if (zzgiVar.zzaxw != null) {
                return false;
            }
        } else if (!this.zzaxw.equals(zzgiVar.zzaxw)) {
            return false;
        }
        if (this.zzaxx == null) {
            if (zzgiVar.zzaxx != null) {
                return false;
            }
        } else if (!this.zzaxx.equals(zzgiVar.zzaxx)) {
            return false;
        }
        if (this.zzaxy == null) {
            if (zzgiVar.zzaxy != null) {
                return false;
            }
        } else if (!this.zzaxy.equals(zzgiVar.zzaxy)) {
            return false;
        }
        if (this.zzaxz == null) {
            if (zzgiVar.zzaxz != null) {
                return false;
            }
        } else if (!this.zzaxz.equals(zzgiVar.zzaxz)) {
            return false;
        }
        if (this.zzaya == null) {
            if (zzgiVar.zzaya != null) {
                return false;
            }
        } else if (!this.zzaya.equals(zzgiVar.zzaya)) {
            return false;
        }
        if (this.zzayb == null) {
            if (zzgiVar.zzayb != null) {
                return false;
            }
        } else if (!this.zzayb.equals(zzgiVar.zzayb)) {
            return false;
        }
        if (this.zzayc == null) {
            if (zzgiVar.zzayc != null) {
                return false;
            }
        } else if (!this.zzayc.equals(zzgiVar.zzayc)) {
            return false;
        }
        if (this.zzawj == null) {
            if (zzgiVar.zzawj != null) {
                return false;
            }
        } else if (!this.zzawj.equals(zzgiVar.zzawj)) {
            return false;
        }
        if (this.zzayd == null) {
            if (zzgiVar.zzayd != null) {
                return false;
            }
        } else if (!this.zzayd.equals(zzgiVar.zzayd)) {
            return false;
        }
        return (this.zzcfc == null || this.zzcfc.isEmpty()) ? zzgiVar.zzcfc == null || zzgiVar.zzcfc.isEmpty() : this.zzcfc.equals(zzgiVar.zzcfc);
    }

    public final int hashCode() {
        int hashCode = getClass().getName().hashCode();
        int hashCode2 = this.zzaxa == null ? 0 : this.zzaxa.hashCode();
        int hashCode3 = zzze.hashCode(this.zzaxb);
        int hashCode4 = zzze.hashCode(this.zzaxc);
        int hashCode5 = this.zzaxd == null ? 0 : this.zzaxd.hashCode();
        int hashCode6 = this.zzaxe == null ? 0 : this.zzaxe.hashCode();
        int hashCode7 = this.zzaxf == null ? 0 : this.zzaxf.hashCode();
        int hashCode8 = this.zzaxg == null ? 0 : this.zzaxg.hashCode();
        int hashCode9 = this.zzaxh == null ? 0 : this.zzaxh.hashCode();
        int hashCode10 = this.zzaxi == null ? 0 : this.zzaxi.hashCode();
        int hashCode11 = this.zzaxj == null ? 0 : this.zzaxj.hashCode();
        int hashCode12 = this.zzaxk == null ? 0 : this.zzaxk.hashCode();
        int hashCode13 = this.zzaia == null ? 0 : this.zzaia.hashCode();
        int hashCode14 = this.zzaxl == null ? 0 : this.zzaxl.hashCode();
        int hashCode15 = this.zzage == null ? 0 : this.zzage.hashCode();
        int hashCode16 = this.zztt == null ? 0 : this.zztt.hashCode();
        int hashCode17 = this.zzts == null ? 0 : this.zzts.hashCode();
        int hashCode18 = this.zzaxm == null ? 0 : this.zzaxm.hashCode();
        int hashCode19 = this.zzaxn == null ? 0 : this.zzaxn.hashCode();
        int hashCode20 = this.zzaxo == null ? 0 : this.zzaxo.hashCode();
        int hashCode21 = this.zzaxp == null ? 0 : this.zzaxp.hashCode();
        int hashCode22 = this.zzafw == null ? 0 : this.zzafw.hashCode();
        int hashCode23 = this.zzaxq == null ? 0 : this.zzaxq.hashCode();
        int hashCode24 = this.zzaxr == null ? 0 : this.zzaxr.hashCode();
        int hashCode25 = this.zzagv == null ? 0 : this.zzagv.hashCode();
        int hashCode26 = this.zzafx == null ? 0 : this.zzafx.hashCode();
        int hashCode27 = this.zzaxs == null ? 0 : this.zzaxs.hashCode();
        int hashCode28 = zzze.hashCode(this.zzaxt);
        int hashCode29 = this.zzafz == null ? 0 : this.zzafz.hashCode();
        int hashCode30 = this.zzaxu == null ? 0 : this.zzaxu.hashCode();
        int hashCode31 = this.zzaxv == null ? 0 : this.zzaxv.hashCode();
        int hashCode32 = this.zzaxw == null ? 0 : this.zzaxw.hashCode();
        int hashCode33 = this.zzaxx == null ? 0 : this.zzaxx.hashCode();
        int hashCode34 = this.zzaxy == null ? 0 : this.zzaxy.hashCode();
        int hashCode35 = this.zzaxz == null ? 0 : this.zzaxz.hashCode();
        int hashCode36 = this.zzaya == null ? 0 : this.zzaya.hashCode();
        int hashCode37 = this.zzayb == null ? 0 : this.zzayb.hashCode();
        int hashCode38 = this.zzayc == null ? 0 : this.zzayc.hashCode();
        int hashCode39 = this.zzawj == null ? 0 : this.zzawj.hashCode();
        zzfq.zzb zzbVar = this.zzayd;
        int hashCode40 = zzbVar == null ? 0 : zzbVar.hashCode();
        int i = 0;
        if (this.zzcfc != null) {
            i = this.zzcfc.isEmpty() ? 0 : this.zzcfc.hashCode();
        }
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((hashCode + 527) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + hashCode14) * 31) + hashCode15) * 31) + hashCode16) * 31) + hashCode17) * 31) + hashCode18) * 31) + hashCode19) * 31) + hashCode20) * 31) + hashCode21) * 31) + hashCode22) * 31) + hashCode23) * 31) + hashCode24) * 31) + hashCode25) * 31) + hashCode26) * 31) + hashCode27) * 31) + hashCode28) * 31) + hashCode29) * 31) + hashCode30) * 31) + hashCode31) * 31) + hashCode32) * 31) + hashCode33) * 31) + hashCode34) * 31) + hashCode35) * 31) + hashCode36) * 31) + hashCode37) * 31) + hashCode38) * 31) + hashCode39) * 31) + hashCode40) * 31) + i;
    }

    @Override // com.google.android.gms.internal.measurement.zzzg
    public final /* synthetic */ zzzg zza(zzyx zzyxVar) throws IOException {
        while (true) {
            int zzug = zzyxVar.zzug();
            switch (zzug) {
                case 0:
                    return this;
                case 8:
                    this.zzaxa = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 18:
                    int zzb = zzzj.zzb(zzyxVar, 18);
                    int length = this.zzaxb == null ? 0 : this.zzaxb.length;
                    zzgf[] zzgfVarArr = new zzgf[zzb + length];
                    int i = length;
                    if (length != 0) {
                        System.arraycopy(this.zzaxb, 0, zzgfVarArr, 0, length);
                        i = length;
                    }
                    while (i < zzgfVarArr.length - 1) {
                        zzgfVarArr[i] = new zzgf();
                        zzyxVar.zza(zzgfVarArr[i]);
                        zzyxVar.zzug();
                        i++;
                    }
                    zzgfVarArr[i] = new zzgf();
                    zzyxVar.zza(zzgfVarArr[i]);
                    this.zzaxb = zzgfVarArr;
                    break;
                case 26:
                    int zzb2 = zzzj.zzb(zzyxVar, 26);
                    int length2 = this.zzaxc == null ? 0 : this.zzaxc.length;
                    zzgl[] zzglVarArr = new zzgl[zzb2 + length2];
                    int i2 = length2;
                    if (length2 != 0) {
                        System.arraycopy(this.zzaxc, 0, zzglVarArr, 0, length2);
                        i2 = length2;
                    }
                    while (i2 < zzglVarArr.length - 1) {
                        zzglVarArr[i2] = new zzgl();
                        zzyxVar.zza(zzglVarArr[i2]);
                        zzyxVar.zzug();
                        i2++;
                    }
                    zzglVarArr[i2] = new zzgl();
                    zzyxVar.zza(zzglVarArr[i2]);
                    this.zzaxc = zzglVarArr;
                    break;
                case 32:
                    this.zzaxd = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 40:
                    this.zzaxe = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 48:
                    this.zzaxf = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 56:
                    this.zzaxh = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 66:
                    this.zzaxi = zzyxVar.readString();
                    break;
                case 74:
                    this.zzaxj = zzyxVar.readString();
                    break;
                case 82:
                    this.zzaxk = zzyxVar.readString();
                    break;
                case 90:
                    this.zzaia = zzyxVar.readString();
                    break;
                case 96:
                    this.zzaxl = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 106:
                    this.zzage = zzyxVar.readString();
                    break;
                case 114:
                    this.zztt = zzyxVar.readString();
                    break;
                case 130:
                    this.zzts = zzyxVar.readString();
                    break;
                case 136:
                    this.zzaxm = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 144:
                    this.zzaxn = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 154:
                    this.zzaxo = zzyxVar.readString();
                    break;
                case 160:
                    this.zzaxp = Boolean.valueOf(zzyxVar.zzum());
                    break;
                case 170:
                    this.zzafw = zzyxVar.readString();
                    break;
                case 176:
                    this.zzaxq = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 184:
                    this.zzaxr = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 194:
                    this.zzagv = zzyxVar.readString();
                    break;
                case 202:
                    this.zzafx = zzyxVar.readString();
                    break;
                case 208:
                    this.zzaxg = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 224:
                    this.zzaxs = Boolean.valueOf(zzyxVar.zzum());
                    break;
                case PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_ADDRESS_HIDING_NOT_SUPPORTED /* 234 */:
                    int zzb3 = zzzj.zzb(zzyxVar, PduHeaders.RESPONSE_STATUS_ERROR_PERMANENT_ADDRESS_HIDING_NOT_SUPPORTED);
                    int length3 = this.zzaxt == null ? 0 : this.zzaxt.length;
                    zzgd[] zzgdVarArr = new zzgd[zzb3 + length3];
                    int i3 = length3;
                    if (length3 != 0) {
                        System.arraycopy(this.zzaxt, 0, zzgdVarArr, 0, length3);
                        i3 = length3;
                    }
                    while (i3 < zzgdVarArr.length - 1) {
                        zzgdVarArr[i3] = new zzgd();
                        zzyxVar.zza(zzgdVarArr[i3]);
                        zzyxVar.zzug();
                        i3++;
                    }
                    zzgdVarArr[i3] = new zzgd();
                    zzyxVar.zza(zzgdVarArr[i3]);
                    this.zzaxt = zzgdVarArr;
                    break;
                case 242:
                    this.zzafz = zzyxVar.readString();
                    break;
                case 248:
                    this.zzaxu = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 256:
                    this.zzaxv = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 264:
                    this.zzaxw = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 274:
                    this.zzaxx = zzyxVar.readString();
                    break;
                case 280:
                    this.zzaxy = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 288:
                    this.zzaxz = Long.valueOf(zzyxVar.zzuz());
                    break;
                case 298:
                    this.zzaya = zzyxVar.readString();
                    break;
                case 306:
                    this.zzayb = zzyxVar.readString();
                    break;
                case 312:
                    this.zzayc = Integer.valueOf(zzyxVar.zzuy());
                    break;
                case 330:
                    this.zzawj = zzyxVar.readString();
                    break;
                case 354:
                    this.zzayd = (zzfq.zzb) zzyxVar.zza(zzfq.zzb.zza());
                    break;
                default:
                    if (super.zza(zzyxVar, zzug)) {
                        break;
                    } else {
                        return this;
                    }
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final void zza(zzyy zzyyVar) throws IOException {
        if (this.zzaxa != null) {
            zzyyVar.zzd(1, this.zzaxa.intValue());
        }
        if (this.zzaxb != null && this.zzaxb.length > 0) {
            for (int i = 0; i < this.zzaxb.length; i++) {
                zzgf zzgfVar = this.zzaxb[i];
                if (zzgfVar != null) {
                    zzyyVar.zza(2, zzgfVar);
                }
            }
        }
        if (this.zzaxc != null && this.zzaxc.length > 0) {
            for (int i2 = 0; i2 < this.zzaxc.length; i2++) {
                zzgl zzglVar = this.zzaxc[i2];
                if (zzglVar != null) {
                    zzyyVar.zza(3, zzglVar);
                }
            }
        }
        if (this.zzaxd != null) {
            zzyyVar.zzi(4, this.zzaxd.longValue());
        }
        if (this.zzaxe != null) {
            zzyyVar.zzi(5, this.zzaxe.longValue());
        }
        if (this.zzaxf != null) {
            zzyyVar.zzi(6, this.zzaxf.longValue());
        }
        if (this.zzaxh != null) {
            zzyyVar.zzi(7, this.zzaxh.longValue());
        }
        if (this.zzaxi != null) {
            zzyyVar.zzb(8, this.zzaxi);
        }
        if (this.zzaxj != null) {
            zzyyVar.zzb(9, this.zzaxj);
        }
        if (this.zzaxk != null) {
            zzyyVar.zzb(10, this.zzaxk);
        }
        if (this.zzaia != null) {
            zzyyVar.zzb(11, this.zzaia);
        }
        if (this.zzaxl != null) {
            zzyyVar.zzd(12, this.zzaxl.intValue());
        }
        if (this.zzage != null) {
            zzyyVar.zzb(13, this.zzage);
        }
        if (this.zztt != null) {
            zzyyVar.zzb(14, this.zztt);
        }
        if (this.zzts != null) {
            zzyyVar.zzb(16, this.zzts);
        }
        if (this.zzaxm != null) {
            zzyyVar.zzi(17, this.zzaxm.longValue());
        }
        if (this.zzaxn != null) {
            zzyyVar.zzi(18, this.zzaxn.longValue());
        }
        if (this.zzaxo != null) {
            zzyyVar.zzb(19, this.zzaxo);
        }
        if (this.zzaxp != null) {
            zzyyVar.zzb(20, this.zzaxp.booleanValue());
        }
        if (this.zzafw != null) {
            zzyyVar.zzb(21, this.zzafw);
        }
        if (this.zzaxq != null) {
            zzyyVar.zzi(22, this.zzaxq.longValue());
        }
        if (this.zzaxr != null) {
            zzyyVar.zzd(23, this.zzaxr.intValue());
        }
        if (this.zzagv != null) {
            zzyyVar.zzb(24, this.zzagv);
        }
        if (this.zzafx != null) {
            zzyyVar.zzb(25, this.zzafx);
        }
        if (this.zzaxg != null) {
            zzyyVar.zzi(26, this.zzaxg.longValue());
        }
        if (this.zzaxs != null) {
            zzyyVar.zzb(28, this.zzaxs.booleanValue());
        }
        if (this.zzaxt != null && this.zzaxt.length > 0) {
            for (int i3 = 0; i3 < this.zzaxt.length; i3++) {
                zzgd zzgdVar = this.zzaxt[i3];
                if (zzgdVar != null) {
                    zzyyVar.zza(29, zzgdVar);
                }
            }
        }
        if (this.zzafz != null) {
            zzyyVar.zzb(30, this.zzafz);
        }
        if (this.zzaxu != null) {
            zzyyVar.zzd(31, this.zzaxu.intValue());
        }
        if (this.zzaxv != null) {
            zzyyVar.zzd(32, this.zzaxv.intValue());
        }
        if (this.zzaxw != null) {
            zzyyVar.zzd(33, this.zzaxw.intValue());
        }
        if (this.zzaxx != null) {
            zzyyVar.zzb(34, this.zzaxx);
        }
        if (this.zzaxy != null) {
            zzyyVar.zzi(35, this.zzaxy.longValue());
        }
        if (this.zzaxz != null) {
            zzyyVar.zzi(36, this.zzaxz.longValue());
        }
        if (this.zzaya != null) {
            zzyyVar.zzb(37, this.zzaya);
        }
        if (this.zzayb != null) {
            zzyyVar.zzb(38, this.zzayb);
        }
        if (this.zzayc != null) {
            zzyyVar.zzd(39, this.zzayc.intValue());
        }
        if (this.zzawj != null) {
            zzyyVar.zzb(41, this.zzawj);
        }
        if (this.zzayd != null) {
            zzyyVar.zze(44, this.zzayd);
        }
        super.zza(zzyyVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzza, com.google.android.gms.internal.measurement.zzzg
    public final int zzf() {
        int zzf = super.zzf();
        int i = zzf;
        if (this.zzaxa != null) {
            i = zzf + zzyy.zzh(1, this.zzaxa.intValue());
        }
        int i2 = 0;
        int i3 = i;
        if (this.zzaxb != null) {
            i3 = i;
            if (this.zzaxb.length > 0) {
                for (int i4 = 0; i4 < this.zzaxb.length; i4++) {
                    zzgf zzgfVar = this.zzaxb[i4];
                    i = i;
                    if (zzgfVar != null) {
                        i += zzyy.zzb(2, zzgfVar);
                    }
                }
                i3 = i;
            }
        }
        int i5 = i3;
        if (this.zzaxc != null) {
            i5 = i3;
            if (this.zzaxc.length > 0) {
                i5 = i3;
                for (int i6 = 0; i6 < this.zzaxc.length; i6++) {
                    zzgl zzglVar = this.zzaxc[i6];
                    i5 = i5;
                    if (zzglVar != null) {
                        i5 += zzyy.zzb(3, zzglVar);
                    }
                }
            }
        }
        int i7 = i5;
        if (this.zzaxd != null) {
            i7 = i5 + zzyy.zzd(4, this.zzaxd.longValue());
        }
        int i8 = i7;
        if (this.zzaxe != null) {
            i8 = i7 + zzyy.zzd(5, this.zzaxe.longValue());
        }
        int i9 = i8;
        if (this.zzaxf != null) {
            i9 = i8 + zzyy.zzd(6, this.zzaxf.longValue());
        }
        int i10 = i9;
        if (this.zzaxh != null) {
            i10 = i9 + zzyy.zzd(7, this.zzaxh.longValue());
        }
        int i11 = i10;
        if (this.zzaxi != null) {
            i11 = i10 + zzyy.zzc(8, this.zzaxi);
        }
        int i12 = i11;
        if (this.zzaxj != null) {
            i12 = i11 + zzyy.zzc(9, this.zzaxj);
        }
        int i13 = i12;
        if (this.zzaxk != null) {
            i13 = i12 + zzyy.zzc(10, this.zzaxk);
        }
        int i14 = i13;
        if (this.zzaia != null) {
            i14 = i13 + zzyy.zzc(11, this.zzaia);
        }
        int i15 = i14;
        if (this.zzaxl != null) {
            i15 = i14 + zzyy.zzh(12, this.zzaxl.intValue());
        }
        int i16 = i15;
        if (this.zzage != null) {
            i16 = i15 + zzyy.zzc(13, this.zzage);
        }
        int i17 = i16;
        if (this.zztt != null) {
            i17 = i16 + zzyy.zzc(14, this.zztt);
        }
        int i18 = i17;
        if (this.zzts != null) {
            i18 = i17 + zzyy.zzc(16, this.zzts);
        }
        int i19 = i18;
        if (this.zzaxm != null) {
            i19 = i18 + zzyy.zzd(17, this.zzaxm.longValue());
        }
        int i20 = i19;
        if (this.zzaxn != null) {
            i20 = i19 + zzyy.zzd(18, this.zzaxn.longValue());
        }
        int i21 = i20;
        if (this.zzaxo != null) {
            i21 = i20 + zzyy.zzc(19, this.zzaxo);
        }
        int i22 = i21;
        if (this.zzaxp != null) {
            this.zzaxp.booleanValue();
            i22 = i21 + zzyy.zzbb(20) + 1;
        }
        int i23 = i22;
        if (this.zzafw != null) {
            i23 = i22 + zzyy.zzc(21, this.zzafw);
        }
        int i24 = i23;
        if (this.zzaxq != null) {
            i24 = i23 + zzyy.zzd(22, this.zzaxq.longValue());
        }
        int i25 = i24;
        if (this.zzaxr != null) {
            i25 = i24 + zzyy.zzh(23, this.zzaxr.intValue());
        }
        int i26 = i25;
        if (this.zzagv != null) {
            i26 = i25 + zzyy.zzc(24, this.zzagv);
        }
        int i27 = i26;
        if (this.zzafx != null) {
            i27 = i26 + zzyy.zzc(25, this.zzafx);
        }
        int i28 = i27;
        if (this.zzaxg != null) {
            i28 = i27 + zzyy.zzd(26, this.zzaxg.longValue());
        }
        int i29 = i28;
        if (this.zzaxs != null) {
            this.zzaxs.booleanValue();
            i29 = i28 + zzyy.zzbb(28) + 1;
        }
        int i30 = i29;
        if (this.zzaxt != null) {
            i30 = i29;
            if (this.zzaxt.length > 0) {
                while (true) {
                    i30 = i29;
                    if (i2 >= this.zzaxt.length) {
                        break;
                    }
                    zzgd zzgdVar = this.zzaxt[i2];
                    i29 = i29;
                    if (zzgdVar != null) {
                        i29 += zzyy.zzb(29, zzgdVar);
                    }
                    i2++;
                }
            }
        }
        int i31 = i30;
        if (this.zzafz != null) {
            i31 = i30 + zzyy.zzc(30, this.zzafz);
        }
        int i32 = i31;
        if (this.zzaxu != null) {
            i32 = i31 + zzyy.zzh(31, this.zzaxu.intValue());
        }
        int i33 = i32;
        if (this.zzaxv != null) {
            i33 = i32 + zzyy.zzh(32, this.zzaxv.intValue());
        }
        int i34 = i33;
        if (this.zzaxw != null) {
            i34 = i33 + zzyy.zzh(33, this.zzaxw.intValue());
        }
        int i35 = i34;
        if (this.zzaxx != null) {
            i35 = i34 + zzyy.zzc(34, this.zzaxx);
        }
        int i36 = i35;
        if (this.zzaxy != null) {
            i36 = i35 + zzyy.zzd(35, this.zzaxy.longValue());
        }
        int i37 = i36;
        if (this.zzaxz != null) {
            i37 = i36 + zzyy.zzd(36, this.zzaxz.longValue());
        }
        int i38 = i37;
        if (this.zzaya != null) {
            i38 = i37 + zzyy.zzc(37, this.zzaya);
        }
        int i39 = i38;
        if (this.zzayb != null) {
            i39 = i38 + zzyy.zzc(38, this.zzayb);
        }
        int i40 = i39;
        if (this.zzayc != null) {
            i40 = i39 + zzyy.zzh(39, this.zzayc.intValue());
        }
        int i41 = i40;
        if (this.zzawj != null) {
            i41 = i40 + zzyy.zzc(41, this.zzawj);
        }
        int i42 = i41;
        if (this.zzayd != null) {
            i42 = i41 + zzut.zzc(44, this.zzayd);
        }
        return i42;
    }
}
