package p193e.p194a.p749f3;

import android.view.MotionEvent;
import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.callbubbles.CallBubblesContainerView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import s1.z.c.l;
/* renamed from: e.a.f3.j */
/* loaded from: classes6-dex2jar.jar:e/a/f3/j.class */
public final class View$OnTouchListenerC13914j implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ CallBubblesContainerView f40307a;

    public View$OnTouchListenerC13914j(CallBubblesContainerView callBubblesContainerView) {
        this.f40307a = callBubblesContainerView;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        AvatarXView avatarXView;
        View$OnTouchListenerC13905a bubbleIconTouchListener;
        CallBubblesContainerView callBubblesContainerView = this.f40307a;
        if (!callBubblesContainerView.f10555g) {
            return false;
        }
        avatarXView = callBubblesContainerView.getAvatarXView();
        avatarXView.dispatchTouchEvent(motionEvent);
        bubbleIconTouchListener = this.f40307a.getBubbleIconTouchListener();
        l.d(view, ViewAction.VIEW);
        l.d(motionEvent, "event");
        bubbleIconTouchListener.onTouch(view, motionEvent);
        return false;
    }
}
