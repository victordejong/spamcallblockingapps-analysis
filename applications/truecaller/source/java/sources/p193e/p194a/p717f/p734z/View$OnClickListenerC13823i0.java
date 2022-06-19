package p193e.p194a.p717f.p734z;

import android.view.View;
import com.truecaller.incallui.utils.OngoingCallActionButton;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.f.z.i0 */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/i0.class */
public final class View$OnClickListenerC13823i0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ OngoingCallActionButton f40085a;

    public View$OnClickListenerC13823i0(OngoingCallActionButton ongoingCallActionButton) {
        this.f40085a = ongoingCallActionButton;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        p<View, Boolean, s> onClickListener = this.f40085a.getOnClickListener();
        if (onClickListener != null) {
            l.d(view, "it");
            s sVar = (s) onClickListener.k(view, Boolean.FALSE);
        }
    }
}
