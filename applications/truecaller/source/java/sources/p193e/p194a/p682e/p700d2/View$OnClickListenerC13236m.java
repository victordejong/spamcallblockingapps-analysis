package p193e.p194a.p682e.p700d2;

import android.view.View;
import android.widget.LinearLayout;
import com.tenor.android.core.constant.ViewAction;
import s1.z.c.l;
/* renamed from: e.a.e.d2.m */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/m.class */
public final class View$OnClickListenerC13236m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C13238o f38468a;

    /* renamed from: b */
    public final /* synthetic */ String f38469b;

    public View$OnClickListenerC13236m(C13238o c13238o, int i, String str) {
        this.f38468a = c13238o;
        this.f38469b = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C13238o c13238o;
        C13238o c13238o2 = this.f38468a;
        String str = null;
        if (c13238o2.f38476f != null) {
            LinearLayout linearLayout = c13238o2.f38471a;
            if (linearLayout == null) {
                l.l("emojiContainer");
                throw null;
            }
            int childCount = linearLayout.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                LinearLayout linearLayout2 = c13238o2.f38471a;
                if (linearLayout2 == null) {
                    l.l("emojiContainer");
                    throw null;
                }
                View childAt = linearLayout2.getChildAt(i);
                l.d(childAt, ViewAction.VIEW);
                if (l.a(childAt.getTag(), c13238o2.f38476f)) {
                    childAt.setSelected(false);
                    break;
                }
                i++;
            }
        }
        AbstractC13231h abstractC13231h = this.f38468a.f38472b;
        if (abstractC13231h != null) {
            String str2 = this.f38469b;
            if (!l.a(str2, c13238o.f38476f)) {
                str = str2;
            }
            abstractC13231h.mo21987a(str);
        }
    }
}
