package androidx.media2.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import androidx.media2.widget.SubtitleTrack;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/ClosedCaptionWidget.class */
public abstract class ClosedCaptionWidget extends ViewGroup implements SubtitleTrack.RenderingWidget {
    public CaptioningManager.CaptionStyle mCaptionStyle;
    public final CaptioningManager.CaptioningChangeListener mCaptioningListener;
    public ClosedCaptionLayout mClosedCaptionLayout;
    public boolean mHasChangeListener;
    public SubtitleTrack.RenderingWidget.OnChangedListener mListener;
    public final CaptioningManager mManager;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/ClosedCaptionWidget$ClosedCaptionLayout.class */
    public interface ClosedCaptionLayout {
        void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle);

        void setFontScale(float f);
    }

    public ClosedCaptionWidget(Context context) {
        this(context, null);
    }

    public ClosedCaptionWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClosedCaptionWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mCaptioningListener = new CaptioningManager.CaptioningChangeListener() { // from class: androidx.media2.widget.ClosedCaptionWidget.1
            @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
            public void onFontScaleChanged(float f) {
                ClosedCaptionWidget.this.mClosedCaptionLayout.setFontScale(f);
            }

            @Override // android.view.accessibility.CaptioningManager.CaptioningChangeListener
            public void onUserStyleChanged(CaptioningManager.CaptionStyle captionStyle) {
                ClosedCaptionWidget closedCaptionWidget = ClosedCaptionWidget.this;
                closedCaptionWidget.mCaptionStyle = captionStyle;
                closedCaptionWidget.mClosedCaptionLayout.setCaptionStyle(closedCaptionWidget.mCaptionStyle);
            }
        };
        setLayerType(1, null);
        this.mManager = (CaptioningManager) context.getSystemService("captioning");
        this.mCaptionStyle = this.mManager.getUserStyle();
        this.mClosedCaptionLayout = createCaptionLayout(context);
        this.mClosedCaptionLayout.setCaptionStyle(this.mCaptionStyle);
        this.mClosedCaptionLayout.setFontScale(this.mManager.getFontScale());
        addView((ViewGroup) this.mClosedCaptionLayout, -1, -1);
        requestLayout();
    }

    private void manageChangeListener() {
        boolean z = isAttachedToWindow() && getVisibility() == 0;
        if (this.mHasChangeListener != z) {
            this.mHasChangeListener = z;
            if (z) {
                this.mManager.addCaptioningChangeListener(this.mCaptioningListener);
            } else {
                this.mManager.removeCaptioningChangeListener(this.mCaptioningListener);
            }
        }
    }

    public abstract ClosedCaptionLayout createCaptionLayout(Context context);

    @Override // android.view.ViewGroup, android.view.View, androidx.media2.widget.SubtitleTrack.RenderingWidget
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        manageChangeListener();
    }

    @Override // android.view.ViewGroup, android.view.View, androidx.media2.widget.SubtitleTrack.RenderingWidget
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        manageChangeListener();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ((ViewGroup) this.mClosedCaptionLayout).layout(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        ((ViewGroup) this.mClosedCaptionLayout).measure(i, i2);
    }

    @Override // androidx.media2.widget.SubtitleTrack.RenderingWidget
    public void setOnChangedListener(SubtitleTrack.RenderingWidget.OnChangedListener onChangedListener) {
        this.mListener = onChangedListener;
    }

    @Override // androidx.media2.widget.SubtitleTrack.RenderingWidget
    public void setSize(int i, int i2) {
        measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        layout(0, 0, i, i2);
    }

    @Override // androidx.media2.widget.SubtitleTrack.RenderingWidget
    public void setVisible(boolean z) {
        if (z) {
            setVisibility(0);
        } else {
            setVisibility(8);
        }
        manageChangeListener();
    }
}
