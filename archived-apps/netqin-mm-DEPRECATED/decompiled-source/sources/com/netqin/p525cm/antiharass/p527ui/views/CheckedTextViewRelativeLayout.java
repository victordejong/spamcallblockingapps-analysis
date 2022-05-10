package com.netqin.p525cm.antiharass.p527ui.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.CheckedTextView;
import android.widget.RelativeLayout;
/* renamed from: com.netqin.cm.antiharass.ui.views.CheckedTextViewRelativeLayout */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/antiharass/ui/views/CheckedTextViewRelativeLayout.class */
public class CheckedTextViewRelativeLayout extends RelativeLayout implements Checkable {

    /* renamed from: a */
    public CheckedTextView f35594a;

    public CheckedTextViewRelativeLayout(Context context) {
        super(context);
    }

    public CheckedTextViewRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CheckedTextViewRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f35594a.isChecked();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f35594a = (CheckedTextView) findViewById(2131230887);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.f35594a.setChecked(z);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f35594a.toggle();
    }
}
