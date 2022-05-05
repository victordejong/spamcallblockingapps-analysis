package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayb.class */
public final class zzayb extends zzavo {

    /* renamed from: a */
    private final zzayy f11522a;

    /* renamed from: b */
    private final String f11523b;

    public zzayb(Context context, String str, String str2) {
        this(str2, zzq.zzkq().zzr(context, str));
    }

    private zzayb(String str, String str2) {
        this.f11522a = new zzayy(str2);
        this.f11523b = str;
    }

    @Override // com.google.android.gms.internal.ads.zzavo
    public final void zztu() {
        this.f11522a.zzen(this.f11523b);
    }
}
