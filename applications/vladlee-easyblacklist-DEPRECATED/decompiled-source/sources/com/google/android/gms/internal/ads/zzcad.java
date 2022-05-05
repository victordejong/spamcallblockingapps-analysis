package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.p026b.C0542i;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcad.class */
public final class zzcad extends zzadd {

    /* renamed from: a */
    private final Context f12800a;

    /* renamed from: b */
    private final zzbws f12801b;

    /* renamed from: c */
    private final zzbxj f12802c;

    /* renamed from: d */
    private final zzbwk f12803d;

    public zzcad(Context context, zzbws zzbwsVar, zzbxj zzbxjVar, zzbwk zzbwkVar) {
        this.f12800a = context;
        this.f12801b = zzbwsVar;
        this.f12802c = zzbxjVar;
        this.f12803d = zzbwkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void destroy() {
        this.f12803d.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final List<String> getAvailableAssetNames() {
        int i;
        C0542i<String, zzabu> zzaji = this.f12801b.zzaji();
        C0542i<String, String> zzajk = this.f12801b.zzajk();
        String[] strArr = new String[zzaji.size() + zzajk.size()];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 < zzaji.size()) {
                strArr[i4] = zzaji.m8905b(i3);
                i3++;
                i4++;
            }
        }
        while (i2 < zzajk.size()) {
            strArr[i] = zzajk.m8905b(i2);
            i2++;
            i++;
        }
        return Arrays.asList(strArr);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final String getCustomTemplateId() {
        return this.f12801b.getCustomTemplateId();
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzxb getVideoController() {
        return this.f12801b.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void performClick(String str) {
        this.f12803d.zzfu(str);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void recordImpression() {
        this.f12803d.zzaio();
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final String zzct(String str) {
        return this.f12801b.zzajk().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final zzaci zzcu(String str) {
        return this.f12801b.zzaji().get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzp(IObjectWrapper iObjectWrapper) {
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof ViewGroup) || !this.f12802c.zza((ViewGroup) unwrap)) {
            return false;
        }
        this.f12801b.zzajf().zza(new C2144pl(this));
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void zzq(IObjectWrapper iObjectWrapper) {
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if ((unwrap instanceof View) && this.f12801b.zzajh() != null) {
            this.f12803d.zzz((View) unwrap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final IObjectWrapper zzrf() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final IObjectWrapper zzrk() {
        return ObjectWrapper.wrap(this.f12800a);
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzrl() {
        return this.f12803d.zzaiw() && this.f12801b.zzajg() != null && this.f12801b.zzajf() == null;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final boolean zzrm() {
        IObjectWrapper zzajh = this.f12801b.zzajh();
        if (zzajh != null) {
            zzq.zzlf().zzab(zzajh);
            return true;
        }
        zzavs.zzez("Trying to start OMID session before creation.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzade
    public final void zzrn() {
        String zzajj = this.f12801b.zzajj();
        if ("Google".equals(zzajj)) {
            zzavs.zzez("Illegal argument specified for omid partner name.");
        } else {
            this.f12803d.zzg(zzajj, false);
        }
    }
}
