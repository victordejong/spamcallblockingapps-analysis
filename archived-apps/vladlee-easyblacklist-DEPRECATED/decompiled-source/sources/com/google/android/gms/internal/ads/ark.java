package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ark.class */
public final class ark extends aru<zzasg> {

    /* renamed from: a */
    private final /* synthetic */ Context f8198a;

    /* renamed from: b */
    private final /* synthetic */ String f8199b;

    /* renamed from: c */
    private final /* synthetic */ zzalc f8200c;

    /* renamed from: d */
    private final /* synthetic */ zzup f8201d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ark(zzup zzupVar, Context context, String str, zzalc zzalcVar) {
        this.f8201d = zzupVar;
        this.f8198a = context;
        this.f8199b = str;
        this.f8200c = zzalcVar;
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    protected final /* synthetic */ zzasg mo4750a() {
        zzup.m3001a(this.f8198a, "rewarded");
        return new zzyj();
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: a */
    public final /* synthetic */ zzasg mo4749a(zzwd zzwdVar) {
        return zzwdVar.zzb(ObjectWrapper.wrap(this.f8198a), this.f8199b, this.f8200c, 19649000);
    }

    @Override // com.google.android.gms.internal.ads.aru
    /* renamed from: b */
    public final /* synthetic */ zzasg mo4748b() {
        return zzasw.zzd(this.f8198a, this.f8199b, this.f8200c);
    }
}
