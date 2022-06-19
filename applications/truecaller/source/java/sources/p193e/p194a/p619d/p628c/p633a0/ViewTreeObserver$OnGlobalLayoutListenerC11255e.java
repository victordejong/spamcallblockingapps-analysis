package p193e.p194a.p619d.p628c.p633a0;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.constraintlayout.motion.widget.MotionLayout;
import n3.r.a.l;
import p193e.p194a.p619d.p654s.C11787c;
import p193e.p194a.p682e.C12864a2;
/* renamed from: e.a.d.c.a0.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/e.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC11255e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ View f33202a;

    /* renamed from: b */
    public final /* synthetic */ C11787c f33203b;

    /* renamed from: c */
    public final /* synthetic */ C11249b f33204c;

    public ViewTreeObserver$OnGlobalLayoutListenerC11255e(View view, C11787c c11787c, C11249b c11249b) {
        this.f33202a = view;
        this.f33203b = c11787c;
        this.f33204c = c11249b;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.f33202a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        MotionLayout motionLayout = this.f33203b.f34635d;
        ViewGroup.LayoutParams layoutParams = motionLayout.getLayoutParams();
        l requireActivity = this.f33204c.requireActivity();
        s1.z.c.l.d(requireActivity, "requireActivity()");
        layoutParams.height = (int) (C12864a2.m22542p(requireActivity).heightPixels * 0.3d);
        motionLayout.setLayoutParams(layoutParams);
    }
}
