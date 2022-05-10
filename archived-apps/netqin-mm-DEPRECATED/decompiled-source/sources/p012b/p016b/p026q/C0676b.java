package p012b.p016b.p026q;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.ActionBarContainer;
/* renamed from: b.b.q.b */
/* loaded from: classes-dex2jar.jar:b/b/q/b.class */
public class C0676b extends Drawable {

    /* renamed from: a */
    public final ActionBarContainer f3360a;

    public C0676b(ActionBarContainer actionBarContainer) {
        this.f3360a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        ActionBarContainer actionBarContainer = this.f3360a;
        if (actionBarContainer.f409h) {
            Drawable drawable = actionBarContainer.f408g;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f406e;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        ActionBarContainer actionBarContainer2 = this.f3360a;
        Drawable drawable3 = actionBarContainer2.f407f;
        if (drawable3 != null && actionBarContainer2.f410i) {
            drawable3.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        ActionBarContainer actionBarContainer = this.f3360a;
        if (actionBarContainer.f409h) {
            Drawable drawable = actionBarContainer.f408g;
            if (drawable != null) {
                drawable.getOutline(outline);
                return;
            }
            return;
        }
        Drawable drawable2 = actionBarContainer.f406e;
        if (drawable2 != null) {
            drawable2.getOutline(outline);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
