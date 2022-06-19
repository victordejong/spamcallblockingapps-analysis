package p193e.p194a.p717f.p734z;

import android.view.View;
import android.widget.CompoundButton;
import com.truecaller.incallui.utils.OngoingCallActionButton;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.f.z.j0 */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/j0.class */
public final class C13825j0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ OngoingCallActionButton f40086a;

    public C13825j0(OngoingCallActionButton ongoingCallActionButton) {
        this.f40086a = ongoingCallActionButton;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        p<View, Boolean, s> onClickListener = this.f40086a.getOnClickListener();
        if (onClickListener != null) {
            l.d(compoundButton, "buttonView");
            s sVar = (s) onClickListener.k(compoundButton, Boolean.valueOf(z));
        }
    }
}
