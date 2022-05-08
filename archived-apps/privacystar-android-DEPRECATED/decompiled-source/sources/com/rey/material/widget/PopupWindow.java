package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import com.rey.material.C1686R;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/PopupWindow.class */
public class PopupWindow extends android.widget.PopupWindow {
    private final boolean mOverlapAnchor;

    public PopupWindow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.PopupWindow, i, 0);
        this.mOverlapAnchor = obtainStyledAttributes.getBoolean(C1686R.styleable.PopupWindow_overlapAnchor, false);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (Build.VERSION.SDK_INT < 21) {
            i3 = i2;
            if (this.mOverlapAnchor) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    @TargetApi(19)
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (Build.VERSION.SDK_INT < 21) {
            i4 = i2;
            if (this.mOverlapAnchor) {
                i4 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i4, i3);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        int i5 = i2;
        if (Build.VERSION.SDK_INT < 21) {
            i5 = i2;
            if (this.mOverlapAnchor) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
