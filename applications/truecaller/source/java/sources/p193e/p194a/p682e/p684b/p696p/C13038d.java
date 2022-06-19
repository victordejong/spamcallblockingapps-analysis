package p193e.p194a.p682e.p684b.p696p;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* renamed from: e.a.e.b.p.d */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/p/d.class */
public final class C13038d extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ float f37871a;

    public C13038d(float f) {
        this.f37871a = f;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (view == null || outline == null) {
            return;
        }
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f37871a);
    }
}
