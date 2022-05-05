package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.up */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/up.class */
final class C2283up implements zzbpx {

    /* renamed from: a */
    private final /* synthetic */ zzazl f10588a;

    /* renamed from: b */
    private final /* synthetic */ zzcip f10589b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2283up(zzazl zzazlVar, zzcip zzcipVar) {
        this.f10588a = zzazlVar;
        this.f10589b = zzcipVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpx
    public final void onAdFailedToLoad(int i) {
        synchronized (this) {
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcot)).booleanValue()) {
                i = 3;
            }
            zzazl zzazlVar = this.f10588a;
            String str = this.f10589b.zzfge;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
            sb.append("adapter ");
            sb.append(str);
            sb.append(" failed to load");
            zzazlVar.setException(new zzclr(sb.toString(), i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpx
    public final void onAdLoaded() {
        synchronized (this) {
            this.f10588a.set(null);
        }
    }
}
