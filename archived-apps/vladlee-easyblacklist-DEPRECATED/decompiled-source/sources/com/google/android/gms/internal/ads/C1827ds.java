package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.ds */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ds.class */
final class C1827ds {

    /* renamed from: a */
    private static final Map<String, String> f8397a;

    /* renamed from: b */
    private final Context f8398b;

    /* renamed from: c */
    private final List<String> f8399c;

    /* renamed from: d */
    private final zzatf f8400d;

    static {
        HashMap hashMap = new HashMap();
        if (PlatformVersion.isAtLeastLollipop()) {
            hashMap.put("android.webkit.resource.AUDIO_CAPTURE", "android.permission.RECORD_AUDIO");
            hashMap.put("android.webkit.resource.VIDEO_CAPTURE", "android.permission.CAMERA");
        }
        f8397a = hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1827ds(Context context, List<String> list, zzatf zzatfVar) {
        this.f8398b = context;
        this.f8399c = list;
        this.f8400d = zzatfVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final List<String> m4735a(String[] strArr) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : this.f8399c) {
                if (!str2.equals(str)) {
                    String valueOf = String.valueOf(str2);
                    if ((valueOf.length() != 0 ? "android.webkit.resource.".concat(valueOf) : new String("android.webkit.resource.")).equals(str)) {
                    }
                }
                z = true;
            }
            z = false;
            if (z) {
                boolean z2 = true;
                if (f8397a.containsKey(str)) {
                    zzq.zzkq();
                    z2 = zzawb.zzq(this.f8398b, f8397a.get(str));
                }
                if (z2) {
                    arrayList.add(str);
                } else {
                    this.f8400d.m4291b(str);
                }
            } else {
                this.f8400d.m4295a(str);
            }
        }
        return arrayList;
    }
}
