package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeh.class */
public final class zzaeh extends UnifiedNativeAd {

    /* renamed from: a */
    private final zzaeg f10873a;

    /* renamed from: c */
    private final zzacj f10875c;

    /* renamed from: e */
    private final NativeAd.AdChoicesInfo f10877e;

    /* renamed from: b */
    private final List<NativeAd.Image> f10874b = new ArrayList();

    /* renamed from: d */
    private final VideoController f10876d = new VideoController();

    /* renamed from: f */
    private final List<MuteThisAdReason> f10878f = new ArrayList();

    /* JADX WARN: Can't wrap try/catch for region: R(14:2|52|3|(2:5|(7:9|(1:17)(2:13|(1:15)(1:16))|18|(3:60|20|63)(1:62)|61|6|7))|(3:58|23|(2:25|(7:29|(1:31)(1:32)|33|(3:64|35|67)(1:66)|65|26|27)))|(2:56|38)|(7:40|44|54|45|(1:47)|50|51)|43|44|54|45|(0)|50|51) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x015f, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0160, code lost:
        com.google.android.gms.internal.ads.zzayu.zzc("", r5);
        r5 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014b A[Catch: RemoteException -> 0x015f, TRY_LEAVE, TryCatch #1 {RemoteException -> 0x015f, blocks: (B:45:0x013f, B:47:0x014b), top: B:54:0x013f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaeh(com.google.android.gms.internal.ads.zzaeg r5) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaeh.<init>(com.google.android.gms.internal.ads.zzaeg):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final IObjectWrapper mo4431a() {
        try {
            return this.f10873a.zzrf();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void cancelUnconfirmedClick() {
        try {
            this.f10873a.cancelUnconfirmedClick();
        } catch (RemoteException e) {
            zzayu.zzc("Failed to cancelUnconfirmedClick", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void destroy() {
        try {
            this.f10873a.destroy();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void enableCustomClickGesture() {
        try {
            this.f10873a.zzrp();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.AdChoicesInfo getAdChoicesInfo() {
        return this.f10877e;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getAdvertiser() {
        try {
            return this.f10873a.getAdvertiser();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getBody() {
        try {
            return this.f10873a.getBody();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getCallToAction() {
        try {
            return this.f10873a.getCallToAction();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Bundle getExtras() {
        try {
            Bundle extras = this.f10873a.getExtras();
            if (extras != null) {
                return extras;
            }
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getHeadline() {
        try {
            return this.f10873a.getHeadline();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final NativeAd.Image getIcon() {
        return this.f10875c;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<NativeAd.Image> getImages() {
        return this.f10874b;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final UnifiedNativeAd.MediaContent getMediaContent() {
        try {
            if (this.f10873a.zzrq() != null) {
                return new zzaek(this.f10873a.zzrq());
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getMediationAdapterClassName() {
        try {
            return this.f10873a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final List<MuteThisAdReason> getMuteThisAdReasons() {
        return this.f10878f;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getPrice() {
        try {
            return this.f10873a.getPrice();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Double getStarRating() {
        try {
            double starRating = this.f10873a.getStarRating();
            if (starRating == -1.0d) {
                return null;
            }
            return Double.valueOf(starRating);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final String getStore() {
        try {
            return this.f10873a.getStore();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final VideoController getVideoController() {
        try {
            if (this.f10873a.getVideoController() != null) {
                this.f10876d.zza(this.f10873a.getVideoController());
            }
        } catch (RemoteException e) {
            zzayu.zzc("Exception occurred while getting video controller", e);
        }
        return this.f10876d;
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomClickGestureEnabled() {
        try {
            return this.f10873a.isCustomClickGestureEnabled();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean isCustomMuteThisAdEnabled() {
        try {
            return this.f10873a.isCustomMuteThisAdEnabled();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void muteThisAd(MuteThisAdReason muteThisAdReason) {
        try {
            if (!isCustomMuteThisAdEnabled()) {
                zzayu.zzex("Ad is not custom mute enabled");
            } else if (muteThisAdReason == null) {
                this.f10873a.zza((zzwr) null);
            } else if (muteThisAdReason instanceof zzww) {
                this.f10873a.zza(((zzww) muteThisAdReason).zzpi());
            } else {
                zzayu.zzex("Use mute reason from UnifiedNativeAd.getMuteThisAdReasons() or null");
            }
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void performClick(Bundle bundle) {
        try {
            this.f10873a.performClick(bundle);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void recordCustomClickGesture() {
        try {
            this.f10873a.recordCustomClickGesture();
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final boolean recordImpression(Bundle bundle) {
        try {
            return this.f10873a.recordImpression(bundle);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return false;
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void reportTouchEvent(Bundle bundle) {
        try {
            this.f10873a.reportTouchEvent(bundle);
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setMuteThisAdListener(MuteThisAdListener muteThisAdListener) {
        try {
            this.f10873a.zza(new zzws(muteThisAdListener));
        } catch (RemoteException e) {
            zzayu.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final void setUnconfirmedClickListener(UnifiedNativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        try {
            this.f10873a.zza(new zzaeu(unconfirmedClickListener));
        } catch (RemoteException e) {
            zzayu.zzc("Failed to setUnconfirmedClickListener", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.UnifiedNativeAd
    public final Object zzjo() {
        try {
            IObjectWrapper zzri = this.f10873a.zzri();
            if (zzri != null) {
                return ObjectWrapper.unwrap(zzri);
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zzc("", e);
            return null;
        }
    }
}
