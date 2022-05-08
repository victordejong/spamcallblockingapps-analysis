package androidx.appcompat.widget;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0054R;
import androidx.core.widget.PopupWindowCompat;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatPopupWindow.class */
public class AppCompatPopupWindow extends PopupWindow {
    public static final boolean COMPAT_OVERLAP_ANCHOR;
    public boolean mOverlapAnchor;

    static {
        COMPAT_OVERLAP_ANCHOR = Build.VERSION.SDK_INT < 21;
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    public AppCompatPopupWindow(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        init(context, attributeSet, i, i2);
    }

    private void init(Context context, AttributeSet attributeSet, int i, int i2) {
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0054R.styleable.PopupWindow, i, i2);
        if (obtainStyledAttributes.hasValue(C0054R.styleable.PopupWindow_overlapAnchor)) {
            setSupportOverlapAnchor(obtainStyledAttributes.getBoolean(C0054R.styleable.PopupWindow_overlapAnchor, false));
        }
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(C0054R.styleable.PopupWindow_android_popupBackground));
        obtainStyledAttributes.recycle();
    }

    private void setSupportOverlapAnchor(boolean z) {
        if (COMPAT_OVERLAP_ANCHOR) {
            this.mOverlapAnchor = z;
        } else {
            PopupWindowCompat.setOverlapAnchor(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        int i3 = i2;
        if (COMPAT_OVERLAP_ANCHOR) {
            i3 = i2;
            if (this.mOverlapAnchor) {
                i3 = i2 - view.getHeight();
            }
        }
        super.showAsDropDown(view, i, i3);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        int i4 = i2;
        if (COMPAT_OVERLAP_ANCHOR) {
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
        if (COMPAT_OVERLAP_ANCHOR) {
            i5 = i2;
            if (this.mOverlapAnchor) {
                i5 = i2 - view.getHeight();
            }
        }
        super.update(view, i, i5, i3, i4);
    }
}
