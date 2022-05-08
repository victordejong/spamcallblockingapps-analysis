package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import java.util.List;
import java.util.WeakHashMap;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.o8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/o8.class */
public final class C7350o8 implements NativeCustomTemplateAd {

    /* renamed from: d */
    public static WeakHashMap<IBinder, C7350o8> f17416d = new WeakHashMap<>();

    /* renamed from: a */
    public final AbstractC7326m8 f17417a;

    /* renamed from: b */
    public final MediaView f17418b;

    /* renamed from: c */
    public final VideoController f17419c = new VideoController();

    public C7350o8(AbstractC7326m8 m8Var) {
        Context context;
        this.f17417a = m8Var;
        try {
            context = (Context) BinderC7110d.m21059A(m8Var.mo20785f0());
        } catch (RemoteException | NullPointerException e) {
            C7452x1.m20571b("", e);
            context = null;
        }
        MediaView mediaView = null;
        if (context != null) {
            mediaView = new MediaView(context);
            try {
                if (!this.f17417a.mo20783y(BinderC7110d.m21058a(mediaView))) {
                    mediaView = null;
                }
            } catch (RemoteException e2) {
                C7452x1.m20571b("", e2);
                mediaView = null;
            }
        }
        this.f17418b = mediaView;
    }

    /* renamed from: a */
    public static C7350o8 m20739a(AbstractC7326m8 m8Var) {
        synchronized (f17416d) {
            C7350o8 o8Var = f17416d.get(m8Var.asBinder());
            if (o8Var != null) {
                return o8Var;
            }
            C7350o8 o8Var2 = new C7350o8(m8Var);
            f17416d.put(m8Var.asBinder(), o8Var2);
            return o8Var2;
        }
    }

    /* renamed from: a */
    public final AbstractC7326m8 m20740a() {
        return this.f17417a;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void destroy() {
        try {
            this.f17417a.destroy();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final List<String> getAvailableAssetNames() {
        try {
            return this.f17417a.getAvailableAssetNames();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final String getCustomTemplateId() {
        try {
            return this.f17417a.getCustomTemplateId();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final NativeAd.Image getImage(String str) {
        try {
            AbstractC7398s7 n = this.f17417a.mo20784n(str);
            if (n != null) {
                return new C7434v7(n);
            }
            return null;
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final CharSequence getText(String str) {
        try {
            return this.f17417a.mo20786f(str);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final VideoController getVideoController() {
        try {
            AbstractC7359p5 videoController = this.f17417a.getVideoController();
            if (videoController != null) {
                this.f17419c.zza(videoController);
            }
        } catch (RemoteException e) {
            C7452x1.m20571b("Exception occurred while getting video controller", e);
        }
        return this.f17419c;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final MediaView getVideoMediaView() {
        return this.f17418b;
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void performClick(String str) {
        try {
            this.f17417a.performClick(str);
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd
    public final void recordImpression() {
        try {
            this.f17417a.recordImpression();
        } catch (RemoteException e) {
            C7452x1.m20571b("", e);
        }
    }
}
