package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbwd.class */
public final class zzbwd implements zzdxg<zzpn> {

    /* renamed from: a */
    private final zzdxp<zzazb> f12528a;

    /* renamed from: b */
    private final zzdxp<String> f12529b;

    public zzbwd(zzdxp<zzazb> zzdxpVar, zzdxp<String> zzdxpVar2) {
        this.f12528a = zzdxpVar;
        this.f12529b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzq.zzkq();
        return (zzpn) zzdxm.zza(new zzpn(zzawb.zzwk(), this.f12528a.get(), this.f12529b.get(), new JSONObject(), false, true), "Cannot return null from a non-@Nullable @Provides method");
    }
}
