package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.appcompat.C0247a;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.core.widget.AbstractC0790n;
import androidx.core.widget.C0782g;
/* renamed from: androidx.appcompat.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t.class */
public final class C0522t {

    /* renamed from: a */
    private final ImageView f2442a;

    /* renamed from: b */
    private C0482bk f2443b;

    /* renamed from: c */
    private C0482bk f2444c;

    /* renamed from: d */
    private C0482bk f2445d;

    public C0522t(ImageView imageView) {
        this.f2442a = imageView;
    }

    /* renamed from: a */
    private boolean m8970a(Drawable drawable) {
        if (this.f2445d == null) {
            this.f2445d = new C0482bk();
        }
        C0482bk bkVar = this.f2445d;
        bkVar.m9101a();
        ColorStateList a = C0782g.m8141a(this.f2442a);
        if (a != null) {
            bkVar.f2334d = true;
            bkVar.f2331a = a;
        }
        PorterDuff.Mode b = C0782g.m8140b(this.f2442a);
        if (b != null) {
            bkVar.f2333c = true;
            bkVar.f2332b = b;
        }
        if (!bkVar.f2334d && !bkVar.f2333c) {
            return false;
        }
        C0519q.m8988a(drawable, bkVar, this.f2442a.getDrawableState());
        return true;
    }

    /* renamed from: e */
    private boolean m8965e() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f2443b != null : i == 21;
    }

    /* renamed from: a */
    public final void m8973a(int i) {
        if (i != 0) {
            Drawable b = C0258a.m9951b(this.f2442a.getContext(), i);
            if (b != null) {
                C0437ah.m9170b(b);
            }
            this.f2442a.setImageDrawable(b);
        } else {
            this.f2442a.setImageDrawable(null);
        }
        m8966d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8972a(ColorStateList colorStateList) {
        if (this.f2444c == null) {
            this.f2444c = new C0482bk();
        }
        C0482bk bkVar = this.f2444c;
        bkVar.f2331a = colorStateList;
        bkVar.f2334d = true;
        m8966d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8971a(PorterDuff.Mode mode) {
        if (this.f2444c == null) {
            this.f2444c = new C0482bk();
        }
        C0482bk bkVar = this.f2444c;
        bkVar.f2332b = mode;
        bkVar.f2333c = true;
        m8966d();
    }

    /* renamed from: a */
    public final void m8969a(AttributeSet attributeSet, int i) {
        Drawable drawable;
        Drawable drawable2;
        C0484bm a = C0484bm.m9092a(this.f2442a.getContext(), attributeSet, C0247a.C0257j.f759T, i, 0);
        try {
            Drawable drawable3 = this.f2442a.getDrawable();
            Drawable drawable4 = drawable3;
            if (drawable3 == null) {
                int f = a.m9082f(C0247a.C0257j.f760U, -1);
                drawable4 = drawable3;
                if (f != -1) {
                    Drawable b = C0258a.m9951b(this.f2442a.getContext(), f);
                    drawable4 = b;
                    if (b != null) {
                        this.f2442a.setImageDrawable(b);
                        drawable4 = b;
                    }
                }
            }
            if (drawable4 != null) {
                C0437ah.m9170b(drawable4);
            }
            if (a.m9079i(C0247a.C0257j.f761V)) {
                ImageView imageView = this.f2442a;
                ColorStateList f2 = a.m9083f(C0247a.C0257j.f761V);
                if (Build.VERSION.SDK_INT >= 21) {
                    imageView.setImageTintList(f2);
                    if (!(Build.VERSION.SDK_INT != 21 || (drawable2 = imageView.getDrawable()) == null || imageView.getImageTintList() == null)) {
                        if (drawable2.isStateful()) {
                            drawable2.setState(imageView.getDrawableState());
                        }
                        imageView.setImageDrawable(drawable2);
                    }
                } else if (imageView instanceof AbstractC0790n) {
                    ((AbstractC0790n) imageView).mo1167b(f2);
                }
            }
            if (a.m9079i(C0247a.C0257j.f762W)) {
                ImageView imageView2 = this.f2442a;
                PorterDuff.Mode a2 = C0437ah.m9172a(a.m9097a(C0247a.C0257j.f762W, -1), null);
                if (Build.VERSION.SDK_INT >= 21) {
                    imageView2.setImageTintMode(a2);
                    if (!(Build.VERSION.SDK_INT != 21 || (drawable = imageView2.getDrawable()) == null || imageView2.getImageTintList() == null)) {
                        if (drawable.isStateful()) {
                            drawable.setState(imageView2.getDrawableState());
                        }
                        imageView2.setImageDrawable(drawable);
                    }
                } else if (imageView2 instanceof AbstractC0790n) {
                    ((AbstractC0790n) imageView2).mo1166b(a2);
                }
            }
        } finally {
            a.m9100a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m8974a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f2442a.getBackground() instanceof RippleDrawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final ColorStateList m8968b() {
        C0482bk bkVar = this.f2444c;
        if (bkVar != null) {
            return bkVar.f2331a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final PorterDuff.Mode m8967c() {
        C0482bk bkVar = this.f2444c;
        if (bkVar != null) {
            return bkVar.f2332b;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m8966d() {
        Drawable drawable = this.f2442a.getDrawable();
        if (drawable != null) {
            C0437ah.m9170b(drawable);
        }
        if (drawable == null) {
            return;
        }
        if (!m8965e() || !m8970a(drawable)) {
            C0482bk bkVar = this.f2444c;
            if (bkVar != null) {
                C0519q.m8988a(drawable, bkVar, this.f2442a.getDrawableState());
                return;
            }
            C0482bk bkVar2 = this.f2443b;
            if (bkVar2 != null) {
                C0519q.m8988a(drawable, bkVar2, this.f2442a.getDrawableState());
            }
        }
    }
}
