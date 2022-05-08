package com.google.android.gms.internal.ads;

import android.content.Context;
/* renamed from: com.google.android.gms.internal.ads.kc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kc.class */
final class C2000kc implements zzcww {

    /* renamed from: a */
    private Context f9324a;

    /* renamed from: b */
    private String f9325b;

    /* renamed from: c */
    private final /* synthetic */ zzbgr f9326c;

    private C2000kc(zzbgr zzbgrVar) {
        this.f9326c = zzbgrVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2000kc(zzbgr zzbgrVar, byte b) {
        this(zzbgrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcww
    public final zzcwx zzaeb() {
        zzdxm.zza(this.f9324a, Context.class);
        zzdxm.zza(this.f9325b, String.class);
        return new C1999kb(this.f9326c, this.f9324a, this.f9325b, (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.zzcww
    public final /* synthetic */ zzcww zzbt(Context context) {
        this.f9324a = (Context) zzdxm.checkNotNull(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcww
    public final /* synthetic */ zzcww zzfq(String str) {
        this.f9325b = (String) zzdxm.checkNotNull(str);
        return this;
    }
}
