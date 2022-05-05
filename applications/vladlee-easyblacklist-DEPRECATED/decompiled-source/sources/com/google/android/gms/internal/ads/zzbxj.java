package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdAssetNames;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxj.class */
public final class zzbxj {

    /* renamed from: a */
    private final Context f12647a;

    /* renamed from: b */
    private final zzavu f12648b;

    /* renamed from: c */
    private final zzczu f12649c;

    /* renamed from: d */
    private final zzbww f12650d;

    /* renamed from: e */
    private final zzbws f12651e;

    /* renamed from: f */
    private final zzbxr f12652f;

    /* renamed from: g */
    private final Executor f12653g;

    /* renamed from: h */
    private final Executor f12654h;

    /* renamed from: i */
    private final zzaby f12655i;

    /* renamed from: j */
    private final zzbwq f12656j;

    public zzbxj(Context context, zzavu zzavuVar, zzczu zzczuVar, zzbww zzbwwVar, zzbws zzbwsVar, zzbxr zzbxrVar, Executor executor, Executor executor2, zzbwq zzbwqVar) {
        this.f12647a = context;
        this.f12648b = zzavuVar;
        this.f12649c = zzczuVar;
        this.f12655i = zzczuVar.zzddz;
        this.f12650d = zzbwwVar;
        this.f12651e = zzbwsVar;
        this.f12652f = zzbxrVar;
        this.f12653g = executor;
        this.f12654h = executor2;
        this.f12656j = zzbwqVar;
    }

