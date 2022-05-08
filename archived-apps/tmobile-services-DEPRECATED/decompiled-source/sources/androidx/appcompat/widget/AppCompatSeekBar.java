package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0042R;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSeekBar.class */
public class AppCompatSeekBar extends SeekBar {

    /* renamed from: f */
    private final AppCompatSeekBarHelper f967f;

    public AppCompatSeekBar(@NonNull Context context) {
        this(context, null);
    }

    public AppCompatSeekBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.seekBarStyle);
    }

    public AppCompatSeekBar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        ThemeUtils.m21274a(this, getContext());
        AppCompatSeekBarHelper appCompatSeekBarHelper = new AppCompatSeekBarHelper(this);
        this.f967f = appCompatSeekBarHelper;
        appCompatSeekBarHelper.mo21605c(attributeSet, i);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f967f.m21602h();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f967f.m21601i();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
            this.f967f.m21603g(canvas);
        }
    }
}
