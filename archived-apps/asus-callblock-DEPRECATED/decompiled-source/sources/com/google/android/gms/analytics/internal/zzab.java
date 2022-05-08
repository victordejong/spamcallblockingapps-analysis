package com.google.android.gms.analytics.internal;

import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.common.internal.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzab.class */
public class zzab {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f3820a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Command> f3821b;
    private final long c;
    private final long d;
    private final int e;
    private final boolean f;
    private final String g;

    public zzab(zzc zzcVar, Map<String, String> map, long j, boolean z) {
        this(zzcVar, map, j, z, 0L, 0, null);
    }

    public zzab(zzc zzcVar, Map<String, String> map, long j, boolean z, long j2, int i) {
        this(zzcVar, map, j, z, j2, i, null);
    }

    public zzab(zzc zzcVar, Map<String, String> map, long j, boolean z, long j2, int i, List<Command> list) {
        String a2;
        String a3;
        b.a(zzcVar);
        b.a(map);
        this.d = j;
        this.f = z;
        this.c = j2;
        this.e = i;
        this.f3821b = list != null ? list : Collections.emptyList();
        this.g = a(list);
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (a(entry.getKey()) && (a3 = a(zzcVar, entry.getKey())) != null) {
                hashMap.put(a3, b(zzcVar, entry.getValue()));
            }
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            if (!a(entry2.getKey()) && (a2 = a(zzcVar, entry2.getKey())) != null) {
                hashMap.put(a2, b(zzcVar, entry2.getValue()));
            }
        }
        if (!TextUtils.isEmpty(this.g)) {
            zzao.zzc(hashMap, "_v", this.g);
            if (this.g.equals("ma4.0.0") || this.g.equals("ma4.0.1")) {
                hashMap.remove("adid");
            }
        }
        this.f3820a = Collections.unmodifiableMap(hashMap);
    }

    private static String a(zzc zzcVar, Object obj) {
        String str;
        if (obj == null) {
            str = null;
        } else {
            String obj2 = obj.toString();
            String str2 = obj2;
            if (obj2.startsWith("&")) {
                str2 = obj2.substring(1);
            }
            int length = str2.length();
            String str3 = str2;
            if (length > 256) {
                str3 = str2.substring(0, 256);
                zzcVar.zzc("Hit param name is too long and will be trimmed", Integer.valueOf(length), str3);
            }
            str = str3;
            if (TextUtils.isEmpty(str3)) {
                str = null;
            }
        }
        return str;
    }

    private String a(String str, String str2) {
        b.a(str);
        b.b(!str.startsWith("&"), "Short param name required");
        String str3 = this.f3820a.get(str);
        if (str3 == null) {
            str3 = str2;
        }
        return str3;
    }

    private static String a(List<Command> list) {
        String str = null;
        if (list != null) {
            for (Command command : list) {
                if ("appendVersion".equals(command.getId())) {
                    str = command.getValue();
                    break;
                }
            }
        }
        str = null;
        if (TextUtils.isEmpty(str)) {
        }
        return str;
    }

    private static boolean a(Object obj) {
        return obj == null ? false : obj.toString().startsWith("&");
    }

    private static String b(zzc zzcVar, Object obj) {
        String obj2 = obj == null ? BuildConfig.FLAVOR : obj.toString();
        int length = obj2.length();
        String str = obj2;
        if (length > 8192) {
            str = obj2.substring(0, 8192);
            zzcVar.zzc("Hit param value is too long and will be trimmed", Integer.valueOf(length), str);
        }
        return str;
    }

    public static zzab zza(zzc zzcVar, zzab zzabVar, Map<String, String> map) {
        return new zzab(zzcVar, map, zzabVar.zznT(), zzabVar.zznV(), zzabVar.zznS(), zzabVar.zznR(), zzabVar.zznU());
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("ht=").append(this.d);
        if (this.c != 0) {
            stringBuffer.append(", dbId=").append(this.c);
        }
        if (this.e != 0) {
            stringBuffer.append(", appUID=").append(this.e);
        }
        ArrayList<String> arrayList = new ArrayList(this.f3820a.keySet());
        Collections.sort(arrayList);
        for (String str : arrayList) {
            stringBuffer.append(", ");
            stringBuffer.append(str);
            stringBuffer.append("=");
            stringBuffer.append(this.f3820a.get(str));
        }
        return stringBuffer.toString();
    }

    public Map<String, String> zzm() {
        return this.f3820a;
    }

    public int zznR() {
        return this.e;
    }

    public long zznS() {
        return this.c;
    }

    public long zznT() {
        return this.d;
    }

    public List<Command> zznU() {
        return this.f3821b;
    }

    public boolean zznV() {
        return this.f;
    }

    public long zznW() {
        return zzao.zzbX(a("_s", "0"));
    }

    public String zznX() {
        return a("_m", BuildConfig.FLAVOR);
    }
}
