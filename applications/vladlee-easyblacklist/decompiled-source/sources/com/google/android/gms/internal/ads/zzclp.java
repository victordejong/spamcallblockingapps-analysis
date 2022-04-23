package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzclp.class */
public final class zzclp {

    /* renamed from: a */
    private final Clock f13327a;

    /* renamed from: b */
    private final List<String> f13328b = Collections.synchronizedList(new ArrayList());

    public zzclp(Clock clock) {
        this.f13327a = clock;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3737a(zzclp zzclpVar, String str, int i, long j) {
        List<String> list = zzclpVar.f13328b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        list.add(sb.toString());
    }

    public final <T> zzdhe<T> zza(zzczl zzczlVar, zzdhe<T> zzdheVar) {
        long elapsedRealtime = this.f13327a.elapsedRealtime();
        String str = zzczlVar.zzdcm;
        if (str != null) {
            zzdgs.zza(zzdheVar, new C2264tx(this, str, elapsedRealtime), zzazd.zzdwj);
        }
        return zzdheVar;
    }

    public final String zzamh() {
        return TextUtils.join(AbstractC0079b.ROLL_OVER_FILE_NAME_SEPARATOR, this.f13328b);
    }
}
