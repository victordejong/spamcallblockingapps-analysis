package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
/* renamed from: androidx.appcompat.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b.class */
final class C0470b extends Drawable {

    /* renamed from: a */
    final ActionBarContainer f2292a;

    public C0470b(ActionBarContainer actionBarContainer) {
        this.f2292a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!this.f2292a.f1763d) {
            if (this.f2292a.f1760a != null) {
                this.f2292a.f1760a.draw(canvas);
            }
            if (this.f2292a.f1761b != null && this.f2292a.f1764e) {
                this.f2292a.f1761b.draw(canvas);
            }
        } else if (this.f2292a.f1762c != null) {
            this.f2292a.f1762c.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f2292a.f1763d) {
            if (this.f2292a.f1762c != null) {
                this.f2292a.f1762c.getOutline(outline);
            }
        } else if (this.f2292a.f1760a != null) {
            this.f2292a.f1760a.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
