package com.google.android.gms.measurement.internal;

import android.support.p001v4.util.ArrayMap;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzfv;
import com.google.android.gms.internal.measurement.zzfw;
import com.google.android.gms.internal.measurement.zzfx;
import com.google.android.gms.internal.measurement.zzfy;
import com.google.android.gms.internal.measurement.zzfz;
import com.google.android.gms.internal.measurement.zzge;
import com.google.android.gms.internal.measurement.zzgg;
import com.google.android.gms.internal.measurement.zzgl;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzj.class */
public final class zzj extends zzez {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zzfa zzfaVar) {
        super(zzfaVar);
    }

    private final Boolean zza(double d, zzfx zzfxVar) {
        try {
            return zza(new BigDecimal(d), zzfxVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private final Boolean zza(long j, zzfx zzfxVar) {
        try {
            return zza(new BigDecimal(j), zzfxVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private final Boolean zza(zzfv zzfvVar, String str, zzgg[] zzggVarArr, long j) {
        zzfw[] zzfwVarArr;
        zzfw[] zzfwVarArr2;
        Boolean bool;
        if (zzfvVar.zzavi != null) {
            Boolean zza = zza(j, zzfvVar.zzavi);
            if (zza == null) {
                return null;
            }
            if (!zza.booleanValue()) {
                return false;
            }
        }
        HashSet hashSet = new HashSet();
        for (zzfw zzfwVar : zzfvVar.zzavg) {
            if (TextUtils.isEmpty(zzfwVar.zzavn)) {
                zzgo().zzjg().zzg("null or empty param name in filter. event", zzgl().zzbs(str));
                return null;
            }
            hashSet.add(zzfwVar.zzavn);
        }
        ArrayMap arrayMap = new ArrayMap();
        for (zzgg zzggVar : zzggVarArr) {
            if (hashSet.contains(zzggVar.name)) {
                if (zzggVar.zzawx != null) {
                    arrayMap.put(zzggVar.name, zzggVar.zzawx);
                } else if (zzggVar.zzauh != null) {
                    arrayMap.put(zzggVar.name, zzggVar.zzauh);
                } else if (zzggVar.zzamp != null) {
                    arrayMap.put(zzggVar.name, zzggVar.zzamp);
                } else {
                    zzgo().zzjg().zze("Unknown value for param. event, param", zzgl().zzbs(str), zzgl().zzbt(zzggVar.name));
                    return null;
                }
            }
        }
        for (zzfw zzfwVar2 : zzfvVar.zzavg) {
            boolean equals = Boolean.TRUE.equals(zzfwVar2.zzavm);
            String str2 = zzfwVar2.zzavn;
            if (TextUtils.isEmpty(str2)) {
                zzgo().zzjg().zzg("Event has empty param name. event", zzgl().zzbs(str));
                return null;
            }
            V v = arrayMap.get(str2);
            if (v instanceof Long) {
                if (zzfwVar2.zzavl == null) {
                    zzgo().zzjg().zze("No number filter for long param. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                    return null;
                }
                Boolean zza2 = zza(((Long) v).longValue(), zzfwVar2.zzavl);
                if (zza2 == null) {
                    return null;
                }
                if ((true ^ zza2.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (v instanceof Double) {
                if (zzfwVar2.zzavl == null) {
                    zzgo().zzjg().zze("No number filter for double param. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                    return null;
                }
                Boolean zza3 = zza(((Double) v).doubleValue(), zzfwVar2.zzavl);
                if (zza3 == null) {
                    return null;
                }
                if ((true ^ zza3.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (v instanceof String) {
                if (zzfwVar2.zzavk != null) {
                    bool = zza((String) v, zzfwVar2.zzavk);
                } else if (zzfwVar2.zzavl != null) {
                    String str3 = (String) v;
                    if (zzfg.zzcp(str3)) {
                        bool = zza(str3, zzfwVar2.zzavl);
                    } else {
                        zzgo().zzjg().zze("Invalid param value for number filter. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                        return null;
                    }
                } else {
                    zzgo().zzjg().zze("No filter for String param. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                    return null;
                }
                if (bool == null) {
                    return null;
                }
                if ((true ^ bool.booleanValue()) ^ equals) {
                    return false;
                }
            } else if (v == 0) {
                zzgo().zzjl().zze("Missing param for filter. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                return false;
            } else {
                zzgo().zzjg().zze("Unknown param type. event, param", zzgl().zzbs(str), zzgl().zzbt(str2));
                return null;
            }
        }
        return true;
    }

    private final Boolean zza(zzfy zzfyVar, zzgl zzglVar) {
        zzfw zzfwVar = zzfyVar.zzavv;
        if (zzfwVar == null) {
            zzgo().zzjg().zzg("Missing property filter. property", zzgl().zzbu(zzglVar.name));
            return null;
        }
        boolean equals = Boolean.TRUE.equals(zzfwVar.zzavm);
        if (zzglVar.zzawx != null) {
            if (zzfwVar.zzavl != null) {
                return zza(zza(zzglVar.zzawx.longValue(), zzfwVar.zzavl), equals);
            }
            zzgo().zzjg().zzg("No number filter for long property. property", zzgl().zzbu(zzglVar.name));
            return null;
        } else if (zzglVar.zzauh != null) {
            if (zzfwVar.zzavl != null) {
                return zza(zza(zzglVar.zzauh.doubleValue(), zzfwVar.zzavl), equals);
            }
            zzgo().zzjg().zzg("No number filter for double property. property", zzgl().zzbu(zzglVar.name));
            return null;
        } else if (zzglVar.zzamp == null) {
            zzgo().zzjg().zzg("User property has no value, property", zzgl().zzbu(zzglVar.name));
            return null;
        } else if (zzfwVar.zzavk != null) {
            return zza(zza(zzglVar.zzamp, zzfwVar.zzavk), equals);
        } else {
            if (zzfwVar.zzavl == null) {
                zzgo().zzjg().zzg("No string or number filter defined. property", zzgl().zzbu(zzglVar.name));
                return null;
            } else if (zzfg.zzcp(zzglVar.zzamp)) {
                return zza(zza(zzglVar.zzamp, zzfwVar.zzavl), equals);
            } else {
                zzgo().zzjg().zze("Invalid user property value for Numeric number filter. property, value", zzgl().zzbu(zzglVar.name), zzglVar.zzamp);
                return null;
            }
        }
    }

    @VisibleForTesting
    private static Boolean zza(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() ^ z);
    }

    private final Boolean zza(String str, int i, boolean z, String str2, List<String> list, String str3) {
        if (str == null) {
            return null;
        }
        if (i == 6) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = i == 1 ? str : str.toUpperCase(Locale.ENGLISH);
        }
        switch (i) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    zzgo().zzjg().zzg("Invalid regular expression in REGEXP audience filter. expression", str3);
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

    private final Boolean zza(String str, zzfx zzfxVar) {
        if (!zzfg.zzcp(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzfxVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    @VisibleForTesting
    private final Boolean zza(String str, zzfz zzfzVar) {
        List<String> list;
        Preconditions.checkNotNull(zzfzVar);
        if (str == null || zzfzVar.zzavw == null || zzfzVar.zzavw.intValue() == 0) {
            return null;
        }
        if (zzfzVar.zzavw.intValue() == 6) {
            if (zzfzVar.zzavz == null || zzfzVar.zzavz.length == 0) {
                return null;
            }
        } else if (zzfzVar.zzavx == null) {
            return null;
        }
        int intValue = zzfzVar.zzavw.intValue();
        boolean z = zzfzVar.zzavy != null && zzfzVar.zzavy.booleanValue();
        String upperCase = (z || intValue == 1 || intValue == 6) ? zzfzVar.zzavx : zzfzVar.zzavx.toUpperCase(Locale.ENGLISH);
        if (zzfzVar.zzavz == null) {
            list = null;
        } else {
            String[] strArr = zzfzVar.zzavz;
            if (z) {
                list = Arrays.asList(strArr);
            } else {
                list = new ArrayList<>();
                for (String str2 : strArr) {
                    list.add(str2.toUpperCase(Locale.ENGLISH));
                }
            }
        }
        return zza(str, intValue, z, upperCase, list, intValue == 1 ? upperCase : null);
    }

    @VisibleForTesting
    private static Boolean zza(BigDecimal bigDecimal, zzfx zzfxVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzfxVar);
        if (zzfxVar.zzavo == null || zzfxVar.zzavo.intValue() == 0) {
            return null;
        }
        if (zzfxVar.zzavo.intValue() == 4) {
            if (zzfxVar.zzavr == null || zzfxVar.zzavs == null) {
                return null;
            }
        } else if (zzfxVar.zzavq == null) {
            return null;
        }
        int intValue = zzfxVar.zzavo.intValue();
        if (zzfxVar.zzavo.intValue() == 4) {
            if (!zzfg.zzcp(zzfxVar.zzavr) || !zzfg.zzcp(zzfxVar.zzavs)) {
                return null;
            }
            try {
                bigDecimal4 = new BigDecimal(zzfxVar.zzavr);
                bigDecimal2 = new BigDecimal(zzfxVar.zzavs);
                bigDecimal3 = null;
            } catch (NumberFormatException e) {
                return null;
            }
        } else if (!zzfg.zzcp(zzfxVar.zzavq)) {
            return null;
        } else {
            try {
                bigDecimal3 = new BigDecimal(zzfxVar.zzavq);
                bigDecimal4 = null;
                bigDecimal2 = null;
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (intValue == 4) {
            if (bigDecimal4 == null) {
                return null;
            }
        } else if (bigDecimal3 == null) {
            return null;
        }
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        switch (intValue) {
            case 1:
                if (bigDecimal.compareTo(bigDecimal3) == -1) {
                    z3 = true;
                }
                return Boolean.valueOf(z3);
            case 2:
                if (bigDecimal.compareTo(bigDecimal3) == 1) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 3:
                if (d != 0.0d) {
                    boolean z4 = false;
                    if (bigDecimal.compareTo(bigDecimal3.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1) {
                        z4 = false;
                        if (bigDecimal.compareTo(bigDecimal3.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                            z4 = true;
                        }
                    }
                    return Boolean.valueOf(z4);
                }
                if (bigDecimal.compareTo(bigDecimal3) == 0) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 4:
                boolean z5 = false;
                if (bigDecimal.compareTo(bigDecimal4) != -1) {
                    z5 = false;
                    if (bigDecimal.compareTo(bigDecimal2) != 1) {
                        z5 = true;
                    }
                }
                return Boolean.valueOf(z5);
            default:
                return null;
        }
    }

    private static void zza(Map<Integer, Long> map, int i, long j) {
        Long l = map.get(Integer.valueOf(i));
        long j2 = j / 1000;
        if (l == null || j2 > l.longValue()) {
            map.put(Integer.valueOf(i), Long.valueOf(j2));
        }
    }

    private static void zzb(Map<Integer, List<Long>> map, int i, long j) {
        List<Long> list = map.get(Integer.valueOf(i));
        List<Long> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            map.put(Integer.valueOf(i), list2);
        }
        list2.add(Long.valueOf(j / 1000));
    }

    private static zzge[] zzd(Map<Integer, Long> map) {
        if (map == null) {
            return null;
        }
        int i = 0;
        zzge[] zzgeVarArr = new zzge[map.size()];
        for (Integer num : map.keySet()) {
            zzge zzgeVar = new zzge();
            zzgeVar.zzawq = num;
            zzgeVar.zzawr = map.get(num);
            zzgeVarArr[i] = zzgeVar;
            i++;
        }
        return zzgeVarArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x039a, code lost:
        if (r0.longValue() != r31.longValue()) goto L_0x03a3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x062e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x06a8  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x04d6  */
    /* JADX WARN: Type inference failed for: r44v0 */
    /* JADX WARN: Type inference failed for: r44v1 */
    /* JADX WARN: Type inference failed for: r44v2 */
    /* JADX WARN: Type inference failed for: r44v3 */
    /* JADX WARN: Type inference failed for: r44v6 */
    /* JADX WARN: Type inference failed for: r44v7 */
    /* JADX WARN: Type inference failed for: r44v8 */
    /* JADX WARN: Type inference failed for: r44v9 */
    /* JADX WARN: Type inference failed for: r47v1, types: [long] */
    /* JADX WARN: Type inference failed for: r47v3 */
    /* JADX WARN: Type inference failed for: r47v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    @android.support.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.zzgd[] zza(java.lang.String r18, com.google.android.gms.internal.measurement.zzgf[] r19, com.google.android.gms.internal.measurement.zzgl[] r20) {
        /*
            Method dump skipped, instructions count: 4969
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzj.zza(java.lang.String, com.google.android.gms.internal.measurement.zzgf[], com.google.android.gms.internal.measurement.zzgl[]):com.google.android.gms.internal.measurement.zzgd[]");
    }

    @Override // com.google.android.gms.measurement.internal.zzez
    protected final boolean zzgt() {
        return false;
    }
}
