package p193e.p194a.p437c.p438a.p507p.p513e;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.smartfeed.presentation.InsightsSmartFeedViewModel;
import java.util.Objects;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p193e.p194a.p437c.p524b.AbstractC9689h;
import p193e.p194a.p437c.p548h.AbstractC10256f;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.e.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/m.class */
public final class View$OnClickListenerC9520m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9507f f28854a;

    public View$OnClickListenerC9520m(C9507f c9507f) {
        this.f28854a = c9507f;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Fragment fragment = this.f28854a;
        AbstractC9689h abstractC9689h = fragment.f28833g;
        if (abstractC9689h == null) {
            l.l("permissionHelper");
            throw null;
        } else if (abstractC9689h.mo27296g()) {
        } else {
            AbstractC9689h abstractC9689h2 = fragment.f28833g;
            if (abstractC9689h2 == null) {
                l.l("permissionHelper");
                throw null;
            }
            if (!abstractC9689h2.mo27295h()) {
                AbstractC9689h abstractC9689h3 = fragment.f28833g;
                if (abstractC9689h3 == null) {
                    l.l("permissionHelper");
                    throw null;
                } else if (!abstractC9689h3.mo27300c()) {
                    InsightsSmartFeedViewModel m27488RA = fragment.m27488RA();
                    Objects.requireNonNull(m27488RA);
                    l.e("default_sms", "eventCategory");
                    m27488RA.m35154e("default_sms", ViewAction.VIEW, "grant_permission");
                    AbstractC10256f abstractC10256f = fragment.f28834h;
                    if (abstractC10256f == null) {
                        l.l("insightsSmsIntents");
                        throw null;
                    }
                    Context context = fragment.getContext();
                    if (context == null) {
                        return;
                    }
                    l.d(context, "context ?: return");
                    Intent mo26526a = abstractC10256f.mo26526a(context);
                    AbstractC25374b<Intent> abstractC25374b = fragment.f28837k;
                    if (abstractC25374b == null) {
                        return;
                    }
                    abstractC25374b.mo3694a(mo26526a, null);
                    return;
                }
            }
            InsightsSmartFeedViewModel m27488RA2 = fragment.m27488RA();
            Objects.requireNonNull(m27488RA2);
            l.e("read_sms", "eventCategory");
            m27488RA2.m35154e("read_sms", ViewAction.VIEW, "grant_permission");
            AbstractC25374b<String[]> abstractC25374b2 = fragment.f28838l;
            if (abstractC25374b2 == null) {
                return;
            }
            AbstractC9689h abstractC9689h4 = fragment.f28833g;
            if (abstractC9689h4 != null) {
                abstractC9689h4.mo27297f(fragment, abstractC9689h4.mo27301a(), abstractC25374b2);
            } else {
                l.l("permissionHelper");
                throw null;
            }
        }
    }
}
