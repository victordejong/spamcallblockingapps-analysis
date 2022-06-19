package p193e.p194a.p372b0.p373a.p378c;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* renamed from: e.a.b0.a.c.g */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/g.class */
public final class C8268g extends ViewOutlineProvider {
    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (view == null || outline == null) {
            return;
        }
        outline.setOval(0, 0, view.getWidth(), view.getWidth());
    }
}
