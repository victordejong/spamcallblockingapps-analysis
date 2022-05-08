package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: androidx.core.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/g.class */
public final class C0782g {
    /* renamed from: a */
    public static ColorStateList m8141a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        if (imageView instanceof AbstractC0790n) {
            return ((AbstractC0790n) imageView).mo1163c();
        }
        return null;
    }

    /* renamed from: b */
    public static PorterDuff.Mode m8140b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        if (imageView instanceof AbstractC0790n) {
            return ((AbstractC0790n) imageView).mo1158d();
        }
        return null;
    }
}
