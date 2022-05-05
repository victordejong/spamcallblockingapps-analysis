package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtv.class */
public class zzbtv {

    /* renamed from: a */
    private final zzbuv f12391a;

    /* renamed from: b */
    private final zzbdi f12392b;

    public zzbtv(zzbuv zzbuvVar) {
        this(zzbuvVar, null);
    }

    public zzbtv(zzbuv zzbuvVar, zzbdi zzbdiVar) {
        this.f12391a = zzbuvVar;
        this.f12392b = zzbdiVar;
    }

    public Set<zzbsu<zzbov>> zza(zzbva zzbvaVar) {
        return Collections.singleton(zzbsu.zzb(zzbvaVar, zzazd.zzdwj));
    }

    public final zzbdi zzaft() {
        return this.f12392b;
    }

    public final zzbuv zzaie() {
        return this.f12391a;
    }

    public final View zzaif() {
        zzbdi zzbdiVar = this.f12392b;
        if (zzbdiVar != null) {
            return zzbdiVar.getWebView();
        }
        return null;
    }

    public final View zzaig() {
        zzbdi zzbdiVar = this.f12392b;
        if (zzbdiVar == null) {
            return null;
        }
        return zzbdiVar.getWebView();
    }

    public final zzbsu<zzbrb> zzb(Executor executor) {
        final zzbdi zzbdiVar = this.f12392b;
        return new zzbsu<>(new zzbrb(zzbdiVar) { // from class: com.google.android.gms.internal.ads.nm

            /* renamed from: a */
            private final zzbdi f10241a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10241a = zzbdiVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbrb
            public final void zzagj() {
                zzbdi zzbdiVar2 = this.f10241a;
                if (zzbdiVar2.zzzw() != null) {
                    zzbdiVar2.zzzw().close();
                }
            }
        }, executor);
    }
}
