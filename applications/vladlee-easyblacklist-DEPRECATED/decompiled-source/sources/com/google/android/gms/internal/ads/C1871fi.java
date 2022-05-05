package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.fi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fi.class */
final class C1871fi implements zzy {

    /* renamed from: a */
    private final /* synthetic */ String f8467a;

    /* renamed from: b */
    private final /* synthetic */ C1874fl f8468b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1871fi(String str, C1874fl flVar) {
        this.f8467a = str;
        this.f8468b = flVar;
    }

    @Override // com.google.android.gms.internal.ads.zzy
    public final void zzc(zzae zzaeVar) {
        String str = this.f8467a;
        String zzaeVar2 = zzaeVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(zzaeVar2).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(zzaeVar2);
        zzavs.zzez(sb.toString());
        this.f8468b.zzb(null);
    }
}
