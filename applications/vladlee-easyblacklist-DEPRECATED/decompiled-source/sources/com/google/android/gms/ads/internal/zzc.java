package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzapz;
import com.google.android.gms.internal.ads.zzato;
import com.google.android.gms.internal.ads.zzawb;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzc.class */
public final class zzc {

    /* renamed from: a */
    private final Context f5948a;

    /* renamed from: b */
    private boolean f5949b;

    /* renamed from: c */
    private zzato f5950c;

    /* renamed from: d */
    private zzapz f5951d;

    public zzc(Context context, zzato zzatoVar, zzapz zzapzVar) {
        this.f5948a = context;
        this.f5950c = zzatoVar;
        this.f5951d = null;
        if (this.f5951d == null) {
            this.f5951d = new zzapz();
        }
    }

    /* renamed from: a */
    private final boolean m6048a() {
        zzato zzatoVar = this.f5950c;
        return (zzatoVar != null && zzatoVar.zzuk().zzdox) || this.f5951d.zzdln;
    }

    public final void recordClick() {
        this.f5949b = true;
    }

    public final void zzbq(String str) {
        if (m6048a()) {
            if (str == null) {
                str = "";
            }
            zzato zzatoVar = this.f5950c;
            if (zzatoVar != null) {
                zzatoVar.zza(str, null, 3);
            } else if (this.f5951d.zzdln && this.f5951d.zzdlo != null) {
                for (String str2 : this.f5951d.zzdlo) {
                    if (!TextUtils.isEmpty(str2)) {
                        String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                        zzq.zzkq();
                        zzawb.zzb(this.f5948a, "", replace);
                    }
                }
            }
        }
    }

    public final boolean zzjq() {
        return !m6048a() || this.f5949b;
    }
}
