package com.google.android.gms.internal.ads;

import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/art.class */
public final class art extends aru<zzacm> {

    /* renamed from: a */
    private final /* synthetic */ FrameLayout f8233a;

    /* renamed from: b */
    private final /* synthetic */ FrameLayout f8234b;

    /* renamed from: c */
    private final /* synthetic */ Context f8235c;

    /* renamed from: d */
    private final /* synthetic */ zzup f8236d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public art(zzup zzupVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.f8236d = zzupVar;
        this.f8233a = frameLayout;
        this.f8234b = frameLayout2;
        this.f8235c = context;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    protected final /* synthetic */ zzacm mo4750a() {
        zzup.m3001a(this.f8235c, "native_ad_view_delegate");
        return new zzyh();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzacm mo4749a(zzwd zzwdVar) {
        return zzwdVar.zza(ObjectWrapper.wrap(this.f8233a), ObjectWrapper.wrap(this.f8234b));
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzacm mo4748b() {
        zzaej zzaejVar;
        zzaejVar = this.f8236d.f15582d;
        return zzaejVar.zzb(this.f8235c, this.f8233a, this.f8234b);
    }
}
