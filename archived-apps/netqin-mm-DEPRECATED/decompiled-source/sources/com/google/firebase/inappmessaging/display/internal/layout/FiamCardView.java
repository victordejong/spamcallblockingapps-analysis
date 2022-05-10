package com.google.firebase.inappmessaging.display.internal.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import androidx.cardview.widget.CardView;
import p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a.C5626a;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/inappmessaging/display/internal/layout/FiamCardView.class */
public class FiamCardView extends CardView {

    /* renamed from: j */
    public C5626a f30984j;

    public FiamCardView(Context context) {
        super(context);
    }

    public FiamCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FiamCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        Boolean a = this.f30984j.m23386a(keyEvent);
        return a != null ? a.booleanValue() : super.dispatchKeyEvent(keyEvent);
    }

    public void setDismissListener(View.OnClickListener onClickListener) {
        this.f30984j = new C5626a(this, onClickListener);
    }
}
