package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzats.class */
public final class zzats implements zzps {

    /* renamed from: a */
    private final Context f11369a;

    /* renamed from: b */
    private final Object f11370b;

    /* renamed from: c */
    private String f11371c;

    /* renamed from: d */
    private boolean f11372d;

    public zzats(Context context, String str) {
        this.f11369a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f11371c = str;
        this.f11372d = false;
        this.f11370b = new Object();
    }

    public final String getAdUnitId() {
        return this.f11371c;
    }

    @Override // com.google.android.gms.internal.ads.zzps
    public final void zza(zzpt zzptVar) {
        zzam(zzptVar.zzbnq);
    }

    public final void zzam(boolean z) {
        if (zzq.zzlo().zzab(this.f11369a)) {
            synchronized (this.f11370b) {
                if (this.f11372d != z) {
                    this.f11372d = z;
                    if (!TextUtils.isEmpty(this.f11371c)) {
                        if (this.f11372d) {
                            zzq.zzlo().zze(this.f11369a, this.f11371c);
                        } else {
                            zzq.zzlo().zzf(this.f11369a, this.f11371c);
                        }
                    }
                }
            }
        }
    }
}
