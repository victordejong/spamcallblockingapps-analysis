package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbv;
import com.google.android.gms.measurement.internal.zzeq;
import com.google.android.gms.measurement.internal.zzkr;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* renamed from: c.d.b.d.i.a.d8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/d8.class */
public abstract class AbstractC4676d8 {

    /* renamed from: a */
    public String f17042a;

    /* renamed from: b */
    public int f17043b;

    /* renamed from: c */
    public Boolean f17044c;

    /* renamed from: d */
    public Boolean f17045d;

    /* renamed from: e */
    public Long f17046e;

    /* renamed from: f */
    public Long f17047f;

    public AbstractC4676d8(String str, int i) {
        this.f17042a = str;
        this.f17043b = i;
    }

    /* renamed from: a */
    public static Boolean m25033a(double d, zzbv.zzd zzdVar) {
        try {
            return m25027a(new BigDecimal(d), zzdVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Boolean m25032a(long j, zzbv.zzd zzdVar) {
        try {
            return m25027a(new BigDecimal(j), zzdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Boolean m25031a(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* renamed from: a */
    public static Boolean m25030a(String str, zzbv.zzd zzdVar) {
        if (!zzkr.m8763a(str)) {
            return null;
        }
        try {
            return m25027a(new BigDecimal(str), zzdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Boolean m25029a(String str, zzbv.zzf.zzb zzbVar, boolean z, String str2, List<String> list, String str3, zzeq zzeqVar) {
        if (str == null) {
            return null;
        }
        if (zzbVar == zzbv.zzf.zzb.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = zzbVar == zzbv.zzf.zzb.REGEXP ? str : str.toUpperCase(Locale.ENGLISH);
        }
        switch (C4876z7.f17499a[zzbVar.ordinal()]) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (zzeqVar == null) {
                        return null;
                    }
                    zzeqVar.m9149t().m9142a("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                return Boolean.valueOf(str4.startsWith(str2));
            case 3:
                return Boolean.valueOf(str4.endsWith(str2));
            case 4:
                return Boolean.valueOf(str4.contains(str2));
            case 5:
                return Boolean.valueOf(str4.equals(str2));
            case 6:
                return Boolean.valueOf(list.contains(str4));
            default:
                return null;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Boolean m25028a(String str, zzbv.zzf zzfVar, zzeq zzeqVar) {
        List<String> list;
        Preconditions.m17288a(zzfVar);
        if (str == null || !zzfVar.zza() || zzfVar.m10354p() == zzbv.zzf.zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (zzfVar.m10354p() == zzbv.zzf.zzb.IN_LIST) {
            if (zzfVar.m10348v() == 0) {
                return null;
            }
        } else if (!zzfVar.m10353q()) {
            return null;
        }
        zzbv.zzf.zzb p = zzfVar.m10354p();
        boolean t = zzfVar.m10350t();
        String r = (t || p == zzbv.zzf.zzb.REGEXP || p == zzbv.zzf.zzb.IN_LIST) ? zzfVar.m10352r() : zzfVar.m10352r().toUpperCase(Locale.ENGLISH);
        if (zzfVar.m10348v() == 0) {
            list = null;
        } else {
            list = zzfVar.m10349u();
            if (!t) {
                ArrayList arrayList = new ArrayList(list.size());
                for (String str2 : list) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return m25029a(str, p, t, r, list, p == zzbv.zzf.zzb.REGEXP ? r : null, zzeqVar);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Boolean m25027a(BigDecimal bigDecimal, zzbv.zzd zzdVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.m17288a(zzdVar);
        if (!zzdVar.zza() || zzdVar.m10376p() == zzbv.zzd.zza.UNKNOWN_COMPARISON_TYPE) {
            return null;
        }
        if (zzdVar.m10376p() == zzbv.zzd.zza.BETWEEN) {
            if (!zzdVar.m10371u() || !zzdVar.m10369w()) {
                return null;
            }
        } else if (!zzdVar.m10373s()) {
            return null;
        }
        zzbv.zzd.zza p = zzdVar.m10376p();
        if (zzdVar.m10376p() == zzbv.zzd.zza.BETWEEN) {
            if (!zzkr.m8763a(zzdVar.m10370v()) || !zzkr.m8763a(zzdVar.m10368x())) {
                return null;
            }
            try {
                bigDecimal4 = new BigDecimal(zzdVar.m10370v());
                bigDecimal2 = new BigDecimal(zzdVar.m10368x());
                bigDecimal3 = null;
            } catch (NumberFormatException e) {
                return null;
            }
        } else if (!zzkr.m8763a(zzdVar.m10372t())) {
            return null;
        } else {
            try {
                bigDecimal3 = new BigDecimal(zzdVar.m10372t());
                bigDecimal4 = null;
                bigDecimal2 = null;
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (p == zzbv.zzd.zza.BETWEEN) {
            if (bigDecimal4 == null) {
                return null;
            }
        } else if (bigDecimal3 == null) {
            return null;
        }
        int i = C4876z7.f17500b[p.ordinal()];
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        if (i == 1) {
            if (bigDecimal.compareTo(bigDecimal3) == -1) {
                z3 = true;
            }
            return Boolean.valueOf(z3);
        } else if (i == 2) {
            if (bigDecimal.compareTo(bigDecimal3) == 1) {
                z2 = true;
            }
            return Boolean.valueOf(z2);
        } else if (i != 3) {
            if (i != 4) {
                return null;
            }
            boolean z4 = false;
            if (bigDecimal.compareTo(bigDecimal4) != -1) {
                z4 = false;
                if (bigDecimal.compareTo(bigDecimal2) != 1) {
                    z4 = true;
                }
            }
            return Boolean.valueOf(z4);
        } else if (d != 0.0d) {
            boolean z5 = false;
            if (bigDecimal.compareTo(bigDecimal3.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1) {
                z5 = false;
                if (bigDecimal.compareTo(bigDecimal3.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                    z5 = true;
                }
            }
            return Boolean.valueOf(z5);
        } else {
            if (bigDecimal.compareTo(bigDecimal3) == 0) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: a */
    public abstract int mo25020a();

    /* renamed from: b */
    public abstract boolean mo25018b();

    /* renamed from: c */
    public abstract boolean mo25017c();
}
