package p193e.p194a.p437c.p438a.p456d.p463f.p469e;

import com.huawei.hms.actions.SearchIntents;
import com.truecaller.insights.p168ui.financepage.search.presentation.SearchTrxViewModel;
import com.truecaller.insights.p168ui.financepage.search.view.SearchTrxActivity;
import com.truecaller.insights.p168ui.widget.SearchEditText;
import java.util.Objects;
import p193e.p194a.p437c.p438a.p456d.p463f.p465b.p466a.C8928a;
import p193e.p194a.p437c.p438a.p456d.p463f.p467c.C8929a;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.s;
import s1.z.b.a;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.f.e.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/f/e/e.class */
public final /* synthetic */ class C8937e extends j implements a<s> {
    public C8937e(SearchTrxActivity searchTrxActivity) {
        super(0, searchTrxActivity, SearchTrxActivity.class, "setupSearchResults", "setupSearchResults()V", 0);
    }

    public Object invoke() {
        C10529b c10529b;
        SearchTrxActivity searchTrxActivity = (SearchTrxActivity) ((b) this).b;
        int i = SearchTrxActivity.f12745h;
        searchTrxActivity.m35199ra();
        SearchTrxViewModel m35200qa = searchTrxActivity.m35200qa();
        C8929a c8929a = searchTrxActivity.f12746d;
        if (c8929a == null) {
            l.l("trxAdapter");
            throw null;
        }
        boolean z = true;
        boolean z2 = c8929a.getItemCount() > 0;
        SearchEditText searchEditText = searchTrxActivity.m35201pa().f27469e.f27385b;
        l.d(searchEditText, "binding.searchCon.searchBar");
        String obj = searchEditText.getText().toString();
        Objects.requireNonNull(m35200qa);
        l.e(obj, SearchIntents.EXTRA_QUERY);
        if (!l.a(m35200qa.f12740d, obj)) {
            if (obj.length() != 0) {
                z = false;
            }
            if (!z) {
                m35200qa.f12740d = obj;
                C9116j c9116j = m35200qa.f12744h;
                if (z2) {
                    C8928a c8928a = C8928a.f27200d;
                    c10529b = C8928a.f27198b;
                } else {
                    C8928a c8928a2 = C8928a.f27200d;
                    c10529b = C8928a.f27199c;
                }
                c9116j.m27867a(c10529b);
            }
        }
        return s.a;
    }
}
