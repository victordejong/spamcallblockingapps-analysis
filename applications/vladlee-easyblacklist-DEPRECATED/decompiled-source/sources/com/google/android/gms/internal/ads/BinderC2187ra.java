package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.ra */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ra.class */
public final class BinderC2187ra extends zzags {

    /* renamed from: a */
    private final /* synthetic */ Object f10396a;

    /* renamed from: b */
    private final /* synthetic */ String f10397b;

    /* renamed from: c */
    private final /* synthetic */ long f10398c;

    /* renamed from: d */
    private final /* synthetic */ zzazl f10399d;

    /* renamed from: e */
    private final /* synthetic */ zzceq f10400e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BinderC2187ra(zzceq zzceqVar, Object obj, String str, long j, zzazl zzazlVar) {
        this.f10400e = zzceqVar;
        this.f10396a = obj;
        this.f10397b = str;
        this.f10398c = j;
        this.f10399d = zzazlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzagp
    public final void onInitializationFailed(String str) {
        zzcea zzceaVar;
        synchronized (this.f10396a) {
            this.f10400e.m3794a(this.f10397b, false, str, (int) (zzq.zzkx().elapsedRealtime() - this.f10398c));
            zzceaVar = this.f10400e.f13059k;
            zzceaVar.zzq(this.f10397b, "error");
            this.f10399d.set(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzagp
    public final void onInitializationSucceeded() {
        zzcea zzceaVar;
        synchronized (this.f10396a) {
            this.f10400e.m3794a(this.f10397b, true, "", (int) (zzq.zzkx().elapsedRealtime() - this.f10398c));
            zzceaVar = this.f10400e.f13059k;
            zzceaVar.zzge(this.f10397b);
            this.f10399d.set(Boolean.TRUE);
        }
    }
}
