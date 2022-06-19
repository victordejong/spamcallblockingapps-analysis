package p193e.p194a.p852i.p855b;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.nativead.MediaView;
import com.huawei.hms.opendevice.AbstractC2405c;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004R$\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u0007\u001a\u0004\b\u000e\u0010\t\"\u0004\b\u000f\u0010\u000bR$\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0007\u001a\u0004\b\u0012\u0010\t\"\u0004\b\u0013\u0010\u000bR$\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0007\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000bR.\u0010!\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R$\u0010%\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0007\u001a\u0004\b#\u0010\t\"\u0004\b$\u0010\u000bR$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u0006."}, d2 = {"Le/a/i/b/a;", "Landroid/widget/FrameLayout;", "Ls1/s;", "onAttachedToWindow", "()V", "Landroid/view/View;", "f", "Landroid/view/View;", "getImageView", "()Landroid/view/View;", "setImageView", "(Landroid/view/View;)V", "imageView", AbstractC2405c.f7629a, "getCallToActionView", "setCallToActionView", "callToActionView", "d", "getIconView", "setIconView", "iconView", C22021b.f61237c, "getBodyView", "setBodyView", "bodyView", "Le/a/i/b/b;", "value", "g", "Le/a/i/b/b;", "getNativeAd", "()Le/a/i/b/b;", "setNativeAd", "(Le/a/i/b/b;)V", "nativeAd", "a", "getHeadlineView", "setHeadlineView", "headlineView", "Lcom/google/android/gms/ads/nativead/MediaView;", "e", "Lcom/google/android/gms/ads/nativead/MediaView;", "getMediaView", "()Lcom/google/android/gms/ads/nativead/MediaView;", "setMediaView", "(Lcom/google/android/gms/ads/nativead/MediaView;)V", "mediaView", "ads_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.i.b.a */
/* loaded from: classes3-dex2jar.jar:e/a/i/b/a.class */
public final class C14988a extends FrameLayout {

    /* renamed from: a */
    public View f42765a;

    /* renamed from: b */
    public View f42766b;

    /* renamed from: c */
    public View f42767c;

    /* renamed from: d */
    public View f42768d;

    /* renamed from: e */
    public MediaView f42769e;

    /* renamed from: f */
    public View f42770f;

    /* renamed from: g */
    public C14990b f42771g;

    /* renamed from: e.a.i.b.a$a */
    /* loaded from: classes3-dex2jar.jar:e/a/i/b/a$a.class */
    public static final class View$OnClickListenerC14989a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f42772a;

        /* renamed from: b */
        public final /* synthetic */ Object f42773b;

        public View$OnClickListenerC14989a(int i, Object obj) {
            this.f42772a = i;
            this.f42773b = obj;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f42772a;
            if (i == 0) {
                C14990b c14990b = (C14990b) this.f42773b;
                if (c14990b == null) {
                    return;
                }
                c14990b.m19312a("Body");
            } else if (i == 1) {
                C14990b c14990b2 = (C14990b) this.f42773b;
                if (c14990b2 == null) {
                    return;
                }
                c14990b2.m19312a("Headline");
            } else if (i == 2) {
                C14990b c14990b3 = (C14990b) this.f42773b;
                if (c14990b3 == null) {
                    return;
                }
                c14990b3.m19312a("Body");
            } else if (i == 3) {
                C14990b c14990b4 = (C14990b) this.f42773b;
                if (c14990b4 == null) {
                    return;
                }
                c14990b4.m19312a("Calltoaction");
            } else if (i == 4) {
                C14990b c14990b5 = (C14990b) this.f42773b;
                if (c14990b5 == null) {
                    return;
                }
                c14990b5.m19312a("Secondaryimage");
            } else if (i != 5) {
                throw null;
            } else {
                C14990b c14990b6 = (C14990b) this.f42773b;
                if (c14990b6 == null) {
                    return;
                }
                c14990b6.m19312a("Image");
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C14988a(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p855b.C14988a.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    public final View getBodyView() {
        return this.f42766b;
    }

    public final View getCallToActionView() {
        return this.f42767c;
    }

    public final View getHeadlineView() {
        return this.f42765a;
    }

    public final View getIconView() {
        return this.f42768d;
    }

    public final View getImageView() {
        return this.f42770f;
    }

    public final MediaView getMediaView() {
        return this.f42769e;
    }

    public final C14990b getNativeAd() {
        return this.f42771g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C14990b c14990b = this.f42771g;
        if (c14990b != null) {
            c14990b.f42774a.recordImpression();
        }
    }

    public final void setBodyView(View view) {
        this.f42766b = view;
    }

    public final void setCallToActionView(View view) {
        this.f42767c = view;
    }

    public final void setHeadlineView(View view) {
        this.f42765a = view;
    }

    public final void setIconView(View view) {
        this.f42768d = view;
    }

    public final void setImageView(View view) {
        this.f42770f = view;
    }

    public final void setMediaView(MediaView mediaView) {
        this.f42769e = mediaView;
    }

    public final void setNativeAd(C14990b c14990b) {
        C14990b c14990b2;
        this.f42771g = c14990b;
        setOnClickListener(new View$OnClickListenerC14989a(0, c14990b));
        View view = this.f42765a;
        if (view != null) {
            view.setOnClickListener(new View$OnClickListenerC14989a(1, c14990b));
        }
        View view2 = this.f42766b;
        if (view2 != null) {
            view2.setOnClickListener(new View$OnClickListenerC14989a(2, c14990b));
        }
        View view3 = this.f42767c;
        if (view3 != null) {
            view3.setOnClickListener(new View$OnClickListenerC14989a(3, c14990b));
        }
        View view4 = this.f42768d;
        if (view4 != null) {
            view4.setOnClickListener(new View$OnClickListenerC14989a(4, c14990b));
        }
        View view5 = this.f42770f;
        if (view5 != null) {
            view5.setOnClickListener(new View$OnClickListenerC14989a(5, c14990b));
        }
        if (!isAttachedToWindow() || (c14990b2 = this.f42771g) == null) {
            return;
        }
        c14990b2.f42774a.recordImpression();
    }
}
