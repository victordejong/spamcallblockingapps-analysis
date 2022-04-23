package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zze;
/* renamed from: com.google.android.gms.internal.ads.uu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/uu.class */
final class C2288uu implements zze {

    /* renamed from: a */
    private final /* synthetic */ zzazl f10597a;

    /* renamed from: b */
    private final /* synthetic */ zzczt f10598b;

    /* renamed from: c */
    private final /* synthetic */ zzczl f10599c;

    /* renamed from: d */
    private final /* synthetic */ zzcnt f10600d;

    /* renamed from: e */
    private final /* synthetic */ zzcnl f10601e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2288uu(zzcnl zzcnlVar, zzazl zzazlVar, zzczt zzcztVar, zzczl zzczlVar, zzcnt zzcntVar) {
        this.f10601e = zzcnlVar;
        this.f10597a = zzazlVar;
        this.f10598b = zzcztVar;
        this.f10599c = zzczlVar;
        this.f10600d = zzcntVar;
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzg(View view) {
        zzcnq zzcnqVar;
        zzazl zzazlVar = this.f10597a;
        zzcnqVar = this.f10601e.f13411d;
        zzazlVar.set(zzcnqVar.zza(this.f10598b, this.f10599c, view, this.f10600d));
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjr() {
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjs() {
    }
}
