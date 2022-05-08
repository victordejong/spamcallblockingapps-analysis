package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbj;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.hz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hz.class */
public abstract class AbstractC2853hz {

    /* renamed from: a */
    String f17064a;

    /* renamed from: b */
    int f17065b;

    /* renamed from: c */
    Boolean f17066c;

    /* renamed from: d */
    Boolean f17067d;

    /* renamed from: e */
    Long f17068e;

    /* renamed from: f */
    Long f17069f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2853hz(String str, int i) {
        this.f17064a = str;
        this.f17065b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Boolean m2011a(double d, zzbj.zzd zzdVar) {
        try {
            return m2005a(new BigDecimal(d), zzdVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Boolean m2010a(long j, zzbj.zzd zzdVar) {
        try {
            return m2005a(new BigDecimal(j), zzdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Boolean m2009a(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Boolean m2008a(String str, zzbj.zzd zzdVar) {
        if (!zzki.m1663a(str)) {
            return null;
        }
        try {
            return m2005a(new BigDecimal(str), zzdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    private static Boolean m2007a(String str, zzbj.zzf.zzb zzbVar, boolean z, String str2, List<String> list, String str3, zzew zzewVar) {
        boolean startsWith;
        if (str == null) {
            return null;
        }
        if (zzbVar == zzbj.zzf.zzb.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = zzbVar == zzbj.zzf.zzb.REGEXP ? str : str.toUpperCase(Locale.ENGLISH);
        }
        switch (C2849hv.f17054a[zzbVar.ordinal()]) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (zzewVar == null) {
                        return null;
                    }
                    zzewVar.zzi().zza("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                startsWith = str4.startsWith(str2);
                break;
            case 3:
                startsWith = str4.endsWith(str2);
                break;
            case 4:
                startsWith = str4.contains(str2);
                break;
            case 5:
                startsWith = str4.equals(str2);
                break;
            case 6:
                startsWith = list.contains(str4);
                break;
            default:
                return null;
        }
        return Boolean.valueOf(startsWith);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static Boolean m2006a(String str, zzbj.zzf zzfVar, zzew zzewVar) {
        List<String> list;
        Preconditions.checkNotNull(zzfVar);
        if (str == null || !zzfVar.zza() || zzfVar.zzb() == zzbj.zzf.zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (zzfVar.zzb() == zzbj.zzf.zzb.IN_LIST) {
            if (zzfVar.zzh() == 0) {
                return null;
            }
        } else if (!zzfVar.zzc()) {
            return null;
        }
        zzbj.zzf.zzb zzb = zzfVar.zzb();
        boolean zzf = zzfVar.zzf();
        String zzd = (zzf || zzb == zzbj.zzf.zzb.REGEXP || zzb == zzbj.zzf.zzb.IN_LIST) ? zzfVar.zzd() : zzfVar.zzd().toUpperCase(Locale.ENGLISH);
        if (zzfVar.zzh() == 0) {
            list = null;
        } else {
            list = zzfVar.zzg();
            if (!zzf) {
                ArrayList arrayList = new ArrayList(list.size());
                for (String str2 : list) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return m2007a(str, zzb, zzf, zzd, list, zzb == zzbj.zzf.zzb.REGEXP ? zzd : null, zzewVar);
    }

    /* renamed from: a */
    private static Boolean m2005a(BigDecimal bigDecimal, zzbj.zzd zzdVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzdVar);
        if (!zzdVar.zza() || zzdVar.zzb() == zzbj.zzd.zza.UNKNOWN_COMPARISON_TYPE) {
            return null;
        }
        if (zzdVar.zzb() == zzbj.zzd.zza.BETWEEN) {
            if (!zzdVar.zzg() || !zzdVar.zzi()) {
                return null;
            }
        } else if (!zzdVar.zze()) {
            return null;
        }
        zzbj.zzd.zza zzb = zzdVar.zzb();
        if (zzdVar.zzb() == zzbj.zzd.zza.BETWEEN) {
            if (!zzki.m1663a(zzdVar.zzh()) || !zzki.m1663a(zzdVar.zzj())) {
                return null;
            }
            try {
                bigDecimal3 = new BigDecimal(zzdVar.zzh());
                bigDecimal2 = new BigDecimal(zzdVar.zzj());
                bigDecimal4 = null;
            } catch (NumberFormatException e) {
                return null;
            }
        } else if (!zzki.m1663a(zzdVar.zzf())) {
            return null;
        } else {
            try {
                bigDecimal4 = new BigDecimal(zzdVar.zzf());
                bigDecimal3 = null;
                bigDecimal2 = null;
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (zzb == zzbj.zzd.zza.BETWEEN) {
            if (bigDecimal3 == null) {
                return null;
            }
        } else if (bigDecimal4 == null) {
            return null;
        }
        int i = C2849hv.f17055b[zzb.ordinal()];
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        if (i == 1) {
            if (bigDecimal.compareTo(bigDecimal4) == -1) {
                z3 = true;
            }
            return Boolean.valueOf(z3);
        } else if (i == 2) {
            if (bigDecimal.compareTo(bigDecimal4) == 1) {
                z2 = true;
            }
            return Boolean.valueOf(z2);
        } else if (i != 3) {
            if (i != 4) {
                return null;
            }
            boolean z4 = false;
            if (bigDecimal.compareTo(bigDecimal3) != -1) {
                z4 = false;
                if (bigDecimal.compareTo(bigDecimal2) != 1) {
                    z4 = true;
                }
            }
            return Boolean.valueOf(z4);
        } else if (d != 0.0d) {
            boolean z5 = false;
            if (bigDecimal.compareTo(bigDecimal4.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1) {
                z5 = false;
                if (bigDecimal.compareTo(bigDecimal4.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                    z5 = true;
                }
            }
            return Boolean.valueOf(z5);
        } else {
            if (bigDecimal.compareTo(bigDecimal4) == 0) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract int mo2012a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract boolean mo2004b();
}
