package androidx.media2.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.widget.SubtitleController;
import androidx.media2.widget.SubtitleTrack;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/SubtitleAnchorView.class */
public class SubtitleAnchorView extends View implements SubtitleController.Anchor {
    public static final String TAG = "SubtitleAnchorView";
    public SubtitleTrack.RenderingWidget mSubtitleWidget;
    public SubtitleTrack.RenderingWidget.OnChangedListener mSubtitlesChangedListener;

    public SubtitleAnchorView(Context context) {
        this(context, null);
    }

    public SubtitleAnchorView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SubtitleAnchorView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.SubtitleAnchorView";
    }

    @Override // androidx.media2.widget.SubtitleController.Anchor
    public Looper getSubtitleLooper() {
        return Looper.getMainLooper();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        SubtitleTrack.RenderingWidget renderingWidget = this.mSubtitleWidget;
        if (renderingWidget != null) {
            renderingWidget.onAttachedToWindow();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SubtitleTrack.RenderingWidget renderingWidget = this.mSubtitleWidget;
        if (renderingWidget != null) {
            renderingWidget.onDetachedFromWindow();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mSubtitleWidget != null) {
            int save = canvas.save();
            canvas.translate(getPaddingLeft(), getPaddingTop());
            this.mSubtitleWidget.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mSubtitleWidget != null) {
            int width = getWidth();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int height = getHeight();
            int paddingTop = getPaddingTop();
            this.mSubtitleWidget.setSize((width - paddingLeft) - paddingRight, (height - paddingTop) - getPaddingBottom());
        }
    }

    @Override // androidx.media2.widget.SubtitleController.Anchor
    public void setSubtitleWidget(SubtitleTrack.RenderingWidget renderingWidget) {
        if (this.mSubtitleWidget != renderingWidget) {
            boolean isAttachedToWindow = isAttachedToWindow();
            SubtitleTrack.RenderingWidget renderingWidget2 = this.mSubtitleWidget;
            if (renderingWidget2 != null) {
                if (isAttachedToWindow) {
                    renderingWidget2.onDetachedFromWindow();
                }
                this.mSubtitleWidget.setOnChangedListener(null);
            }
            this.mSubtitleWidget = renderingWidget;
            if (renderingWidget != null) {
                if (this.mSubtitlesChangedListener == null) {
                    this.mSubtitlesChangedListener = new SubtitleTrack.RenderingWidget.OnChangedListener() { // from class: androidx.media2.widget.SubtitleAnchorView.1
                        @Override // androidx.media2.widget.SubtitleTrack.RenderingWidget.OnChangedListener
                        public void onChanged(@NonNull SubtitleTrack.RenderingWidget renderingWidget3) {
                            SubtitleAnchorView.this.invalidate();
                        }
                    };
                }
                setWillNotDraw(false);
                renderingWidget.setOnChangedListener(this.mSubtitlesChangedListener);
                if (isAttachedToWindow) {
                    renderingWidget.onAttachedToWindow();
                    requestLayout();
                }
            } else {
                setWillNotDraw(true);
            }
            invalidate();
        }
    }
}
