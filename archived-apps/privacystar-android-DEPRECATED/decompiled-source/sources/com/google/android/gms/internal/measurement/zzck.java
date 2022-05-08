package com.google.android.gms.internal.measurement;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzck.class */
public final class zzck {
    private final List<zzbr> zzaav;
    private final long zzaaw;
    private final long zzaax;
    private final int zzaay;
    private final boolean zzaaz;
    private final String zzaba;
    private final Map<String, String> zzsy;

    public zzck(zzat zzatVar, Map<String, String> map, long j, boolean z) {
        this(zzatVar, map, j, z, 0L, 0, null);
    }

    public zzck(zzat zzatVar, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(zzatVar, map, j, z, j2, i, null);
    }

    public zzck(zzat zzatVar, Map<String, String> map, long j, boolean z, long j2, int i, List<zzbr> list) {
        String zza;
        String zza2;
        Preconditions.checkNotNull(zzatVar);
        Preconditions.checkNotNull(map);
        this.zzaax = j;
        this.zzaaz = z;
        this.zzaaw = j2;
        this.zzaay = i;
        this.zzaav = list != null ? list : Collections.emptyList();
        String str = null;
        if (list != null) {
            for (zzbr zzbrVar : list) {
                if ("appendVersion".equals(zzbrVar.getId())) {
                    str = zzbrVar.getValue();
                    break;
                }
            }
        }
        str = null;
        if (TextUtils.isEmpty(str)) {
        }
        this.zzaba = str;
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (zzc(entry.getKey()) && (zza2 = zza(zzatVar, entry.getKey())) != null) {
                hashMap.put(zza2, zzb(zzatVar, entry.getValue()));
            }
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            if (!zzc(entry2.getKey()) && (zza = zza(zzatVar, entry2.getKey())) != null) {
                hashMap.put(zza, zzb(zzatVar, entry2.getValue()));
            }
        }
        if (!TextUtils.isEmpty(this.zzaba)) {
            zzdg.zzb(hashMap, "_v", this.zzaba);
            if (this.zzaba.equals("ma4.0.0") || this.zzaba.equals("ma4.0.1")) {
                hashMap.remove("adid");
            }
        }
        this.zzsy = Collections.unmodifiableMap(hashMap);
    }

    private static String zza(zzat zzatVar, Object obj) {
        if (obj == null) {
            return null;
        }
        String obj2 = obj.toString();
        String str = obj2;
        if (obj2.startsWith("&")) {
            str = obj2.substring(1);
        }
        int length = str.length();
        String str2 = str;
        if (length > 256) {
            str2 = str.substring(0, 256);
            zzatVar.zzc("Hit param name is too long and will be trimmed", Integer.valueOf(length), str2);
        }
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        return str2;
    }

    private static String zzb(zzat zzatVar, Object obj) {
        String obj2 = obj == null ? "" : obj.toString();
        int length = obj2.length();
        String str = obj2;
        if (length > 8192) {
            str = obj2.substring(0, 8192);
            zzatVar.zzc("Hit param value is too long and will be trimmed", Integer.valueOf(length), str);
        }
        return str;
    }

    private static boolean zzc(Object obj) {
        if (obj == null) {
            return false;
        }
        return obj.toString().startsWith("&");
    }

    private final String zzd(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkArgument(!str.startsWith("&"), "Short param name required");
        String str3 = this.zzsy.get(str);
        return str3 != null ? str3 : str2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ht=");
        sb.append(this.zzaax);
        if (this.zzaaw != 0) {
            sb.append(", dbId=");
            sb.append(this.zzaaw);
        }
        if (this.zzaay != 0) {
            sb.append(", appUID=");
            sb.append(this.zzaay);
        }
        ArrayList arrayList = new ArrayList(this.zzsy.keySet());
        Collections.sort(arrayList);
        ArrayList arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String str = (String) obj;
            sb.append(", ");
            sb.append(str);
            sb.append("=");
            sb.append(this.zzsy.get(str));
        }
        return sb.toString();
    }

    public final Map<String, String> zzcw() {
        return this.zzsy;
    }

    public final int zzep() {
        return this.zzaay;
    }

    public final long zzeq() {
        return this.zzaaw;
    }

    public final long zzer() {
        return this.zzaax;
    }

    public final List<zzbr> zzes() {
        return this.zzaav;
    }

    public final boolean zzet() {
        return this.zzaaz;
    }

    public final long zzeu() {
        return zzdg.zzaf(zzd("_s", "0"));
    }

    public final String zzev() {
        return zzd("_m", "");
    }
}
