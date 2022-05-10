package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabr.class */
public final class zzabr extends zzabw {

    /* renamed from: a */
    public final zzg f23945a;

    /* renamed from: b */
    public final String f23946b;

    /* renamed from: c */
    public final String f23947c;

    public zzabr(zzg zzgVar, String str, String str2) {
        this.f23945a = zzgVar;
        this.f23946b = str;
        this.f23947c = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: E0 */
    public final String mo16880E0() {
        return this.f23946b;
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: J0 */
    public final void mo16879J0() {
        this.f23945a.mo13761b();
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: l */
    public final void mo16878l(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper != null) {
            this.f23945a.mo13763a((View) ObjectWrapper.m17021Q(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: m */
    public final void mo16877m() {
        this.f23945a.mo13764a();
    }

    @Override // com.google.android.gms.internal.ads.zzabt
    /* renamed from: o1 */
    public final String mo16876o1() {
        return this.f23947c;
    }
}
