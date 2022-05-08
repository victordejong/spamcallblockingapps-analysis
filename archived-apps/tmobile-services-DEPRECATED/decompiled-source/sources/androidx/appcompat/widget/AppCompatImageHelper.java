package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ImageViewCompat;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatImageHelper.class */
public class AppCompatImageHelper {
    @NonNull

    /* renamed from: a */
    private final ImageView f951a;

    /* renamed from: b */
    private TintInfo f952b;

    /* renamed from: c */
    private TintInfo f953c;

    /* renamed from: d */
    private TintInfo f954d;

    public AppCompatImageHelper(@NonNull ImageView imageView) {
        this.f951a = imageView;
    }

    /* renamed from: a */
    private boolean m21621a(@NonNull Drawable drawable) {
        if (this.f954d == null) {
            this.f954d = new TintInfo();
        }
        TintInfo tintInfo = this.f954d;
        tintInfo.m21266a();
        ColorStateList a = ImageViewCompat.m18901a(this.f951a);
        if (a != null) {
            tintInfo.f1354d = true;
            tintInfo.f1351a = a;
        }
        PorterDuff.Mode b = ImageViewCompat.m18900b(this.f951a);
        if (b != null) {
            tintInfo.f1353c = true;
            tintInfo.f1352b = b;
        }
        if (!tintInfo.f1354d && !tintInfo.f1353c) {
            return false;
        }
        AppCompatDrawableManager.m21630i(drawable, tintInfo, this.f951a.getDrawableState());
        return true;
    }

    /* renamed from: j */
    private boolean m21612j() {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        if (i <= 21) {
            return i == 21;
        }
        if (this.f952b == null) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m21620b() {
        Drawable drawable = this.f951a.getDrawable();
        if (drawable != null) {
            DrawableUtils.m21504b(drawable);
        }
        if (drawable == null) {
            return;
        }
        if (!m21612j() || !m21621a(drawable)) {
            TintInfo tintInfo = this.f953c;
            if (tintInfo != null) {
                AppCompatDrawableManager.m21630i(drawable, tintInfo, this.f951a.getDrawableState());
                return;
            }
            TintInfo tintInfo2 = this.f952b;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.m21630i(drawable, tintInfo2, this.f951a.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public ColorStateList m21619c() {
        TintInfo tintInfo = this.f953c;
        return tintInfo != null ? tintInfo.f1351a : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public PorterDuff.Mode m21618d() {
        TintInfo tintInfo = this.f953c;
        return tintInfo != null ? tintInfo.f1352b : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m21617e() {
        return Build.VERSION.SDK_INT < 21 || !(this.f951a.getBackground() instanceof RippleDrawable);
    }

    /* renamed from: f */
    public void m21616f(AttributeSet attributeSet, int i) {
        TintTypedArray v = TintTypedArray.m21244v(this.f951a.getContext(), attributeSet, C0042R.styleable.AppCompatImageView, i, 0);
        ImageView imageView = this.f951a;
        ViewCompat.m19187l0(imageView, imageView.getContext(), C0042R.styleable.AppCompatImageView, attributeSet, v.m21248r(), i, 0);
        try {
            Drawable drawable = this.f951a.getDrawable();
            Drawable drawable2 = drawable;
            if (drawable == null) {
                int n = v.m21252n(C0042R.styleable.AppCompatImageView_srcCompat, -1);
                drawable2 = drawable;
                if (n != -1) {
                    Drawable d = AppCompatResources.m22069d(this.f951a.getContext(), n);
                    drawable2 = d;
                    if (d != null) {
                        this.f951a.setImageDrawable(d);
                        drawable2 = d;
                    }
                }
            }
            if (drawable2 != null) {
                DrawableUtils.m21504b(drawable2);
            }
            if (v.m21247s(C0042R.styleable.AppCompatImageView_tint)) {
                ImageViewCompat.m18899c(this.f951a, v.m21263c(C0042R.styleable.AppCompatImageView_tint));
            }
            if (v.m21247s(C0042R.styleable.AppCompatImageView_tintMode)) {
                ImageViewCompat.m18898d(this.f951a, DrawableUtils.m21501e(v.m21255k(C0042R.styleable.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            v.m21243w();
        }
    }

    /* renamed from: g */
    public void m21615g(int i) {
        if (i != 0) {
            Drawable d = AppCompatResources.m22069d(this.f951a.getContext(), i);
            if (d != null) {
                DrawableUtils.m21504b(d);
            }
            this.f951a.setImageDrawable(d);
        } else {
            this.f951a.setImageDrawable(null);
        }
        m21620b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m21614h(ColorStateList colorStateList) {
        if (this.f953c == null) {
            this.f953c = new TintInfo();
        }
        TintInfo tintInfo = this.f953c;
        tintInfo.f1351a = colorStateList;
        tintInfo.f1354d = true;
        m21620b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m21613i(PorterDuff.Mode mode) {
        if (this.f953c == null) {
            this.f953c = new TintInfo();
        }
        TintInfo tintInfo = this.f953c;
        tintInfo.f1352b = mode;
        tintInfo.f1353c = true;
        m21620b();
    }
}
