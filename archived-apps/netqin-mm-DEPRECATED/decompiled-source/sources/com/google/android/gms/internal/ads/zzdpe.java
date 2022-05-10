package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C3785ly;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpe.class */
public final class zzdpe {
    /* renamed from: a */
    public static zzva m13340a(zzdpg zzdpgVar, zzva zzvaVar) {
        if (zzdpgVar.equals(zzdpg.MEDIATION_SHOW_ERROR)) {
            if (((Integer) zzwm.m11166e().m16921a(zzabb.f23849l4)).intValue() > 0) {
                return zzvaVar;
            }
        }
        return m13339a(zzdpgVar, null, zzvaVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static zzva m13339a(zzdpg zzdpgVar, String str, zzva zzvaVar) {
        String str2 = str;
        if (str == null) {
            switch (C3785ly.f14005a[zzdpgVar.ordinal()]) {
                case 1:
                    str2 = "Invalid request.";
                    break;
                case 2:
                    str2 = "Invalid request: Invalid ad unit ID.";
                    break;
                case 3:
                    str2 = "Invalid request: Invalid ad size.";
                    break;
                case 4:
                    str2 = "Network error.";
                    break;
                case 5:
                    str2 = "No fill.";
                    break;
                case 6:
                    str2 = "App ID missing.";
                    break;
                case 7:
                    str2 = "A mediation adapter failed to show the ad.";
                    break;
                case 8:
                    str2 = "The ad is not ready.";
                    break;
                case 9:
                    str2 = "The ad has already been shown.";
                    break;
                case 10:
                    str2 = "The ad can not be shown when app is not in foreground.";
                    break;
                case 11:
                default:
                    str2 = "Internal error.";
                    break;
                case 12:
                    if (((Integer) zzwm.m11166e().m16921a(zzabb.f23867o4)).intValue() <= 0) {
                        str2 = "The mediation adapter did not return an ad.";
                        break;
                    }
                    str2 = "No fill.";
                    break;
            }
        }
        int i = 0;
        switch (C3785ly.f14005a[zzdpgVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 9:
                i = 1;
                break;
            case 4:
            case 8:
                i = 2;
                break;
            case 5:
            case 10:
                i = 3;
                break;
            case 6:
                i = 8;
                break;
            case 7:
                i = 4;
                break;
            case 11:
            case 13:
                break;
            case 12:
                if (((Integer) zzwm.m11166e().m16921a(zzabb.f23867o4)).intValue() <= 0) {
                    i = 9;
                    break;
                }
                i = 3;
                break;
            default:
                String valueOf = String.valueOf(zzdpgVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unknown SdkError: ");
                sb.append(valueOf);
                throw new AssertionError(sb.toString());
        }
        return new zzva(i, str2, "com.google.android.gms.ads", zzvaVar, null);
    }

    /* renamed from: a */
    public static zzva m13338a(Throwable th) {
        if (th instanceof zzcte) {
            zzcte zzcteVar = (zzcte) th;
            return m13340a(zzcteVar.zzapr(), zzcteVar.zzaqj());
        } else if (th instanceof zzcof) {
            return th.getMessage() == null ? m13339a(((zzcof) th).zzapr(), null, null) : m13339a(((zzcof) th).zzapr(), th.getMessage(), null);
        } else {
            if (!(th instanceof zzbab)) {
                return m13339a(zzdpg.INTERNAL_ERROR, null, null);
            }
            zzbab zzbabVar = (zzbab) th;
            return new zzva(zzbabVar.getErrorCode(), zzdwf.m13087c(zzbabVar.getMessage()), "com.google.android.gms.ads", null, null);
        }
    }

    /* renamed from: a */
    public static zzva m13337a(Throwable th, zzctd zzctdVar) {
        zzva zzvaVar;
        zzva a = m13338a(th);
        int i = a.f28995a;
        if ((i == 3 || i == 0) && (zzvaVar = a.f28998d) != null && !zzvaVar.f28997c.equals("com.google.android.gms.ads")) {
            a.f28998d = null;
        }
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23861n4)).booleanValue() && zzctdVar != null) {
            a.f28999e = zzctdVar.m13865b();
        }
        return a;
    }
}
