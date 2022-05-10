package p131c.p161d.p170b.p188c.p196c1;

import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import com.mopub.mobileads.resource.DrawableConstants;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.c1.a */
/* loaded from: classes-dex2jar.jar:c/d/b/c/c1/a.class */
public final class C2761a {

    /* renamed from: g */
    public static final C2761a f10071g = new C2761a(-1, DrawableConstants.CtaButton.BACKGROUND_COLOR, 0, 0, -1, null);

    /* renamed from: a */
    public final int f10072a;

    /* renamed from: b */
    public final int f10073b;

    /* renamed from: c */
    public final int f10074c;

    /* renamed from: d */
    public final int f10075d;

    /* renamed from: e */
    public final int f10076e;

    /* renamed from: f */
    public final Typeface f10077f;

    public C2761a(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        this.f10072a = i;
        this.f10073b = i2;
        this.f10074c = i3;
        this.f10075d = i4;
        this.f10076e = i5;
        this.f10077f = typeface;
    }

    /* renamed from: a */
    public static C2761a m29083a(CaptioningManager.CaptionStyle captionStyle) {
        return C2885h0.f10477a >= 21 ? m29081c(captionStyle) : m29082b(captionStyle);
    }

    /* renamed from: b */
    public static C2761a m29082b(CaptioningManager.CaptionStyle captionStyle) {
        return new C2761a(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    /* renamed from: c */
    public static C2761a m29081c(CaptioningManager.CaptionStyle captionStyle) {
        return new C2761a(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f10071g.f10072a, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f10071g.f10073b, captionStyle.hasWindowColor() ? captionStyle.windowColor : f10071g.f10074c, captionStyle.hasEdgeType() ? captionStyle.edgeType : f10071g.f10075d, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f10071g.f10076e, captionStyle.getTypeface());
    }
}
