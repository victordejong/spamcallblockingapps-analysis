package p193e.p194a.p619d.p628c.p633a0;

import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import com.truecaller.voip.C4781R;
import java.util.Objects;
import p193e.p194a.p619d.p654s.C11787c;
import s1.z.c.l;
import s1.z.c.y;
/* renamed from: e.a.d.c.a0.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/c.class */
public final class View$OnTouchListenerC11253c implements View.OnTouchListener {

    /* renamed from: a */
    public final /* synthetic */ C11787c f33196a;

    /* renamed from: b */
    public final /* synthetic */ y f33197b;

    /* renamed from: c */
    public final /* synthetic */ C11249b f33198c;

    public View$OnTouchListenerC11253c(C11787c c11787c, y yVar, C11249b c11249b) {
        this.f33196a = c11787c;
        this.f33197b = yVar;
        this.f33198c = c11249b;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        l.d(motionEvent, "event");
        int action = motionEvent.getAction();
        boolean z = true;
        if (action == 0) {
            this.f33197b.a = true;
            return false;
        } else if (action != 1) {
            return false;
        } else {
            C11249b c11249b = this.f33198c;
            MotionLayout motionLayout = this.f33196a.f34635d;
            l.d(motionLayout, "motionLayout");
            s1.a.l[] lVarArr = C11249b.f33185i;
            Objects.requireNonNull(c11249b);
            if (motionLayout.getCurrentState() != C4781R.C4783id.incoming_call_answer_end_set) {
                z = false;
            }
            if (z) {
                ((C11259i) this.f33198c.m24966RA()).m24951Kj();
            }
            this.f33197b.a = false;
            return false;
        }
    }
}
