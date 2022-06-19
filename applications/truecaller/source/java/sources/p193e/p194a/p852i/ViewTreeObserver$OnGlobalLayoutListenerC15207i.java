package p193e.p194a.p852i;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAd;
import com.truecaller.ads.C2808R;
import p1727n3.p1795i.p1802c.C26389d;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.d0.j;
/* renamed from: e.a.i.i */
/* loaded from: classes2-dex2jar.jar:e/a/i/i.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC15207i implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ View f43275a;

    /* renamed from: b */
    public final /* synthetic */ MediaView f43276b;

    /* renamed from: c */
    public final /* synthetic */ NativeAd.Image f43277c;

    /* renamed from: d */
    public final /* synthetic */ ConstraintLayout f43278d;

    /* renamed from: e */
    public final /* synthetic */ float f43279e;

    public ViewTreeObserver$OnGlobalLayoutListenerC15207i(View view, MediaView mediaView, NativeAd.Image image, ConstraintLayout constraintLayout, float f) {
        this.f43275a = view;
        this.f43276b = mediaView;
        this.f43277c = image;
        this.f43278d = constraintLayout;
        this.f43279e = f;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        Drawable drawable;
        this.f43275a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        NativeAd.Image image = this.f43277c;
        float intrinsicWidth = (image == null || (drawable = image.getDrawable()) == null) ? 0.0f : drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        float width = this.f43276b.getWidth() / this.f43276b.getResources().getDimensionPixelSize(C2808R.dimen.ads_mega_image_max_height);
        C26389d c26389d = new C26389d();
        c26389d.m1966e(this.f43278d);
        float f = this.f43279e;
        float f2 = 0;
        if (f > f2) {
            intrinsicWidth = f;
        } else if (intrinsicWidth <= f2) {
            intrinsicWidth = 1.8f;
        }
        int id = this.f43276b.getId();
        StringBuilder sb = new StringBuilder();
        float f3 = 1000;
        float f4 = width;
        if (width > 1.9f) {
            f4 = 1.8f;
        }
        c26389d.m1961j(id).f73891d.f73953w = C22128a.m8697J2(sb, (int) (j.c(intrinsicWidth, f4, 1.9f) * f3), ":1000");
        c26389d.m1969b(this.f43278d);
    }
}
