package p193e.p194a.p947k.p948a.p963j;

import android.view.View;
import com.truecaller.videocallerid.p187ui.utils.ToastWithActionView;
import s1.s;
import s1.z.b.a;
/* renamed from: e.a.k.a.j.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/j/i.class */
public final class View$OnClickListenerC15815i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ ToastWithActionView f44611a;

    public View$OnClickListenerC15815i(ToastWithActionView toastWithActionView) {
        this.f44611a = toastWithActionView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        a<s> gotItClickListener = this.f44611a.getGotItClickListener();
        if (gotItClickListener != null) {
            s sVar = (s) gotItClickListener.invoke();
        }
        this.f44611a.m34453h(0L, null);
    }
}
