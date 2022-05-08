package android.support.v4.a.a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.Gravity;
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a/i.class */
final class i extends h {
    /* JADX INFO: Access modifiers changed from: protected */
    public i(Resources resources, Bitmap bitmap) {
        super(resources, bitmap);
    }

    @Override // android.support.v4.a.a.h
    final void a(int i, int i2, int i3, Rect rect, Rect rect2) {
        Gravity.apply(i, i2, i3, rect, rect2, 0);
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        a();
        outline.setRoundRect(this.e, this.d);
    }
}
