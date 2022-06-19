package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import f.a.a;
/* renamed from: androidx.appcompat.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/s.class */
public class C0130s extends RatingBar {

    /* renamed from: f */
    private final C0127q f574f;

    public C0130s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.G);
    }

    public C0130s(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0128q0.m6489a(this, getContext());
        C0127q c0127q = new C0127q(this);
        this.f574f = c0127q;
        c0127q.m6492c(attributeSet, i);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        synchronized (this) {
            super.onMeasure(i, i2);
            Bitmap m6493b = this.f574f.m6493b();
            if (m6493b != null) {
                setMeasuredDimension(View.resolveSizeAndState(m6493b.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
            }
        }
    }
}
