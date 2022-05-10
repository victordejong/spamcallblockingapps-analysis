package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.RelativeLayout;
import p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a.C5626a;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/layout/FiamRelativeLayout.class */
public class FiamRelativeLayout extends RelativeLayout {

    /* renamed from: a */
    public C5626a f30986a;

    public FiamRelativeLayout(Context context) {
        super(context);
    }

    public FiamRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FiamRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public FiamRelativeLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Boolean a = this.f30986a.m23386a(keyEvent);
        return a != null ? a.booleanValue() : super.dispatchKeyEvent(keyEvent);
    }

    public void setDismissListener(View.OnClickListener onClickListener) {
        this.f30986a = new C5626a(this, onClickListener);
    }
}
