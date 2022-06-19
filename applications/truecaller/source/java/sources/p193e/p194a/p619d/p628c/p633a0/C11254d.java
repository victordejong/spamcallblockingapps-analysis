package p193e.p194a.p619d.p628c.p633a0;

import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionLayout$h;
import com.truecaller.voip.C4781R;
import java.util.Objects;
import p193e.p194a.p619d.p654s.C11787c;
import s1.z.c.l;
import s1.z.c.y;
/* renamed from: e.a.d.c.a0.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/d.class */
public final class C11254d implements MotionLayout$h {

    /* renamed from: a */
    public final /* synthetic */ C11787c f33199a;

    /* renamed from: b */
    public final /* synthetic */ y f33200b;

    /* renamed from: c */
    public final /* synthetic */ C11249b f33201c;

    public C11254d(C11787c c11787c, y yVar, C11249b c11249b) {
        this.f33199a = c11787c;
        this.f33200b = yVar;
        this.f33201c = c11249b;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
    /* renamed from: a */
    public void mo2199a(MotionLayout motionLayout, int i, int i2, float f) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
    /* renamed from: b */
    public void mo2198b(MotionLayout motionLayout, int i) {
        C11249b c11249b = this.f33201c;
        MotionLayout motionLayout2 = this.f33199a.f34635d;
        l.d(motionLayout2, "motionLayout");
        s1.a.l[] lVarArr = C11249b.f33185i;
        Objects.requireNonNull(c11249b);
        if (!(motionLayout2.getCurrentState() == C4781R.C4783id.incoming_call_answer_end_set) || this.f33200b.a) {
            return;
        }
        ((C11259i) this.f33201c.m24966RA()).m24951Kj();
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
    /* renamed from: c */
    public void mo2197c(MotionLayout motionLayout, int i, int i2) {
    }

    @Override // androidx.constraintlayout.motion.widget.MotionLayout$h
    /* renamed from: d */
    public void mo2196d(MotionLayout motionLayout, int i, boolean z, float f) {
    }
}
