package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AbstractC0441aj;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/FitWindowsFrameLayout.class */
public class FitWindowsFrameLayout extends FrameLayout implements AbstractC0441aj {

    /* renamed from: a */
    private AbstractC0441aj.AbstractC0442a f1947a;

    public FitWindowsFrameLayout(Context context) {
        super(context);
    }

    public FitWindowsFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.appcompat.widget.AbstractC0441aj
    /* renamed from: a */
    public final void mo9164a(AbstractC0441aj.AbstractC0442a aVar) {
        this.f1947a = aVar;
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        AbstractC0441aj.AbstractC0442a aVar = this.f1947a;
        if (aVar != null) {
            aVar.mo9163a(rect);
        }
        return super.fitSystemWindows(rect);
    }
}
