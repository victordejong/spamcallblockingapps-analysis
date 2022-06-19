package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: androidx.core.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/e.class */
public class C0241e {
    /* renamed from: a */
    public static ColorStateList m5892a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        return imageView instanceof AbstractC0248l ? ((AbstractC0248l) imageView).getSupportImageTintList() : null;
    }

    /* renamed from: b */
    public static PorterDuff.Mode m5891b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        return imageView instanceof AbstractC0248l ? ((AbstractC0248l) imageView).getSupportImageTintMode() : null;
    }

    /* renamed from: c */
    public static void m5890c(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (!(imageView instanceof AbstractC0248l)) {
                return;
            }
            ((AbstractC0248l) imageView).setSupportImageTintList(colorStateList);
            return;
        }
        imageView.setImageTintList(colorStateList);
        if (i != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(imageView.getDrawableState());
        }
        imageView.setImageDrawable(drawable);
    }

    /* renamed from: d */
    public static void m5889d(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (!(imageView instanceof AbstractC0248l)) {
                return;
            }
            ((AbstractC0248l) imageView).setSupportImageTintMode(mode);
            return;
        }
        imageView.setImageTintMode(mode);
        if (i != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(imageView.getDrawableState());
        }
        imageView.setImageDrawable(drawable);
    }
}
