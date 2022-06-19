package com.google.android.gms.internal.measurement;

import android.net.Uri;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.o3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/o3.class */
public final class C1362o3 {

    /* renamed from: a */
    private final Map<String, Map<String, String>> f3938a;

    C1362o3(Map<String, Map<String, String>> map) {
        this.f3938a = map;
    }

    /* renamed from: a */
    public final String m2021a(Uri uri, String str, String str2, String str3) {
        if (uri != null) {
            Map<String, String> map = this.f3938a.get(uri.toString());
            if (map == null) {
                return null;
            }
            String valueOf = String.valueOf(str3);
            return map.get(valueOf.length() != 0 ? "".concat(valueOf) : new String(""));
        }
        return null;
    }
}
