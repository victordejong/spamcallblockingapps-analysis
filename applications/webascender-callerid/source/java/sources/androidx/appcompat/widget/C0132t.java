package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import f.a.a;
/* renamed from: androidx.appcompat.widget.t */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/t.class */
public class C0132t extends SeekBar {

    /* renamed from: f */
    private final u f579f;

    public C0132t(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.I);
    }

    public C0132t(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0128q0.m6489a(this, getContext());
        u uVar = new u(this);
        this.f579f = uVar;
        uVar.c(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f579f.h();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f579f.i();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            this.f579f.g(canvas);
        }
    }
}
