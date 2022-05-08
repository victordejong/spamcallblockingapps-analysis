package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0247a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSeekBar.class */
public class AppCompatSeekBar extends SeekBar {

    /* renamed from: a */
    private final C0524v f1909a;

    public AppCompatSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f554L);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1909a = new C0524v(this);
        this.f1909a.mo8961a(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f1909a.m8959c();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f1909a.m8960b();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            this.f1909a.m8962a(canvas);
        }
    }
}
