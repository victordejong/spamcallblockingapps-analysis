package com.apptentive.android.sdk.view;

import android.content.Context;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/view/AutoResizeTextView.class */
public class AutoResizeTextView extends TextView {
    private boolean mAddEllipsis;
    private float mMaxTextSize;
    private float mMinTextSize;
    private boolean mNeedsResize;
    private float mSpacingAdd;
    private float mSpacingMult;
    private OnTextResizeListener mTextResizeListener;
    private float mTextSize;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/view/AutoResizeTextView$OnTextResizeListener.class */
    public interface OnTextResizeListener {
        void onTextResize(TextView textView, float f, float f2);
    }

    public AutoResizeTextView(Context context) {
        this(context, null);
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AutoResizeTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mNeedsResize = false;
        this.mMaxTextSize = 0.0f;
        this.mMinTextSize = 20.0f;
        this.mSpacingMult = 1.0f;
        this.mSpacingAdd = 0.0f;
        this.mAddEllipsis = true;
        this.mTextSize = getTextSize();
    }

    private int getTextHeight(CharSequence charSequence, TextPaint textPaint, int i, float f) {
        TextPaint textPaint2 = new TextPaint(textPaint);
        textPaint2.setTextSize(f);
        return new StaticLayout(charSequence, textPaint2, i, Layout.Alignment.ALIGN_NORMAL, this.mSpacingMult, this.mSpacingAdd, true).getHeight();
    }

    public boolean getAddEllipsis() {
        return this.mAddEllipsis;
    }

    public float getMaxTextSize() {
        return this.mMaxTextSize;
    }

    public float getMinTextSize() {
        return this.mMinTextSize;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z || this.mNeedsResize) {
            resizeText(((i3 - i) - getCompoundPaddingLeft()) - getCompoundPaddingRight(), ((i4 - i2) - getCompoundPaddingBottom()) - getCompoundPaddingTop());
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i != i3 || i2 != i4) {
            this.mNeedsResize = true;
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.mNeedsResize = true;
        resetTextSize();
    }

    public void resetTextSize() {
        float f = this.mTextSize;
        if (f > 0.0f) {
            super.setTextSize(0, f);
            this.mMaxTextSize = this.mTextSize;
        }
    }

    public void resizeText(int i, int i2) {
        CharSequence text = getText();
        if (text != null && text.length() != 0 && i2 > 0 && i > 0 && this.mTextSize != 0.0f) {
            CharSequence charSequence = text;
            if (getTransformationMethod() != null) {
                charSequence = getTransformationMethod().getTransformation(text, this);
            }
            TextPaint paint = getPaint();
            float textSize = paint.getTextSize();
            float f = this.mMaxTextSize;
            float min = f > 0.0f ? Math.min(this.mTextSize, f) : this.mTextSize;
            int textHeight = getTextHeight(charSequence, paint, i, min);
            while (textHeight > i2) {
                float f2 = this.mMinTextSize;
                if (min <= f2) {
                    break;
                }
                min = Math.max(min - 2.0f, f2);
                textHeight = getTextHeight(charSequence, paint, i, min);
            }
            if (this.mAddEllipsis && min == this.mMinTextSize && textHeight > i2) {
                StaticLayout staticLayout = new StaticLayout(charSequence, new TextPaint(paint), i, Layout.Alignment.ALIGN_NORMAL, this.mSpacingMult, this.mSpacingAdd, false);
                if (staticLayout.getLineCount() > 0) {
                    int lineForVertical = staticLayout.getLineForVertical(i2) - 1;
                    if (lineForVertical < 0) {
                        setText("");
                    } else {
                        int lineStart = staticLayout.getLineStart(lineForVertical);
                        int lineEnd = staticLayout.getLineEnd(lineForVertical);
                        float lineWidth = staticLayout.getLineWidth(lineForVertical);
                        float measureText = paint.measureText("...");
                        while (i < lineWidth + measureText) {
                            lineEnd--;
                            lineWidth = paint.measureText(charSequence.subSequence(lineStart, lineEnd + 1).toString());
                        }
                        setText(((Object) charSequence.subSequence(0, lineEnd)) + "...");
                    }
                }
            }
            setTextSize(0, min);
            setLineSpacing(this.mSpacingAdd, this.mSpacingMult);
            OnTextResizeListener onTextResizeListener = this.mTextResizeListener;
            if (onTextResizeListener != null) {
                onTextResizeListener.onTextResize(this, textSize, min);
            }
            this.mNeedsResize = false;
        }
    }

    public void setAddEllipsis(boolean z) {
        this.mAddEllipsis = z;
    }

    @Override // android.widget.TextView
    public void setLineSpacing(float f, float f2) {
        super.setLineSpacing(f, f2);
        this.mSpacingMult = f2;
        this.mSpacingAdd = f;
    }

    public void setMaxTextSize(float f) {
        this.mMaxTextSize = f;
        requestLayout();
        invalidate();
    }

    public void setMinTextSize(float f) {
        this.mMinTextSize = f;
        requestLayout();
        invalidate();
    }

    public void setOnResizeListener(OnTextResizeListener onTextResizeListener) {
        this.mTextResizeListener = onTextResizeListener;
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        super.setTextSize(f);
        this.mTextSize = getTextSize();
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        this.mTextSize = getTextSize();
    }
}
