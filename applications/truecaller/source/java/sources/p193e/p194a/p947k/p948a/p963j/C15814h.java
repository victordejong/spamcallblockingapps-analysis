package p193e.p194a.p947k.p948a.p963j;

import android.animation.Animator;
import android.widget.PopupWindow;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import s1.s;
import s1.z.b.a;
/* renamed from: e.a.k.a.j.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/j/h.class */
public final class C15814h implements Animator.AnimatorListener {

    /* renamed from: a */
    public final /* synthetic */ ToastWithActionView f44609a;

    /* renamed from: b */
    public final /* synthetic */ PopupWindow f44610b;

    public C15814h(ToastWithActionView toastWithActionView, PopupWindow popupWindow) {
        this.f44609a = toastWithActionView;
        this.f44610b = popupWindow;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f44610b.dismiss();
        a<s> dismissListener = this.f44609a.getDismissListener();
        if (dismissListener != null) {
            s sVar = (s) dismissListener.invoke();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
