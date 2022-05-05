package com.google.android.gms.internal.ads;

import android.content.Context;
/* renamed from: com.google.android.gms.internal.ads.kl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kl.class */
final class C2009kl implements zzczc {

    /* renamed from: a */
    private Context f9828a;

    /* renamed from: b */
    private String f9829b;

    /* renamed from: c */
    private final /* synthetic */ zzbgr f9830c;

    private C2009kl(zzbgr zzbgrVar) {
        this.f9830c = zzbgrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2009kl(zzbgr zzbgrVar, byte b) {
        this(zzbgrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final zzczd zzaer() {
        zzdxm.zza(this.f9828a, Context.class);
        return new C2008kk(this.f9830c, this.f9828a, this.f9829b, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final /* synthetic */ zzczc zzbu(Context context) {
        this.f9828a = (Context) zzdxm.checkNotNull(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final /* synthetic */ zzczc zzfr(String str) {
        this.f9829b = str;
        return this;
    }
}
