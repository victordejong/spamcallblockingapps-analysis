package p193e.p194a.p982k0.p989n.p991b;

import android.content.Context;
import android.util.AttributeSet;
import android.view.WindowManager;
import android.widget.FrameLayout;
/* renamed from: e.a.k0.n.b.f */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/f.class */
public class C16370f extends FrameLayout {

    /* renamed from: a */
    public WindowManager f46038a;

    /* renamed from: b */
    public WindowManager.LayoutParams f46039b;

    /* renamed from: c */
    public C16372h f46040c;

    public C16370f(Context context) {
        super(context);
    }

    public C16370f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public C16372h getLayoutCoordinator() {
        return this.f46040c;
    }

    public WindowManager.LayoutParams getViewParams() {
        return this.f46039b;
    }

    public WindowManager getWindowManager() {
        return this.f46038a;
    }

    public void setLayoutCoordinator(C16372h c16372h) {
        this.f46040c = c16372h;
    }

    public void setViewParams(WindowManager.LayoutParams layoutParams) {
        this.f46039b = layoutParams;
    }

    public void setWindowManager(WindowManager windowManager) {
        this.f46038a = windowManager;
    }
}
