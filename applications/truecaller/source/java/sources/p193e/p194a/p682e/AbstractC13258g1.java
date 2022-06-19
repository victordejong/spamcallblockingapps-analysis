package p193e.p194a.p682e;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.truecaller.C2752R;
import com.truecaller.p183ui.components.FeedbackItemView;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.p699c2.C13188f0;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
/* renamed from: e.a.e.g1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/g1.class */
public abstract class AbstractC13258g1 extends AbstractC13329x0 {
    /* renamed from: WA */
    public ImageView m21977WA() {
        View view = getView();
        return view == null ? null : (ImageView) view.findViewById(C2752R.C2754id.listEmptyImage);
    }

    /* renamed from: XA */
    public TextView m21976XA() {
        View view = getView();
        return view == null ? null : (TextView) view.findViewById(C2752R.C2754id.listEmptySubText);
    }

    /* renamed from: YA */
    public TextView mo10108YA() {
        View view = getView();
        return view == null ? null : (TextView) view.findViewById(C2752R.C2754id.listEmptyText);
    }

    /* renamed from: ZA */
    public void m21975ZA(C13188f0 c13188f0) {
        FeedbackItemView.FeedbackItem m34530c;
        FeedbackItemView.DisplaySource displaySource = FeedbackItemView.DisplaySource.GLOBAL_SEARCH_HISTORY;
        if (c13188f0 == null || displaySource == null || c13188f0.f38311c != null || c13188f0.getItemCount() < 0 || (m34530c = FeedbackItemView.m34530c(displaySource, getActivity())) == null) {
            return;
        }
        if (m34530c.f15758j.shouldClose()) {
            c13188f0.m22000e(null);
            return;
        }
        if (m34530c.f15758j.isInviteState()) {
            C15571h.m18654B("INVITE_LAST_ASKED");
        } else {
            C15571h.m18654B("GOOGLE_REVIEW_ASK_TIMESTAMP");
        }
        c13188f0.m22000e(m34530c);
    }

    /* renamed from: aB */
    public ListView m21974aB() {
        View view = getView();
        return (ListView) (view == null ? null : view.findViewById(2131364633));
    }

    /* renamed from: bB */
    public void m21973bB(CharSequence charSequence, String str, int i) {
        C19045j0.m14196t(mo10108YA(), charSequence);
        C19045j0.m14196t(m21976XA(), str);
        ImageView m21977WA = m21977WA();
        if (m21977WA == null || i == 0) {
            return;
        }
        C19291g.m13516r1(m21977WA, C19291g.m13612L(getContext(), 2130970408));
        Drawable m13600P = C19291g.m13600P(getContext(), i);
        m21977WA.setImageDrawable(m13600P);
        C19045j0.m14194v(m21977WA, m13600P != null, true);
    }

    /* renamed from: f */
    public void m21972f(boolean z) {
        if (getActivity() == null) {
            return;
        }
        View view = getView();
        View findViewById = view == null ? null : view.findViewById(C2752R.C2754id.loading_indicator);
        if (findViewById == null) {
            return;
        }
        findViewById.setVisibility(z ? 0 : 8);
    }
}
