package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
/* renamed from: androidx.appcompat.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b.class */
class C0094b extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f456a;

    public C0094b(ActionBarContainer actionBarContainer) {
        this.f456a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f456a;
        if (actionBarContainer.f317m) {
            Drawable drawable = actionBarContainer.f316l;
            if (drawable == null) {
                return;
            }
            drawable.draw(canvas);
            return;
        }
        Drawable drawable2 = actionBarContainer.f314j;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f456a;
        Drawable drawable3 = actionBarContainer2.f315k;
        if (drawable3 == null || !actionBarContainer2.f318n) {
            return;
        }
        drawable3.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f456a;
        if (actionBarContainer.f317m) {
            Drawable drawable = actionBarContainer.f316l;
            if (drawable == null) {
                return;
            }
            drawable.getOutline(outline);
            return;
        }
        Drawable drawable2 = actionBarContainer.f314j;
        if (drawable2 == null) {
            return;
        }
        drawable2.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
