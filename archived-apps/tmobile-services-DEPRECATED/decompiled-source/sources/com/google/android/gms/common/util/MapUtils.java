package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.HashMap;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/MapUtils.class */
public class MapUtils {
    @KeepForSdk
    /* renamed from: a */
    public static void m14323a(StringBuilder sb, HashMap<String, String> hashMap) {
        sb.append("{");
        boolean z = true;
        for (String str : hashMap.keySet()) {
            if (!z) {
                sb.append(",");
            } else {
                z = false;
            }
            String str2 = hashMap.get(str);
            sb.append("\"");
            sb.append(str);
            sb.append("\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append("\"");
                sb.append(str2);
                sb.append("\"");
            }
        }
        sb.append("}");
    }
}
