package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcba.class */
public final class zzcba implements zzeoy<zzcau> {

    /* renamed from: a */
    public final zzeph<Set<zzcab<VideoController.VideoLifecycleCallbacks>>> f25662a;

    public zzcba(zzeph<Set<zzcab<VideoController.VideoLifecycleCallbacks>>> zzephVar) {
        this.f25662a = zzephVar;
    }

    /* renamed from: a */
    public static zzcba m14852a(zzeph<Set<zzcab<VideoController.VideoLifecycleCallbacks>>> zzephVar) {
        return new zzcba(zzephVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        return new zzcau(this.f25662a.get());
    }
}
