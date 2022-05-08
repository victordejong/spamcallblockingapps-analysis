package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzr;
import com.google.android.gms.ads.internal.overlay.zzs;
import com.google.android.gms.ads.internal.overlay.zzu;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.overlay.zzz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzacm;
import com.google.android.gms.internal.ads.zzacp;
import com.google.android.gms.internal.ads.zzalc;
import com.google.android.gms.internal.ads.zzaot;
import com.google.android.gms.internal.ads.zzapd;
import com.google.android.gms.internal.ads.zzarl;
import com.google.android.gms.internal.ads.zzasg;
import com.google.android.gms.internal.ads.zzazb;
import com.google.android.gms.internal.ads.zzbfx;
import com.google.android.gms.internal.ads.zzbxh;
import com.google.android.gms.internal.ads.zzbxi;
import com.google.android.gms.internal.ads.zzcom;
import com.google.android.gms.internal.ads.zzcoo;
import com.google.android.gms.internal.ads.zzcor;
import com.google.android.gms.internal.ads.zzuj;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzvu;
import com.google.android.gms.internal.ads.zzwg;
import com.google.android.gms.internal.ads.zzwk;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/ClientApi.class */
public class ClientApi extends zzwg {
    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzacm zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzbxh((FrameLayout) ObjectWrapper.unwrap(iObjectWrapper), (FrameLayout) ObjectWrapper.unwrap(iObjectWrapper2), 19649000);
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzacp zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzbxi((View) ObjectWrapper.unwrap(iObjectWrapper), (HashMap) ObjectWrapper.unwrap(iObjectWrapper2), (HashMap) ObjectWrapper.unwrap(iObjectWrapper3));
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzarl zza(IObjectWrapper iObjectWrapper, zzalc zzalcVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbfx.zza(context, zzalcVar, i).zzacn().zzbu(context).zzaer().zzaep();
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvn zza(IObjectWrapper iObjectWrapper, String str, zzalc zzalcVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcom(zzbfx.zza(context, zzalcVar, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvu zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, int i) {
        return new zzl((Context) ObjectWrapper.unwrap(iObjectWrapper), zzujVar, str, new zzazb(19649000, i, true, false));
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvu zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, zzalc zzalcVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcoo(zzbfx.zza(context, zzalcVar, i), context, zzujVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzwk zza(IObjectWrapper iObjectWrapper, int i) {
        return zzbfx.zzd((Context) ObjectWrapper.unwrap(iObjectWrapper), i).zzacg();
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzaot zzb(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        AdOverlayInfoParcel zzc = AdOverlayInfoParcel.zzc(activity.getIntent());
        if (zzc == null) {
            return new zzr(activity);
        }
        int i = zzc.zzdhv;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? new zzr(activity) : new zzu(activity, zzc) : new zzz(activity) : new zzx(activity) : new zzs(activity);
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzasg zzb(IObjectWrapper iObjectWrapper, String str, zzalc zzalcVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbfx.zza(context, zzalcVar, i).zzacn().zzbu(context).zzfr(str).zzaer().zzaeq();
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvu zzb(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, zzalc zzalcVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return new zzcor(zzbfx.zza(context, zzalcVar, i), context, zzujVar, str);
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzvu zzc(IObjectWrapper iObjectWrapper, zzuj zzujVar, String str, zzalc zzalcVar, int i) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        return zzbfx.zza(context, zzalcVar, i).zzacj().zzfq(str).zzbt(context).zzaeb().zzaea();
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzwk zzc(IObjectWrapper iObjectWrapper) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final zzapd zzd(IObjectWrapper iObjectWrapper) {
        return null;
    }
}
