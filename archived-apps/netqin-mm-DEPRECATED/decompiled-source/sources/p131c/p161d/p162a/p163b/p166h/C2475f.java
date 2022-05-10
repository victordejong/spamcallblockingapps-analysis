package p131c.p161d.p162a.p163b.p166h;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.ads.formats.NativeAd;
/* renamed from: c.d.a.b.h.f */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/f.class */
public class C2475f extends NativeAd.Image {

    /* renamed from: a */
    public final Drawable f9439a;

    /* renamed from: b */
    public final Uri f9440b;

    /* renamed from: c */
    public final double f9441c;

    public C2475f(Drawable drawable, Uri uri, double d) {
        this.f9439a = drawable;
        this.f9440b = uri;
        this.f9441c = d;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Drawable getDrawable() {
        return this.f9439a;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public double getScale() {
        return this.f9441c;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public Uri getUri() {
        return this.f9440b;
    }
}
