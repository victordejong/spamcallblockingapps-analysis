package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcim.class */
public final class zzcim implements zzahq<Object> {

    /* renamed from: a */
    public final zzafk f26083a;

    /* renamed from: b */
    public final zzcil f26084b;

    /* renamed from: c */
    public final zzeos<zzcif> f26085c;

    public zzcim(zzcep zzcepVar, zzcei zzceiVar, zzcil zzcilVar, zzeos<zzcif> zzeosVar) {
        this.f26083a = zzcepVar.m14659b(zzceiVar.m14692e());
        this.f26084b = zzcilVar;
        this.f26085c = zzeosVar;
    }

    /* renamed from: a */
    public final void m14169a() {
        if (this.f26083a != null) {
            this.f26084b.m14176a("/nativeAdCustomClick", this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final void mo14168a(Object obj, Map<String, String> map) {
        String str = map.get("asset");
        try {
            this.f26083a.mo16803a(this.f26085c.get(), str);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40);
            sb.append("Failed to call onCustomClick for asset ");
            sb.append(str);
            sb.append(".");
            zzbbq.m15853c(sb.toString(), e);
        }
    }
}
