package androidx.appcompat.widget;

import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0$e.class */
class i0$e implements View.OnTouchListener {

    /* renamed from: f */
    final /* synthetic */ i0 f513f;

    i0$e(i0 i0Var) {
        this.f513f = i0Var;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        PopupWindow popupWindow;
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 0 && (popupWindow = this.f513f.J) != null && popupWindow.isShowing() && x >= 0 && x < this.f513f.J.getWidth() && y >= 0 && y < this.f513f.J.getHeight()) {
            i0 i0Var = this.f513f;
            i0Var.F.postDelayed(i0Var.B, 250L);
            return false;
        } else if (action != 1) {
            return false;
        } else {
            i0 i0Var2 = this.f513f;
            i0Var2.F.removeCallbacks(i0Var2.B);
            return false;
        }
    }
}
