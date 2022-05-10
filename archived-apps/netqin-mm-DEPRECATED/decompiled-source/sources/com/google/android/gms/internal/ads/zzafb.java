package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafb.class */
public final class zzafb implements NativeCustomTemplateAd {

    /* renamed from: a */
    public final zzafa f24074a;

    /* renamed from: b */
    public final MediaView f24075b;

    @VisibleForTesting
    public zzafb(zzafa zzafaVar) {
        Context context;
        new VideoController();
        this.f24074a = zzafaVar;
        try {
            context = (Context) ObjectWrapper.m17021Q(zzafaVar.mo14224H1());
        } catch (RemoteException | NullPointerException e) {
            zzbbq.m15855b("", e);
            context = null;
        }
        MediaView mediaView = null;
        if (context != null) {
            mediaView = new MediaView(context);
            try {
                if (!this.f24074a.mo14211w(ObjectWrapper.m17020a(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                zzbbq.m15855b("", e2);
                mediaView = null;
            }
        }
        this.f24075b = mediaView;
    }

    /* renamed from: a */
    public final zzafa m16808a() {
        return this.f24074a;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    /* renamed from: c0 */
    public final String mo16807c0() {
        try {
            return this.f24074a.mo14221c0();
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
            return null;
        }
    }
}
