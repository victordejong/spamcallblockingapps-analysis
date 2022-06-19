package p193e.p194a.p372b0.p373a.p382d0;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* renamed from: e.a.b0.a.d0.h */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/d0/h.class */
public final class C8298h extends ViewOutlineProvider {
    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (view == null || outline == null) {
            return;
        }
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getHeight() / 2.0f);
    }
}