    /* renamed from: a */
    private static void m3862a(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ boolean m3860a(zzbxz zzbxzVar, String[] strArr) {
        Map<String, WeakReference<View>> zzaka = zzbxzVar.zzaka();
        if (zzaka == null) {
            return false;
        }
        for (String str : strArr) {
            if (zzaka.get(str) != null) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3863a(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.f12651e.zzaje() == null) {
            return;
        }
        if (2 == this.f12651e.zzaja() || 1 == this.f12651e.zzaja()) {
            this.f12648b.zza(this.f12649c.zzgmm, String.valueOf(this.f12651e.zzaja()), z);
        } else if (6 == this.f12651e.zzaja()) {
            this.f12648b.zza(this.f12649c.zzgmm, "2", z);
            this.f12648b.zza(this.f12649c.zzgmm, "1", z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3861a(zzbxz zzbxzVar) {
        ViewGroup viewGroup;
        View view;
        final ViewGroup viewGroup2;
        IObjectWrapper iObjectWrapper;
        Drawable drawable;
        int i = 0;
        IObjectWrapper iObjectWrapper2 = null;
        if (this.f12650d.zzajo() || this.f12650d.zzajn()) {
            for (int i2 = 0; i2 < 2; i2++) {
                View zzgb = zzbxzVar.zzgb(new String[]{NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, UnifiedNativeAdAssetNames.ASSET_ADCHOICES_CONTAINER_VIEW}[i2]);
                if (zzgb != null && (zzgb instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzgb;
                    break;
                }
            }
        }
        viewGroup = null;
        boolean z = viewGroup != null;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.f12651e.zzajb() != null) {
            View zzajb = this.f12651e.zzajb();
            zzaby zzabyVar = this.f12655i;
            if (zzabyVar == null) {
                view = zzajb;
            } else {
                view = zzajb;
                if (!z) {
                    m3862a(layoutParams, zzabyVar.zzbjz);
                    zzajb.setLayoutParams(layoutParams);
                    view = zzajb;
                }
            }
        } else if (!(this.f12651e.zzrh() instanceof zzabp)) {
            view = null;
        } else {
            zzabp zzabpVar = (zzabp) this.f12651e.zzrh();
            if (!z) {
                m3862a(layoutParams, zzabpVar.zzra());
            }
            view = new zzabs(this.f12647a, zzabpVar, layoutParams);
            view.setContentDescription((CharSequence) zzve.zzoy().zzd(zzzn.zzcme));
        }
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            if (z) {
                viewGroup.removeAllViews();
                viewGroup.addView(view);
            } else {
                AdChoicesView adChoicesView = new AdChoicesView(zzbxzVar.zzaga().getContext());
                adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                adChoicesView.addView(view);
                FrameLayout zzakd = zzbxzVar.zzakd();
                if (zzakd != null) {
                    zzakd.addView(adChoicesView);
                }
            }
            zzbxzVar.zza(zzbxzVar.zzakc(), view, true);
        }
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcqc)).booleanValue()) {
            zzc(zzbxzVar);
        }
        String[] strArr = zzbxh.zzfna;
        int length = strArr.length;
        while (true) {
            if (i >= length) {
                viewGroup2 = null;
                break;
            }
            View zzgb2 = zzbxzVar.zzgb(strArr[i]);
            if (zzgb2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzgb2;
                break;
            }
            i++;
        }
        this.f12654h.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.oa

            /* renamed from: a */
            private final zzbxj f10261a;

            /* renamed from: b */
            private final ViewGroup f10262b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10261a = this;
                this.f10262b = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10261a.m3863a(this.f10262b);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (!zza(viewGroup2)) {
            viewGroup2.removeAllViews();
            View zzaga = zzbxzVar.zzaga();
            Context context = zzaga != null ? zzaga.getContext() : null;
            if (context != null) {
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzcmd)).booleanValue()) {
                    zzacd zzrq = this.f12656j.zzrq();
                    if (zzrq != null) {
                        try {
                            iObjectWrapper = zzrq.zzre();
                        } catch (RemoteException e) {
                            zzavs.zzez("Could not get main image drawable");
                            return;
                        }
                    } else {
                        return;
                    }
                } else {
                    zzaci zzajc = this.f12651e.zzajc();
                    if (zzajc != null) {
                        try {
                            iObjectWrapper = zzajc.zzrc();
                        } catch (RemoteException e2) {
                            zzavs.zzez("Could not get drawable from image");
                            return;
                        }
                    } else {
                        return;
                    }
                }
                if (!(iObjectWrapper == null || (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper)) == null)) {
                    ImageView imageView = new ImageView(context);
                    imageView.setImageDrawable(drawable);
                    if (zzbxzVar != null) {
                        iObjectWrapper2 = zzbxzVar.zzakf();
                    }
                    imageView.setScaleType((iObjectWrapper2 == null || !((Boolean) zzve.zzoy().zzd(zzzn.zzcqe)).booleanValue()) ? ImageView.ScaleType.CENTER_INSIDE : (ImageView.ScaleType) ObjectWrapper.unwrap(iObjectWrapper2));
                    imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    viewGroup2.addView(imageView);
                }
            }
        } else if (this.f12651e.zzajf() != null) {
            this.f12651e.zzajf().zza(new C2108oc(this, zzbxzVar, viewGroup2));
        }
    }

    public final void zza(final zzbxz zzbxzVar) {
        this.f12653g.execute(new Runnable(this, zzbxzVar) { // from class: com.google.android.gms.internal.ads.ob

            /* renamed from: a */
            private final zzbxj f10263a;

            /* renamed from: b */
            private final zzbxz f10264b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10263a = this;
                this.f10264b = zzbxzVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10263a.m3861a(this.f10264b);
            }
        });
    }

    public final boolean zza(ViewGroup viewGroup) {
        View zzaje = this.f12651e.zzaje();
        if (zzaje == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzaje.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzaje.getParent()).removeView(zzaje);
        }
        viewGroup.addView(zzaje, ((Boolean) zzve.zzoy().zzd(zzzn.zzcmh)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final void zzc(zzbxz zzbxzVar) {
        if (zzbxzVar != null && this.f12652f != null && zzbxzVar.zzakd() != null) {
            if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcqd)).booleanValue() || this.f12650d.zzajm()) {
                try {
                    zzbxzVar.zzakd().addView(this.f12652f.zzakj());
                } catch (zzbdv e) {
                    zzavs.zza("web view can not be obtained", e);
                }
            }
        }
    }
}
