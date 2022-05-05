package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.internal.ads.ru */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ru.class */
final class C2207ru implements zzbqx {

    /* renamed from: a */
    private final Context f10433a;

    /* renamed from: b */
    private final zzatv f10434b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2207ru(Context context, zzatv zzatvVar) {
        this.f10433a = context;
        this.f10434b = zzatvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzaqk zzaqkVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbqx
    public final void zzb(zzczt zzcztVar) {
        if (!TextUtils.isEmpty(zzcztVar.zzgmi.zzgmf.zzdlk)) {
            this.f10434b.zza(this.f10433a, zzcztVar.zzgmh.zzfgl.zzgml);
            this.f10434b.zzj(this.f10433a, zzcztVar.zzgmi.zzgmf.zzdlk);
        }
    }
}
