package p193e.p194a.p717f.p718a.p719a;

import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.truecaller.incallui.C4013R;
import s1.z.c.l;
import s1.z.c.y;
/* renamed from: e.a.f.a.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/c.class */
public final class View$OnTouchListenerC13524c implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ MotionLayout f39213a;

    /* renamed from: b */
    public final /* synthetic */ C13519a f39214b;

    /* renamed from: c */
    public final /* synthetic */ y f39215c;

    /* renamed from: d */
    public final /* synthetic */ y f39216d;

    public View$OnTouchListenerC13524c(MotionLayout motionLayout, C13519a c13519a, y yVar, y yVar2) {
        this.f39213a = motionLayout;
        this.f39214b = c13519a;
        this.f39215c = yVar;
        this.f39216d = yVar2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        l.d(motionEvent, "event");
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f39216d.a = true;
            return false;
        } else if (action != 1) {
            return false;
        } else {
            if (this.f39215c.a || this.f39213a.getCurrentState() == C4013R.C4015id.incoming_incallui_answer_end_set) {
                C13519a.m21715hB(this.f39214b);
                this.f39215c.a = false;
            }
            this.f39216d.a = false;
            return false;
        }
    }
}
