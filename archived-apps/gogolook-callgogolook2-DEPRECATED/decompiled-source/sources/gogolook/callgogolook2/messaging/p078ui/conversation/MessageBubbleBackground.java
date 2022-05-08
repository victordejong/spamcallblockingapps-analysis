package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import gogolook.callgogolook2.R$dimen;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.MessageBubbleBackground */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/MessageBubbleBackground.class */
public class MessageBubbleBackground extends LinearLayout {

    /* renamed from: a */
    public final int f11764a;

    public MessageBubbleBackground(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11764a = context.getResources().getDimensionPixelSize(R$dimen.conversation_bubble_width_snap);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i) - paddingLeft, (int) (Math.ceil((getMeasuredWidth() - paddingLeft) / this.f11764a) * this.f11764a)) + paddingLeft, 1073741824), i2);
    }
}
