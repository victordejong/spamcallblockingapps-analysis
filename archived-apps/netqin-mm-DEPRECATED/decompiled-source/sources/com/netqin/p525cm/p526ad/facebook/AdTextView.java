package com.netqin.p525cm.p526ad.facebook;

import android.content.Context;
import android.graphics.RectF;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatTextView;
import p131c.p431l.p432a.p468n.C6850i;
/* renamed from: com.netqin.cm.ad.facebook.AdTextView */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/ad/facebook/AdTextView.class */
public class AdTextView extends AppCompatTextView {

    /* renamed from: e */
    public final RectF f35220e = new RectF();

    public AdTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Layout layout = getLayout();
        if (layout == null) {
            return super.onTouchEvent(motionEvent);
        }
        for (int i = 0; i < layout.getLineCount(); i++) {
            this.f35220e.set(layout.getLineLeft(i), layout.getLineTop(i), layout.getLineRight(i), layout.getLineBottom(i));
            if (this.f35220e.contains(x, y)) {
                return super.onTouchEvent(motionEvent);
            }
        }
        C6850i.m19580a("AdTextView 收到点击事件,但点击位置无内容");
        return false;
    }
}
