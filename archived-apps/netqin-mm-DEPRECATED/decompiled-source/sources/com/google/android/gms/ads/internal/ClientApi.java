package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzq;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.overlay.zzy;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzael;
import com.google.android.gms.internal.ads.zzanb;
import com.google.android.gms.internal.ads.zzaqp;
import com.google.android.gms.internal.ads.zzaqy;
import com.google.android.gms.internal.ads.zzarn;
import com.google.android.gms.internal.ads.zzaud;
import com.google.android.gms.internal.ads.zzauy;
import com.google.android.gms.internal.ads.zzaxl;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbix;
import com.google.android.gms.internal.ads.zzcez;
import com.google.android.gms.internal.ads.zzcfc;
import com.google.android.gms.internal.ads.zzczh;
import com.google.android.gms.internal.ads.zzczj;
import com.google.android.gms.internal.ads.zzczu;
import com.google.android.gms.internal.ads.zzdju;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzwm;
import com.google.android.gms.internal.ads.zzwz;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzxo;
import com.google.android.gms.internal.ads.zzxs;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends zzxo {
    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: H */
    public final zzarn mo11139H(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: M */
    public final zzxs mo11138M(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: a */
    public final zzaqp mo11137a(IObjectWrapper iObjectWrapper, zzanb zzanbVar, int i) {
        return zzbix.m15430a((Context) ObjectWrapper.m17021Q(iObjectWrapper), zzanbVar, i).mo15361r();
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: a */
    public final zzwz mo11134a(IObjectWrapper iObjectWrapper, String str, zzanb zzanbVar, int i) {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        return new zzczh(zzbix.m15430a(context, zzanbVar, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: a */
    public final zzxc mo11136a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, int i) {
        return new zzj((Context) ObjectWrapper.m17021Q(iObjectWrapper), zzvnVar, str, new zzbbx(202510000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: a */
    public final zzxc mo11135a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, zzanb zzanbVar, int i) {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        zzdju a = zzbix.m15430a(context, zzanbVar, i).mo15375k().mo13547a(str).mo13548a(context).mo13549a();
        return i >= ((Integer) zzwm.m11166e().m16921a(zzabb.f23912x2)).intValue() ? a.mo13559b() : a.mo13560a();
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: b */
    public final zzael mo11133b(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzcez((View) ObjectWrapper.m17021Q(iObjectWrapper), (HashMap) ObjectWrapper.m17021Q(iObjectWrapper2), (HashMap) ObjectWrapper.m17021Q(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: b */
    public final zzauy mo11130b(IObjectWrapper iObjectWrapper, String str, zzanb zzanbVar, int i) {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        return zzbix.m15430a(context, zzanbVar, i).mo15367o().mo13480a(context).mo13479a(str).mo13481a().mo13477b();
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: b */
    public final zzaxl mo11132b(IObjectWrapper iObjectWrapper, zzanb zzanbVar, int i) {
        return zzbix.m15430a((Context) ObjectWrapper.m17021Q(iObjectWrapper), zzanbVar, i).mo15363q();
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: b */
    public final zzxc mo11131b(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, zzanb zzanbVar, int i) {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        return new zzczj(zzbix.m15430a(context, zzanbVar, i), context, zzvnVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: c */
    public final zzaud mo11129c(IObjectWrapper iObjectWrapper, zzanb zzanbVar, int i) {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        return zzbix.m15430a(context, zzanbVar, i).mo15367o().mo13480a(context).mo13481a().mo13478a();
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: c */
    public final zzxc mo11128c(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, zzanb zzanbVar, int i) {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        return new zzczu(zzbix.m15430a(context, zzanbVar, i), context, zzvnVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: d */
    public final zzaei mo11126d(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzcfc((FrameLayout) ObjectWrapper.m17021Q(iObjectWrapper), (FrameLayout) ObjectWrapper.m17021Q(iObjectWrapper2), 202510000);
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: d */
    public final zzxs mo11127d(IObjectWrapper iObjectWrapper, int i) {
        return zzbix.m15431a((Context) ObjectWrapper.m17021Q(iObjectWrapper), i).mo15383g();
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: f */
    public final zzaqy mo11125f(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.m17021Q(iObjectWrapper);
        AdOverlayInfoParcel a = AdOverlayInfoParcel.m18022a(activity.getIntent());
        if (a == null) {
            return new zzt(activity);
        }
        int i = a.f22739k;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new zzt(activity) : new zzs(activity, a) : new zzy(activity) : new zzz(activity) : new zzq(activity);
    }
}
