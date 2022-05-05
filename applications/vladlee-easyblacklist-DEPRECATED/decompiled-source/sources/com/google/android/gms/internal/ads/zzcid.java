package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.SparseArray;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.internal.ads.zzsy;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcid.class */
public final class zzcid {

    /* renamed from: g */
    private static final SparseArray<zzsy.zzj.zzc> f13171g;

    /* renamed from: a */
    private final Context f13172a;

    /* renamed from: b */
    private final zzdhe<Bundle> f13173b;

    /* renamed from: c */
    private final TelephonyManager f13174c;

    /* renamed from: d */
    private final zzchz f13175d;

    /* renamed from: e */
    private final zzcht f13176e;

    /* renamed from: f */
    private zzte f13177f;

    static {
        SparseArray<zzsy.zzj.zzc> sparseArray = new SparseArray<>();
        f13171g = sparseArray;
        sparseArray.put(NetworkInfo.DetailedState.CONNECTED.ordinal(), zzsy.zzj.zzc.CONNECTED);
        f13171g.put(NetworkInfo.DetailedState.AUTHENTICATING.ordinal(), zzsy.zzj.zzc.CONNECTING);
        f13171g.put(NetworkInfo.DetailedState.CONNECTING.ordinal(), zzsy.zzj.zzc.CONNECTING);
        f13171g.put(NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal(), zzsy.zzj.zzc.CONNECTING);
        f13171g.put(NetworkInfo.DetailedState.DISCONNECTING.ordinal(), zzsy.zzj.zzc.DISCONNECTING);
        f13171g.put(NetworkInfo.DetailedState.BLOCKED.ordinal(), zzsy.zzj.zzc.DISCONNECTED);
        f13171g.put(NetworkInfo.DetailedState.DISCONNECTED.ordinal(), zzsy.zzj.zzc.DISCONNECTED);
        f13171g.put(NetworkInfo.DetailedState.FAILED.ordinal(), zzsy.zzj.zzc.DISCONNECTED);
        f13171g.put(NetworkInfo.DetailedState.IDLE.ordinal(), zzsy.zzj.zzc.DISCONNECTED);
        f13171g.put(NetworkInfo.DetailedState.SCANNING.ordinal(), zzsy.zzj.zzc.DISCONNECTED);
        f13171g.put(NetworkInfo.DetailedState.SUSPENDED.ordinal(), zzsy.zzj.zzc.SUSPENDED);
        if (Build.VERSION.SDK_INT >= 17) {
            f13171g.put(NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal(), zzsy.zzj.zzc.CONNECTING);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            f13171g.put(NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal(), zzsy.zzj.zzc.CONNECTING);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcid(Context context, zzdhe<Bundle> zzdheVar, zzchz zzchzVar, zzcht zzchtVar) {
        this.f13172a = context;
        this.f13173b = zzdheVar;
        this.f13175d = zzchzVar;
        this.f13176e = zzchtVar;
        this.f13174c = (TelephonyManager) context.getSystemService("phone");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ zzsy.zzh m3766a(zzcid zzcidVar, Bundle bundle) {
        zzsy.zzh.zza zzaVar;
        zzsy.zzh.zzb zznl = zzsy.zzh.zznl();
        int i = bundle.getInt("cnt", -2);
        int i2 = bundle.getInt("gnt", 0);
        if (i == -1) {
            zzcidVar.f13177f = zzte.ENUM_TRUE;
        } else {
            zzcidVar.f13177f = zzte.ENUM_FALSE;
            zznl.zzb(i != 0 ? i != 1 ? zzsy.zzh.zzc.NETWORKTYPE_UNSPECIFIED : zzsy.zzh.zzc.WIFI : zzsy.zzh.zzc.CELL);
            switch (i2) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    zzaVar = zzsy.zzh.zza.TWO_G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    zzaVar = zzsy.zzh.zza.THREE_G;
                    break;
                case 13:
                    zzaVar = zzsy.zzh.zza.LTE;
                    break;
                default:
                    zzaVar = zzsy.zzh.zza.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                    break;
            }
            zznl.zzb(zzaVar);
        }
        return (zzsy.zzh) ((zzdrt) zznl.zzbaf());
    }

    /* renamed from: a */
    private static zzte m3764a(boolean z) {
        return z ? zzte.ENUM_TRUE : zzte.ENUM_FALSE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0083  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ java.util.ArrayList m3768a(android.os.Bundle r4) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcid.m3768a(android.os.Bundle):java.util.ArrayList");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ byte[] m3765a(zzcid zzcidVar, boolean z, ArrayList arrayList, zzsy.zzh zzhVar, zzsy.zzj.zzc zzcVar) {
        boolean z2 = true;
        zzsy.zzj.zza.C3509zza zzeu = zzsy.zzj.zza.zznr().zzd(arrayList).zzh(m3764a(zzq.zzks().zzb(zzcidVar.f13172a.getContentResolver()) != 0)).zzi(zzq.zzks().zza(zzcidVar.f13172a, zzcidVar.f13174c)).zzev(zzcidVar.f13175d.zzaly()).zzew(zzcidVar.f13175d.zzama()).zzcf(zzcidVar.f13175d.getResponseCode()).zzb(zzcVar).zzb(zzhVar).zzj(zzcidVar.f13177f).zzf(m3764a(z)).zzeu(zzq.zzkx().currentTimeMillis());
        if (zzq.zzks().zza(zzcidVar.f13172a.getContentResolver()) == 0) {
            z2 = false;
        }
        return ((zzsy.zzj.zza) ((zzdrt) zzeu.zzg(m3764a(z2)).zzbaf())).toByteArray();
    }

    public final void zzbj(boolean z) {
        zzdgs.zza(this.f13173b, new C2227sn(this, z), zzazd.zzdwj);
    }
}
