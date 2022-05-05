package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zze;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaad.class */
public final class zzaad extends zzaai {

    /* renamed from: a */
    private final zze f10799a;

    /* renamed from: b */
    private final String f10800b;

    /* renamed from: c */
    private final String f10801c;

    public zzaad(zze zzeVar, String str, String str2) {
        this.f10799a = zzeVar;
        this.f10800b = str;
        this.f10801c = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final String getContent() {
        return this.f10801c;
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final void recordClick() {
        this.f10799a.zzjr();
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final void recordImpression() {
        this.f10799a.zzjs();
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final void zzn(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper != null) {
            this.f10799a.zzg((View) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final String zzqs() {
        return this.f10800b;
    }
}
