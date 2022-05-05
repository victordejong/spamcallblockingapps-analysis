package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadf.class */
public final class zzadf implements NativeCustomTemplateAd {

    /* renamed from: a */
    private static WeakHashMap<IBinder, zzadf> f10866a = new WeakHashMap<>();

    /* renamed from: b */
    private final zzade f10867b;

    /* renamed from: c */
    private final MediaView f10868c;

    /* renamed from: d */
    private final VideoController f10869d = new VideoController();

    /* renamed from: e */
    private NativeCustomTemplateAd.DisplayOpenMeasurement f10870e;

    private zzadf(zzade zzadeVar) {
        Context context;
        this.f10867b = zzadeVar;
        try {
            context = (Context) ObjectWrapper.unwrap(zzadeVar.zzrk());
        } catch (RemoteException | NullPointerException e) {
            zzayu.zzc("", e);
            context = null;
        }
        MediaView mediaView = null;
        if (context != null) {
            mediaView = new MediaView(context);
            try {
                if (!this.f10867b.zzp(ObjectWrapper.wrap(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                zzayu.zzc("", e2);
                mediaView = null;
            }
        }
        this.f10868c = mediaView;
    }

    public static zzadf zza(zzade zzadeVar) {
        synchronized (f10866a) {
            zzadf zzadfVar = f10866a.get(zzadeVar.asBinder());
            if (zzadfVar != null) {
                return zzadfVar;
            }
            zzadf zzadfVar2 = new zzadf(zzadeVar);
            f10866a.put(zzadeVar.asBinder(), zzadfVar2);
            return zzadfVar2;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void destroy() {
        try {
            this.f10867b.destroy();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.f10867b.getAvailableAssetNames();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String getCustomTemplateId() {
        try {
            return this.f10867b.getCustomTemplateId();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeCustomTemplateAd.DisplayOpenMeasurement getDisplayOpenMeasurement() {
        try {
            if (this.f10870e == null && this.f10867b.zzrl()) {
                this.f10870e = new zzace(this.f10867b);
            }
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
        return this.f10870e;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeAd.Image getImage(String str) {
        try {
            zzaci zzcu = this.f10867b.zzcu(str);
            if (zzcu != null) {
                return new zzacj(zzcu);
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final CharSequence getText(String str) {
        try {
            return this.f10867b.zzct(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final VideoController getVideoController() {
        try {
            zzxb videoController = this.f10867b.getVideoController();
            if (videoController != null) {
                this.f10869d.zza(videoController);
            }
        } catch (RemoteException e) {
            zzayu.zzc("Exception occurred while getting video controller", e);
        }
        return this.f10869d;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final MediaView getVideoMediaView() {
        return this.f10868c;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void performClick(String str) {
        try {
            this.f10867b.performClick(str);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void recordImpression() {
        try {
            this.f10867b.recordImpression();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    public final zzade zzro() {
        return this.f10867b;
    }
}
