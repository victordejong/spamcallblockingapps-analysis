package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.zzua;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzccs.class */
public final class zzccs implements zzbuh, zzbzu {

    /* renamed from: a */
    public final zzawp f25721a;

    /* renamed from: b */
    public final Context f25722b;

    /* renamed from: c */
    public final zzawo f25723c;

    /* renamed from: d */
    public final View f25724d;

    /* renamed from: e */
    public String f25725e;

    /* renamed from: f */
    public final zzua.zza.EnumC10505zza f25726f;

    public zzccs(zzawp zzawpVar, Context context, zzawo zzawoVar, View view, zzua.zza.EnumC10505zza zzaVar) {
        this.f25721a = zzawpVar;
        this.f25722b = context;
        this.f25723c = zzawoVar;
        this.f25724d = view;
        this.f25726f = zzaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: A */
    public final void mo13512A() {
        this.f25721a.m16223a(false);
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: H */
    public final void mo13511H() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: a */
    public final void mo13508a(zzatw zzatwVar, String str, String str2) {
        if (this.f25723c.m16256a(this.f25722b)) {
            try {
                this.f25723c.m16250a(this.f25722b, this.f25723c.m16234e(this.f25722b), this.f25721a.m16222j(), zzatwVar.getType(), zzatwVar.mo16345y());
            } catch (RemoteException e) {
                zzbbq.m15853c("Remote Exception to get reward item.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzu
    /* renamed from: b */
    public final void mo14803b() {
        String b = this.f25723c.m16241b(this.f25722b);
        this.f25725e = b;
        String valueOf = String.valueOf(b);
        String str = this.f25726f == zzua.zza.EnumC10505zza.REWARD_BASED_VIDEO_AD ? "/Rewarded" : "/Interstitial";
        this.f25725e = str.length() != 0 ? valueOf.concat(str) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.zzbzu
    /* renamed from: d */
    public final void mo14802d() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: k */
    public final void mo13497k() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: t */
    public final void mo13496t() {
        View view = this.f25724d;
        if (!(view == null || this.f25725e == null)) {
            this.f25723c.m16237c(view.getContext(), this.f25725e);
        }
        this.f25721a.m16223a(true);
    }
}
